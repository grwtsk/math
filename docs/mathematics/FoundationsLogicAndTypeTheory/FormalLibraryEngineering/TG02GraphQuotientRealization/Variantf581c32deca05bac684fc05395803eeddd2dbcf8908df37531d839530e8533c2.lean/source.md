# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG02GraphQuotientRealization.Variantf581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c932066ce8ccf5908c75475196a09d0f8c89968e` · SHA-256 `f581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg02_graphQuotientRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG02Claim G I where
  quotientExact := by
    intro x y
    constructor
    · exact Quotient.exact
    · intro h
      change Quotient.mk (graphEndpointSetoid G I) x =
        Quotient.mk (graphEndpointSetoid G I) y
      exact Quotient.sound h
  verticesRemainDistinct := vertexPoint_injective

end FCRS.ControlledSpherical.TopologicalTheorems
```
