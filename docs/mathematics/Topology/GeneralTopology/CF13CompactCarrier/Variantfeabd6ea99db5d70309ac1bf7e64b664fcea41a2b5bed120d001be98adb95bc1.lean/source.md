# Complete source: GRWTSK.Topology.GeneralTopology.CF13CompactCarrier.Variantfeabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `879a7845515ed9798a63b1f478cfb2c14b90591f` · SHA-256 `feabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-13 research-rule projection for signature-level carrier compactness. -/
theorem cf13_compactCarrier
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF13Claim M :=
  registry.cf13

end FCRS.ControlledPlane.Theorems
```
