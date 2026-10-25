# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG07TopologicalPlanarWitness.Variant865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0aa6d6545007dda2c78e1d3fc11e8e1317264e00` · SHA-256 `865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg07_topologicalPlanarWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG07Claim W := by
  intro hSelected
  rcases hSelected with ⟨E, _hE⟩
  exact ⟨E⟩

end FCRS.ControlledSpherical.TopologicalTheorems
```
