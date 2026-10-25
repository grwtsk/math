# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG05EdgeInteriorDisjointness.Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a15fea98efc728e4a1c5d2a720572ac3bee2366d` · SHA-256 `d1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
