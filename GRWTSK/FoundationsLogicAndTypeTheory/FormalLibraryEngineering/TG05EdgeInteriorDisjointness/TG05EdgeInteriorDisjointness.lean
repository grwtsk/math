import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg05_edgeInteriorDisjointness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG05Claim G I where
  distinctInteriors := by
    intro e f hef x he hf
    exact distinct_edgeInteriors_disjoint hef he hf
  interiorsAvoidVertices := by
    intro e x he v hv
    exact edgeInterior_avoids_vertices he hv

end FCRS.ControlledSpherical.TopologicalTheorems
