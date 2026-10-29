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
