# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS01SieveRealizationCompatibility.Variant381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c975bbb8820a31682a9677c5f86dbe89eb0d7612` · SHA-256 `381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-01 research-rule projection for sieve-realization compatibility. -/
theorem cs01_sieveRealizationCompatibility
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    CS01Claim SM := by
  rcases registry.witnesses with ⟨W⟩
  exact W.sieveRealizationCompatible

end FCRS.ControlledSpherical.Theorems
```
