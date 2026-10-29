/- Local attribution: grwtsk contributors.
Upstream PNT+ authorship and Apache-2.0 licensing remain in the pinned dependency. -/
import PrimeNumberTheoremAnd.Consequences

/-!
# Two distinct prime witnesses from a relative prime window

The source PNT window is used twice, at x and at the first prime. Choosing a
smaller window controls the composed multiplicative expansion. The resulting
prime-pair and prime-sum witnesses can seed finite Goldbach-channel searches;
this says nothing about representing each prescribed even integer.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
open Filter

namespace GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers

/-- Every fixed relative window eventually contains two ordered distinct primes.
The threshold may depend on epsilon; no shrinking-window estimate is asserted. -/
theorem two_distinct_primes_in_relative_window {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ x : ℝ in atTop, ∃ p q : ℕ,
      p.Prime ∧ q.Prime ∧ x < p ∧ (p : ℝ) < q ∧ (q : ℝ) < (1 + ε) * x := by
  let δ : ℝ := min (ε / 4) 1
  have hδ : 0 < δ := lt_min (by linarith) (by norm_num)
  have hδ1 : δ ≤ 1 := min_le_right _ _
  have hδε : δ ≤ ε / 4 := min_le_left _ _
  have hδsq : δ ^ 2 ≤ δ := by
    nlinarith [mul_nonneg hδ.le (sub_nonneg.mpr hδ1)]
  have hcoef : (1 + δ) ^ 2 ≤ 1 + ε := by nlinarith
  obtain ⟨X, hX⟩ := Filter.eventually_atTop.mp (_root_.prime_between hδ)
  filter_upwards [Filter.eventually_ge_atTop (max X 1)] with x hx
  have hxX : X ≤ x := (le_max_left X 1).trans hx
  have hxpos : 0 < x := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1)
    ((le_max_right X 1).trans hx)
  obtain ⟨p, hp, hxp, hpx⟩ := hX x hxX
  obtain ⟨q, hq, hpq, hqp⟩ := hX (p : ℝ) (hxX.trans hxp.le)
  refine ⟨p, q, hp, hq, hxp, hpq, ?_⟩
  have hqbound : (q : ℝ) < (1 + δ) ^ 2 * x := calc
    (q : ℝ) < (1 + δ) * p := hqp
    _ < (1 + δ) * ((1 + δ) * x) :=
      mul_lt_mul_of_pos_left hpx (by linarith)
    _ = (1 + δ) ^ 2 * x := by ring
  exact hqbound.trans_le (mul_le_mul_of_nonneg_right hcoef hxpos.le)

/-- There is eventually an actual sum of two distinct primes inside the doubled
relative window. This produces a representable target rather than prescribing one. -/
theorem distinct_prime_sum_in_relative_window {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ x : ℝ in atTop, ∃ N p q : ℕ,
      p.Prime ∧ q.Prime ∧ p ≠ q ∧ p + q = N ∧
      2 * x < N ∧ (N : ℝ) < 2 * (1 + ε) * x := by
  filter_upwards [two_distinct_primes_in_relative_window hε] with x hx
  obtain ⟨p, q, hp, hq, hxp, hpq, hqx⟩ := hx
  refine ⟨p + q, p, q, hp, hq, ?_, rfl, ?_, ?_⟩
  · intro h
    subst q
    exact (lt_irrefl (p : ℝ)) hpq
  · push_cast
    linarith
  · push_cast
    linarith

end GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers
