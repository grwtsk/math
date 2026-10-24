# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.SectorMissingPositiveDivisor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e472695423d8a35c7e8b5065f8990e06bfd889c` · SHA-256 `67742f5434e9233df27868e208ba92c701b6a71fab34ca4519e1659be6f58693`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended interface rejection.
This rejects omission of the positive-divisor hypothesis from the public
theorem. It does not assert that the degenerate d = 0 sum identity is false. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

set_option autoImplicit false

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

example {R : Type*} [Ring R] (N d : ℕ) (W : ℕ → ℕ → ℕ → R) :
    commonDivisorWeightedMoment N d W =
      ∑ p ∈ additivePairs (N / d),
        W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  exact commonDivisorWeightedMoment_eq_scaled_sum N d W
```
