# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f4d655afbd704cd2e7aff65e511a0d060d91199` · SHA-256 `04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-03 projects the compact `S¹` claim from one shared witness package. -/
theorem cs03_injectiveS1VertexPlacement
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS03Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs03Claim⟩

end FCRS.ControlledSpherical.Theorems
```
