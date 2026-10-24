# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1df287563e79c5054145612f6bccf910279f567a` · SHA-256 `0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Card
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Carrier

/-!
# Prime-cut primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev PrimeCut
    (U : FinitePrimeHorizon) :=
  Finset U.Prime

def topCut
    (U : FinitePrimeHorizon) :
    PrimeCut U :=
  Finset.univ

def cutDepth
    {U : FinitePrimeHorizon}
    (S : PrimeCut U) :
    Nat :=
  S.card

end Mathematics.SemiLocalDefect.SoninCore
```
