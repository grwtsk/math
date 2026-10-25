# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG04EdgeInteriorInjectivity.Variant81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3c70f561654d41b0a75b96fa7bc76d536a75aef` · SHA-256 `81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg04_edgeInteriorInjectivity
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG04Claim G I := by
  intro e t u ht hu hEq
  exact edgePath_injective_on_interior ht hu hEq

end FCRS.ControlledSpherical.TopologicalTheorems
```
