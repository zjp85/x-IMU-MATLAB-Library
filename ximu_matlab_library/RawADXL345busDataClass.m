classdef RawADXL345busDataClass < ADXL345busDataBaseClass

    %% Public 'read-only' properties
    properties (SetAccess = private)
        FileNameAppendage = '_RawADXL345bus.csv';
    end

    %% Public methods
    methods (Access = public)
        function obj = RawADXL345busDataClass(varargin)
            fileNamePrefix = varargin{1};
            for i = 2:2:nargin
                if  strcmp(varargin{i}, 'SampleRate'), obj.SampleRate = varargin{i+1};
                else error('Invalid argument.');
                end
            end
            obj.Import(fileNamePrefix);
        end
        function fig = Plot(obj)
            fig = obj.PlotRawOrCal('Raw');
        end
    end
end