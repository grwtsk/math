# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VertexPlacement.Variant1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a10e3cc27d0d003e7f080b9cffbbb0210d5541ff` · SHA-256 `1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.InjectiveMap

universe uVertex uEdge u1 u2

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- Injective placement of graph vertices in the opaque `S¹` point sort. -/
structure InjectiveS1VertexPlacement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (S1 : Sphere1Carrier.{u1}) where
  injection : InjectiveMapWitness Vertex S1.Point

/-- Signature-level injective placement of `S¹` points into `S²` points. -/
structure InjectiveS1ToS2Placement
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2}) where
  injection : InjectiveMapWitness S1.Point S2.Point

end FCRS.ControlledSpherical
```
