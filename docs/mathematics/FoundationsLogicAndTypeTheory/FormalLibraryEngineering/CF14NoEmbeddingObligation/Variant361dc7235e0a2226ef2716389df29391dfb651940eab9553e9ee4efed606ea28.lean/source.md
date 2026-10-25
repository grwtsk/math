# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF14NoEmbeddingObligation.Variant361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `024deb2757c3f6fd4350e8275cbe67c0b68c7315` · SHA-256 `361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-14 packages controlled losslessness without adding a planar injection. -/
theorem cf14_noEmbeddingObligation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF14Claim M :=
  ⟨⟨D⟩⟩

end FCRS.ControlledPlane.Theorems
```
