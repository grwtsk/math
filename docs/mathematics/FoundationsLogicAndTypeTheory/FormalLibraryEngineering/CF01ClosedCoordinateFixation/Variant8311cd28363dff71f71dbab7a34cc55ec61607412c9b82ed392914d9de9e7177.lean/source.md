# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF01ClosedCoordinateFixation.Variant8311cd28363dff71f71dbab7a34cc55ec61607412c9b82ed392914d9de9e7177

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d91056d7457dbedb5abf8dabe83fbc6c19fd448f` · SHA-256 `8311cd28363dff71f71dbab7a34cc55ec61607412c9b82ed392914d9de9e7177`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-01 research-rule projection for closed-coordinate fixation. -/
theorem cf01_closedCoordinateFixation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF01Claim S M :=
  registry.cf01

end FCRS.ControlledPlane.Theorems
```
