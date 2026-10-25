import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg11_geometricRefinementCoherence
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG11Claim W where
  refinesReflexive := W.refinement.refines_refl
  refinesTransitive := W.refinement.refines_trans
  restrictionIdentity := W.refinement.restrict_identity
  restrictionComposition := W.refinement.restrict_composition
  embeddingCoherence := W.refinementCoherence

end FCRS.ControlledSpherical.TopologicalTheorems
