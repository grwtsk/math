# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG11GeometricRefinementCoherence.Variantb5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e670d3ce4f1bdfcb7f4f897affd149450ab3c61` · SHA-256 `b5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
