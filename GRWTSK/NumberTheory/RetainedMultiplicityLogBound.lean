/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedFactorization

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Logarithmic bounds on total retained prime multiplicity. The lower
prime bound and input height remain explicit. No radical-only estimate
or uniform ABC bound follows. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.RetainedMultiplicityLogBound
open RetainedFactorization

def retainedMultiplicity (n : ℕ) : ℝ :=
  ∑ p ∈ n.primeFactors, (n.factorization p : ℝ)

theorem multiplicity_mul_log_le (n : ℕ) (hn : n ≠ 0)
    (ell : ℝ) (hell : 1 < ell)
    (hp : ∀ p ∈ n.primeFactors, ell ≤ (p : ℝ)) :
    retainedMultiplicity n * Real.log ell ≤ Real.log (n : ℝ) := by
  rw [log_factorization n hn]
  unfold retainedMultiplicity
  rw [Finset.sum_mul]
  apply Finset.sum_le_sum
  intro p hmem
  apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
  exact Real.log_le_log (by linarith) (hp p hmem)

theorem multiplicity_le_log_div (n : ℕ) (hn : n ≠ 0)
    (ell : ℝ) (hell : 1 < ell)
    (hp : ∀ p ∈ n.primeFactors, ell ≤ (p : ℝ)) :
    retainedMultiplicity n ≤ Real.log (n : ℝ) / Real.log ell := by
  apply (le_div_iff₀ (Real.log_pos hell)).mpr
  exact multiplicity_mul_log_le n hn ell hell hp

end GRWTSK.NumberTheory.ABC.RetainedMultiplicityLogBound
