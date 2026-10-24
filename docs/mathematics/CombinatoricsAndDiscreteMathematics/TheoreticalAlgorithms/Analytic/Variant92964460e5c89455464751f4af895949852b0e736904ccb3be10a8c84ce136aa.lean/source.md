# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Analytic.Variant92964460e5c89455464751f4af895949852b0e736904ccb3be10a8c84ce136aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f99f5eea7ecceff3bc2e05c7f7d4186312c965e` · SHA-256 `92964460e5c89455464751f4af895949852b0e736904ccb3be10a8c84ce136aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Blueprint.Analytic.Foundation
import Formal.Blueprint.Analytic.Geometry
import Formal.Blueprint.Analytic.ComplexZeta
import Formal.Blueprint.Analytic.MellinPerron
import Formal.Blueprint.Analytic.FourierTauberian
import Formal.Blueprint.Analytic.PrimeAsymptotics
import Formal.Blueprint.Analytic.ArithmeticConstants

/-!
Analytic blueprint surface.

This module exposes the conceptual boundaries of the analytic blueprint layer.
It deliberately imports only marker modules, not the unresolved theorem corpus.
-/

namespace Formal.Blueprint.Analytic

def conceptualBoundaries : List String :=
  [ "Foundation"
  , "Geometry"
  , "ComplexZeta"
  , "MellinPerron"
  , "FourierTauberian"
  , "PrimeAsymptotics"
  , "ArithmeticConstants"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 7 := by
  rfl

end Formal.Blueprint.Analytic
```
