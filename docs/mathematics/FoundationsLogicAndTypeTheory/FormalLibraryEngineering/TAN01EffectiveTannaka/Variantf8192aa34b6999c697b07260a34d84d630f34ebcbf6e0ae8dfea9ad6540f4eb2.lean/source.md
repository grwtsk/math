# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TAN01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf8c669b8144779d9b20ef88e62be4aabea6232` · SHA-256 `f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Tannakian reconstruction with values in effective Henselian semantics. -/
theorem tan01_effectiveTannaka
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN01Claim S :=
  registry.tan01

end FCRS.Algebraization.Theorems
```
