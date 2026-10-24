# Complete source: GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c990d43d0ab62fabfff52cf651993164c15c2635` · SHA-256 `37695753e3b8f85faad878252f01df84893419ef74cf29c0f5597b4235ab7d07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
The underlying Mason--Stothers proof is Mathlib's theorem Polynomial.abc,
by Jineon Baek and Seewoo Lee, Apache-2.0. This consumer adds no integer
abc implication. Formalization assistance: OpenAI Codex. -/
import Mathlib.NumberTheory.FLT.MasonStothers

set_option autoImplicit false

open Polynomial

namespace GRWTSK.NumberTheory.Polynomial

/-- Mason--Stothers with its derivative-zero alternative excluded by an
explicit hypothesis on one polynomial. Valid over any field. -/
theorem degree_bounds_of_derivative_ne_zero {k : Type*} [Field k] [DecidableEq k]
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (hsum : a + b + c = 0)
    (hderivative : derivative a ≠ 0) :
    (a.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree ∧
      b.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree ∧
      c.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree) := by
  rcases _root_.Polynomial.abc ha hb hc hab hsum with h | h
  · exact h
  · exact False.elim (hderivative h.1)

end GRWTSK.NumberTheory.Polynomial
```
