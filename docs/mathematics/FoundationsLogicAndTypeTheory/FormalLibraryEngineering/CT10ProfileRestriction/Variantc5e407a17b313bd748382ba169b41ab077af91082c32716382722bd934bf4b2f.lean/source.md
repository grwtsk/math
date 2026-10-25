# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `856a7992c53e144f67209ada31bd685da6fc80ea` · SHA-256 `c5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-10: restriction to the selected profiles.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct10_profileRestriction
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT10Claim S :=
  registry.ct10

end FCRS.Theorems
```
