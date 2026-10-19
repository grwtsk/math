import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg06_graphRealizationTopology
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG06Claim G I where
  topologyIsQuotient := rfl
  quotientContinuous := quotientMap_continuous G I
  edgePathsContinuous := edgePath_continuous G I

end FCRS.ControlledSpherical.TopologicalTheorems
