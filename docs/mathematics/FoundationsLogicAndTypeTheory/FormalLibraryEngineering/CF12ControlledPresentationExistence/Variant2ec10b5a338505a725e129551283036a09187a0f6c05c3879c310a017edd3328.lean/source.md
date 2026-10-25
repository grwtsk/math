# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF12ControlledPresentationExistence.Variant2ec10b5a338505a725e129551283036a09187a0f6c05c3879c310a017edd3328

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1871884fe5a615da756a71bf1c2b8a843a68adc` · SHA-256 `2ec10b5a338505a725e129551283036a09187a0f6c05c3879c310a017edd3328`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-12 research-rule projection for existence of an abstract coherent
controlled presentation from the explicitly packaged premises.
-/
theorem cf12_controlledPresentationExistence
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF12Claim M :=
  registry.cf12

end FCRS.ControlledPlane.Theorems
```
