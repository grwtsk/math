/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachPrimeThreeMomentBound
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTargetNormalizedMargin

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Add the exact exceptional mass to a positive regular baseline.
This retains the full source and improves its normalized error. Neither
the regular baseline nor its small-error estimate is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachExceptionAdjustedBaseline
open GoldbachWeighted GoldbachModThreeCompleteSource GoldbachTargetNormalizedMargin

theorem exceptionalMass_nonneg (N : ℕ) : 0 ≤ exceptionalMass N := by
  classical
  unfold exceptionalMass
  apply Finset.sum_nonneg
  intro uv _
  unfold exceptionalTerm
  split_ifs
  · exact goldbachLogTerm_nonneg N uv
  · exact le_rfl

theorem adjusted_normalized_error (N : ℕ) (B : ℝ) (hB : 0 < B) :
    goldbachLogMass N / (B+exceptionalMass N)-1 =
      (regularMass N-B)/(B+exceptionalMass N) := by
  have hp : 0 < B+exceptionalMass N := add_pos_of_pos_of_nonneg hB (exceptionalMass_nonneg N)
  rw [complete_source_split]
  field_simp [ne_of_gt hp]
  <;> ring

theorem adjusted_squared_error_le (N : ℕ) (B : ℝ) (hB : 0 < B) :
    (goldbachLogMass N/(B+exceptionalMass N)-1)^2 ≤ (regularMass N/B-1)^2 := by
  have hE := exceptionalMass_nonneg N
  have hd : B^2 ≤ (B+exceptionalMass N)^2 := by nlinarith
  have hr : (regularMass N/B-1)^2 = (regularMass N-B)^2/B^2 := by
    field_simp [ne_of_gt hB]
    <;> ring
  rw [adjusted_normalized_error N B hB, div_pow, hr]
  exact div_le_div_of_nonneg_left (sq_nonneg _) (sq_pos_of_pos hB) hd

theorem prime_pairs_of_regular_normalized_error (T : Finset ℕ) (B : ℕ → ℝ)
    (hB : ∀ N ∈ T, 0 < B N)
    (he : (∑ N ∈ T, (regularMass N/B N-1)^2) < 1) :
    ∀ N ∈ T, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N := by
  apply prime_pairs_of_normalized_error T (fun N => B N+exceptionalMass N)
  · intro N hN
    exact add_pos_of_pos_of_nonneg (hB N hN) (exceptionalMass_nonneg N)
  · exact (Finset.sum_le_sum (fun N hN => adjusted_squared_error_le N (B N) (hB N hN))).trans_lt he

end GRWTSK.NumberTheory.Primes.GoldbachExceptionAdjustedBaseline
