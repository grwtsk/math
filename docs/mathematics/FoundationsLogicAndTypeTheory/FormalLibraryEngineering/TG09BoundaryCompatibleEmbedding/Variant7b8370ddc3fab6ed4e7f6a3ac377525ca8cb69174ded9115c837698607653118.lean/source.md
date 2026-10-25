# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG09BoundaryCompatibleEmbedding.Variant7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d64cfd03c48c7f3c527d619c1d086f2eaae667c9` · SHA-256 `7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg09_boundaryCompatibleEmbedding
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG09Claim W :=
  W.selectedBoundaryCompatibility

end FCRS.ControlledSpherical.TopologicalTheorems
```
