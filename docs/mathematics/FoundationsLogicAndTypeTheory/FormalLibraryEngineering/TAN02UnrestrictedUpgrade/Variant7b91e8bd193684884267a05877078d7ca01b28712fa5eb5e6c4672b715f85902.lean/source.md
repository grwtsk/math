# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TAN02UnrestrictedUpgrade.Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f2b4beb0ba63a4fccd85f1874dbd0a244cac747` · SHA-256 `7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HSG upgrades effective Tannakian semantics to the unrestricted target. -/
theorem tan02_unrestrictedUpgrade
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN02Claim S :=
  registry.tan02

end FCRS.Algebraization.Theorems
```
