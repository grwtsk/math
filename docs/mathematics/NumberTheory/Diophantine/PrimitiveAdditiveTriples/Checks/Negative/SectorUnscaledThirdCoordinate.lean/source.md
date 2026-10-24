# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.SectorUnscaledThirdCoordinate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1866c2731fa90db3d9232bfc63dfeb164b5a8831` · SHA-256 `7411cb30405564163f3bb6008d60bbdf3ff711b26851396072b40e3658175d6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The third coordinate is d*(u+v), retaining a+b=c after scaling.
-- Using only u+v gives weight eight instead of the correct sixteen.
example : commonDivisorWeightedMoment 5 2
    (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) =
      ∑ p ∈ additivePairs (5 / 2),
        ((2 * p.1 : ℕ) : ℤ) * ((2 * p.2 : ℕ) : ℤ) *
          ((p.1 + p.2 : ℕ) : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2
      (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) = 16 := by
    decide
  exact h
```
