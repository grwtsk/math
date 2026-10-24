# Complete source: GRWTSK.Algebra.LinearAlgebra.Definition.Variantf9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17525abd6389eb97122ac22be2aa93225461dd70` · SHA-256 `f9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP1.SoninHorizon

/-!
# Transported-range primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def FiniteSoninHorizon.transportedRange
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Submodule ℂ H.Ambient :=
  LinearMap.range
    (H.toTop S).toLinearMap

end Mathematics.SemiLocalDefect.SoninCore
```
