/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachDistributionMargin
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeighted

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Target-dependent normalization on the actual full prime source.
No baseline or normalized-error supplier is constructed. A finite target
set remains finite. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachTargetNormalizedMargin
open GoldbachWeighted GoldbachDistributionMargin

theorem full_source_positive_of_normalized_error
    (T : Finset ℕ) (M : ℕ → ℝ)
    (hM : ∀ N ∈ T, 0 < M N)
    (herror : (∑ N ∈ T, (goldbachLogMass N / M N - 1) ^ 2) < 1) :
    ∀ N ∈ T, 0 < goldbachLogMass N := by
  have hn := no_zero_of_squared_deviation_lt T
    (fun N => goldbachLogMass N / M N) 1 (by simpa using herror)
  intro N hN
  have hz : goldbachLogMass N ≠ 0 := by
    intro h
    exact hn N hN (by simp [h])
  exact lt_of_le_of_ne (goldbachLogMass_nonneg N) (Ne.symm hz)

theorem prime_pairs_of_normalized_error
    (T : Finset ℕ) (M : ℕ → ℝ)
    (hM : ∀ N ∈ T, 0 < M N)
    (herror : (∑ N ∈ T, (goldbachLogMass N / M N - 1) ^ 2) < 1) :
    ∀ N ∈ T, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  intro N hN
  exact (goldbachLogMass_pos_iff N).mp
    (full_source_positive_of_normalized_error T M hM herror N hN)

end GRWTSK.NumberTheory.Primes.GoldbachTargetNormalizedMargin
