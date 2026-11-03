/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachPrimeThreeExceptionMass

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Quantitative prime-three exceptional contribution with its mixed term.
The regular source remains actual arithmetic data, not an assumed baseline.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachPrimeThreeMomentBound
open GoldbachWeighted GoldbachModThreeCompleteSource GoldbachPrimeThreeExceptionMass

theorem primeLogWeight_le_log_cutoff (n N : ℕ) (hN : 1 ≤ N) (hn : n ≤ N) :
    primeLogWeight n ≤ Real.log (N : ℝ) := by
  by_cases hp : Nat.Prime n
  · rw [primeLogWeight, if_pos hp]
    exact Real.log_le_log (by exact_mod_cast hp.pos) (by exact_mod_cast hn)
  · rw [primeLogWeight, if_neg hp]
    exact Real.log_nonneg (by exact_mod_cast hN)

theorem regularMass_nonneg (N : ℕ) : 0 ≤ regularMass N := by
  classical
  unfold regularMass
  apply Finset.sum_nonneg
  intro uv _
  unfold regularTerm
  split_ifs
  · exact goldbachLogTerm_nonneg N uv
  · exact le_rfl

theorem exceptionalMass_log_bounds (N : ℕ) (hN : 6 < N) :
    0 ≤ exceptionalMass N ∧
      exceptionalMass N ≤ 2 * Real.log 3 * Real.log (N : ℝ) := by
  rw [exceptional_mass_above_six N hN]
  have h3 : primeLogWeight 3 = Real.log 3 := by norm_num [primeLogWeight]
  rw [h3]
  have hl : 0 ≤ 2 * Real.log 3 := by positivity
  exact ⟨mul_nonneg hl (primeLogWeight_nonneg _),
    mul_le_mul_of_nonneg_left (primeLogWeight_le_log_cutoff (N-3) N (by omega)
      (Nat.sub_le N 3)) hl⟩

theorem exceptional_second_moment_bound (N : ℕ) (hN : 6 < N) :
    goldbachLogMass N ^ 2 - regularMass N ^ 2 ≤
      4 * Real.log 3 * Real.log (N : ℝ) * regularMass N +
        4 * (Real.log 3)^2 * (Real.log (N : ℝ))^2 := by
  obtain ⟨hE0, hE⟩ := exceptionalMass_log_bounds N hN
  have hR := regularMass_nonneg N
  have hB : 0 ≤ 2 * Real.log 3 * Real.log (N : ℝ) := by
    have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
    positivity
  have hs := mul_nonneg (sub_nonneg.mpr hE) (add_nonneg hB hE0)
  have hm := mul_le_mul_of_nonneg_left hE (show 0 ≤ 2*regularMass N by positivity)
  rw [complete_source_second_moment]
  nlinarith

end GRWTSK.NumberTheory.Primes.GoldbachPrimeThreeMomentBound
