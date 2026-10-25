# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD02FormalEffectivity.Variant2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63bc6f09a65702607c96148193451367b6507f5b` · SHA-256 `2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME4: formal effectivity for the selected bounded semantic object. -/
theorem mod02_formalEffectivity
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.formalEffectivity Y :=
  certificate.me4_formalEffectivity

end FCRS.Algebraization.Theorems
```
