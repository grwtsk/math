# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN02SubquotientClosure.Variantc3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1552e64cf90708e452b35d585dca0219d678d46d` · SHA-256 `c3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
HEN-2: the essential image is closed under coherent subobjects and
epimorphic quotients.  No ambient extension-closure conclusion is included.
-/
theorem hen02_subquotientClosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN02Claim S :=
  registry.hen02

end FCRS.Algebraization.Theorems
```
