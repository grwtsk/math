# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALG04FormalPolarizedEffectivity.Variantdcc0700966343f010edefdffdca2c325a6be709feb0abd282f8bc2955041e0f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ced3c0def583d1d43821882bc41c58093fd2be2c` · SHA-256 `dcc0700966343f010edefdffdca2c325a6be709feb0abd282f8bc2955041e0f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Formal-model route: Grothendieck effectivity, completion quasi-inverse data,
and compatibility of algebraization followed by analytification with the
formal generic fiber.
-/
theorem alg04_formalPolarizedEffectivity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG04Claim S :=
  registry.alg04

end FCRS.Algebraization.Theorems
```
