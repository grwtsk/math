/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSieveCorrectedEvenSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual excluded-prime mass has an explicit retained-support upper
budget. No regular prime-pair lower bound follows. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachExcludedMassSupportBound
open GoldbachWeighted GoldbachSieveCorrectedEvenSource

theorem prime_weight_target_bound (n N : ℕ) (hn : n≤N) :
    primeLogWeight n ≤ Real.log ((N+1 : ℕ) : ℝ) := by
  unfold primeLogWeight
  split_ifs with hp
  · apply Real.log_le_log
    · exact_mod_cast hp.pos
    · exact_mod_cast (show n≤N+1 by omega)
  · exact Real.log_natCast_nonneg (N+1)

theorem excluded_mass_nonneg (S : Finset ℕ) (X N : ℕ) : 0≤excludedMass S X N := by
  unfold excludedMass
  apply Finset.sum_nonneg
  intro ℓ _
  split_ifs
  · exact mul_nonneg (primeLogWeight_nonneg _) (Real.log_natCast_nonneg _)
  · exact le_rfl

theorem actual_excluded_mass_support_bound (S : Finset ℕ) (X N : ℕ) :
    excludedMass S X N ≤ Real.log ((N+1 : ℕ) : ℝ)*
      (∑ ℓ ∈ S, Real.log (ℓ : ℝ)) := by
  unfold excludedMass
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro ℓ _
  by_cases hX : X<N-ℓ
  · rw [if_pos hX]
    exact mul_le_mul_of_nonneg_right
      (prime_weight_target_bound (N-ℓ) N (Nat.sub_le _ _)) (Real.log_natCast_nonneg ℓ)
  · rw [if_neg hX]
    exact mul_nonneg (Real.log_natCast_nonneg (N+1)) (Real.log_natCast_nonneg ℓ)

/- Relative to a supplied positive baseline D, the full correction costs
at most 2*log(N+1)*sum_{ell in S}log(ell)/D. This is an actual arithmetic
upper estimate, independent of primality prediction for N-ell. It does
not supply the regular-sector signed margin or uniform centered errors. -/
end GRWTSK.NumberTheory.Primes.GoldbachExcludedMassSupportBound
