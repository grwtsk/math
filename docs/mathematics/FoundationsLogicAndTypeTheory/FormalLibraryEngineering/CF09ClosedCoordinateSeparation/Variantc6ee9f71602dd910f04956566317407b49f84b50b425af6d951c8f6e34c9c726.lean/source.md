# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF09ClosedCoordinateSeparation.Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aef166e24ebdbbeeaf9e1fe3d876923a3398a84` · SHA-256 `c6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-09 research-rule projection for closed-coordinate separation. -/
theorem cf09_closedCoordinateSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF09Claim S M :=
  registry.cf09

end FCRS.ControlledPlane.Theorems
```
