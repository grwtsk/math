# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS05VertexCompatibleS2Realization.Variant3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `119c74be636fcf2adb619fb6049843f2d603cfff` · SHA-256 `3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-05 projects vertex-coordinate compatibility for the package's exact `S²`
injection.  It says nothing about edge paths or topology and is branch-vacuous
when `S³` is selected.
-/
theorem cs05_vertexCompatibleS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS05Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs05Claim⟩

end FCRS.ControlledSpherical.Theorems
```
