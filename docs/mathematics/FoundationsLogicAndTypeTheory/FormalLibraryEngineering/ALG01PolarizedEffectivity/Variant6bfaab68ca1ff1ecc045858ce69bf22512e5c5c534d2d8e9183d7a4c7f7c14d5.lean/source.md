# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALG01PolarizedEffectivity.Variant6bfaab68ca1ff1ecc045858ce69bf22512e5c5c534d2d8e9183d7a4c7f7c14d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c8290448a6cb4171c1c5986f98241be0854ab22` · SHA-256 `6bfaab68ca1ff1ecc045858ce69bf22512e5c5c534d2d8e9183d7a4c7f7c14d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ALG-1: polarized analytic effectivity and section-ring quasi-inverse data. -/
theorem alg01_polarizedEffectivity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG01Claim S :=
  registry.alg01

end FCRS.Algebraization.Theorems
```
