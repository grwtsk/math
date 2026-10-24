import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg03_vertexEndpointEquations
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG03Claim G I where
  zeroEndpoint := edgePath_zero G I
  oneEndpoint := edgePath_one G I

end FCRS.ControlledSpherical.TopologicalTheorems
