# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD04FiniteDeterminacy.Variant2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9efa77b680ce2f72bdce84a2af1976a6063faa1e` · SHA-256 `2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME7: exact finite determinacy, distinguished from finite-order approximation. -/
theorem mod04_finiteDeterminacy
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.finiteDeterminacy Y :=
  certificate.me7_finiteDeterminacy

end FCRS.Algebraization.Theorems
```
