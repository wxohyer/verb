package verb.geom;

import verb.core.Eval;
import verb.core.Make;
import verb.core.Mat.Vector;
import verb.core.types.NurbsCurveData.Point;

// A curve representing a straight line
@:expose("geom.Line")
class Line extends NurbsCurve {

    //Create a line
    //
    //**params**
    //
    //* Length 3 array representing the start point
    //* Length 3 array representing the end point

    public function new( start : Point, end : Point ) {
        super( Make.polyline( [ start, end ] ) );

        _start = start;
        _end = end;
    }

    private var _start : Point;
    private var _end : Point;

    //Length 3 array representing the start point
    public function start(){ return _start; }

    //Length 3 array representing the end point
    public function end(){ return _end; }

}