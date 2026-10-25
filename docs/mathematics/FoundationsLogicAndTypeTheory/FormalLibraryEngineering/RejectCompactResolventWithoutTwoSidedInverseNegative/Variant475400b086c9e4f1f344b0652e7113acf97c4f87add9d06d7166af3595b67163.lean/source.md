# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCompactResolventWithoutTwoSidedInverseNegative.Variant475400b086c9e4f1f344b0652e7113acf97c4f87add9d06d7166af3595b67163

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e1da46a2c5cdbe3241a29e60a4e9679513f6c9` · SHA-256 `475400b086c9e4f1f344b0652e7113acf97c4f87add9d06d7166af3595b67163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: compactness and the right inverse do not fill the left inverse field.
example {D : UnboundedOperator ℂ H} {z : ℂ}
    (R : CompactResolventWitness D z) : CompactResolventWitness D z where
  inverse := R.inverse
  mapsDomain := R.mapsDomain
  compact := R.compact
  rightInverse := R.rightInverse
```
