# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EXT01ExtensionCriterion.Variant9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca046229e37dbb3edd3201b605b8dcf1dfade8fa` · SHA-256 `9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- A Henselian extension is effective exactly when its class lies in the algebraic image. -/
theorem ext01_extensionCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ExtensionImageCharacterization S.extensions :=
  registry.ext01

end FCRS.Algebraization.Theorems
```
