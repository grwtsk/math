# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF11RefinementCoherence.Variant8c3e567908763e38980adbf1390014015e7801a3db75fff956a6707d69463e98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `504317e09b0e59b19c48cf82bb38fc1822a595dd` · SHA-256 `8c3e567908763e38980adbf1390014015e7801a3db75fff956a6707d69463e98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-11 research-rule projection for refinement-coherent control. -/
theorem cf11_refinementCoherence
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF11Claim S M :=
  registry.cf11

end FCRS.ControlledPlane.Theorems
```
