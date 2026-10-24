# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Ambient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a21ba8af7f04d6196a9f94cb87fe7c68115da9cf` · SHA-256 `ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP1.SoninHorizon.Carrier

/-!
# Common ambient-carrier primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev FiniteSoninHorizon.Ambient
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :=
  H.Sonin (topCut U)

def FiniteSoninHorizon.toTop
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    H.Sonin S →L[ℂ] H.Ambient :=
  H.connector
    (Finset.subset_univ S)

theorem FiniteSoninHorizon.toTop_injective
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Function.Injective (H.toTop S) :=
  H.connector_injective
    (Finset.subset_univ S)

end Mathematics.SemiLocalDefect.SoninCore
```
