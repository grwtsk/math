# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD01BoundedAlgebraicModuli.Variant087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c9c9ee39bf747ae54b038368b7f924b663f28f1` · SHA-256 `087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME1--ME3: excellent Henselian base, proper source, and bounded algebraic moduli. -/
theorem mod01_boundedAlgebraicModuli
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.excellentHenselianBase ∧
    S.moduli.properPolarizedSource ∧
    S.moduli.boundedAlgebraicModuli Y :=
  ⟨certificate.me1_excellentHenselianBase,
   certificate.me2_properPolarizedSource,
   certificate.me3_boundedAlgebraicModuli⟩

end FCRS.Algebraization.Theorems
```
