# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD05IsomorphismDescent.Variant9c78acc0584573ea18679bb8185ed9e1ab85a53531851110c1d29fa63b674684

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aa99c81fda36fde5d4ce91254f047a49f96d62c` · SHA-256 `9c78acc0584573ea18679bb8185ed9e1ab85a53531851110c1d29fa63b674684`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME8: effective descent of the final isomorphism and its cocycle data. -/
theorem mod05_isomorphismDescent
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.effectiveIsomorphismDescent Y :=
  certificate.me8_effectiveIsomorphismDescent

end FCRS.Algebraization.Theorems
```
