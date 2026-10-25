# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF07LosslessDecoder.Variant3a2f826f8e55580b9f9c61ccaa7d53ee8a3ab4bc8558d097de7a6fa0eb323b2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c57882a102b6d193836bae214f44dbfe8da807fd` · SHA-256 `3a2f826f8e55580b9f9c61ccaa7d53ee8a3ab4bc8558d097de7a6fa0eb323b2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-07 packages an explicit decoder as controlled losslessness. -/
theorem cf07_losslessDecoder
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF07Claim M :=
  ⟨D⟩

end FCRS.ControlledPlane.Theorems
```
