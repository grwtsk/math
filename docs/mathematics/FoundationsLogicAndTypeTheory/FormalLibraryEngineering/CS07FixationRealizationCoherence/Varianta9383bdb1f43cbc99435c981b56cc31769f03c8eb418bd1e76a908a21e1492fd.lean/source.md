# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS07FixationRealizationCoherence.Varianta9383bdb1f43cbc99435c981b56cc31769f03c8eb418bd1e76a908a21e1492fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30b0ee2842bda4a5bd0cb04d78b520666821144c` · SHA-256 `a9383bdb1f43cbc99435c981b56cc31769f03c8eb418bd1e76a908a21e1492fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-07 projects fixation coherence for the package's exact selected branch. -/
theorem cs07_fixationRealizationCoherence
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS07Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs07Claim⟩

end FCRS.ControlledSpherical.Theorems
```
