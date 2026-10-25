# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD03ApproximationAndLifting.Variant8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24f2c36ad6ba60e704ed2ec6d4a63282dc84476a` · SHA-256 `8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME5--ME6: Artin/Popescu/Elkik approximation and Henselian lifting. -/
theorem mod03_approximationAndLifting
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.approximation Y ∧
    S.moduli.henselianLifting Y :=
  ⟨certificate.me5_approximation,
   certificate.me6_henselianLifting⟩

end FCRS.Algebraization.Theorems
```
