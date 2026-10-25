# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS08RefinementRealizationCoherence.Variantc017d2d1a06c4efedf87a80e401180148688f8f086f6bf4668f8ee6516c8678e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f73326473fc8ed7d203c17a7875be65e95d77897` · SHA-256 `c017d2d1a06c4efedf87a80e401180148688f8f086f6bf4668f8ee6516c8678e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-08 projects refinement coherence for the same vertex placement and selected
realization retained by the package.
-/
theorem cs08_refinementRealizationCoherence
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS08Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs08Claim⟩

end FCRS.ControlledSpherical.Theorems
```
