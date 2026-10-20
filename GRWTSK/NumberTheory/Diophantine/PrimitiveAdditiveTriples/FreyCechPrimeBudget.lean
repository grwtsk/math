/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Actual prime-depth budgets for the PREVIOUS composite minimum-lattice map.
The index is the cardinality of its existing cokernel, not an independent
cost variable. The positive clearing number is bound to the old universal
image criterion. Support, depth, excess and index are distinct invariants.
This rational-integer profile is not conductor or number-field ideal theory.
Unelaborated source proof scripts; NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechWeightedMinimum

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPrimeBudget

open FreyWeightedBasis FreyCechWeightedMinimum
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

/-- Positive generator for nonzero ab, reconciled with the signed old criterion below. -/
def clearing (a b : ℤ) (k : ℕ) : ℕ := 12 * (a * b).natAbs ^ k

/-- This is the cardinality of the OLD actual quotient carrier. -/
def index (a b : ℤ) (k : ℕ) : ℕ := Nat.card (CombinedCokernel a b k)

theorem clearing_criterion (a b : ℤ) (k : ℕ) (d : ℤ) :
    (∀ r : ReducedStage k, ∃ q, combinedMap a b k q = d • r) ↔
      (clearing a b k : ℤ) ∣ d := by
  rw [combined_clearing_iff]
  have hc : (clearing a b k : ℤ) = |12 * (-(a * b)) ^ k| := by
    simp [clearing, Int.natCast_natAbs, abs_mul, abs_pow]
  rw [hc, abs_dvd]

theorem clearing_ne_zero (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) : clearing a b k ≠ 0 := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  exact Nat.mul_ne_zero (by norm_num) (pow_ne_zero k hh)

theorem index_ne_zero (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) : index a b k ≠ 0 := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  rw [index, combined_index a b hab k]
  exact Nat.mul_ne_zero (pow_ne_zero _ (by norm_num)) (pow_ne_zero _ (pow_ne_zero _ hh))

/-- An all-prime-coordinate identity; at primes these are the actual p-adic exponents. -/
theorem clearing_factorization (a b : ℤ) (hab : a * b ≠ 0) (k p : ℕ) :
    (clearing a b k).factorization p =
      (12 : ℕ).factorization p + k * (a * b).natAbs.factorization p := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  rw [clearing, Nat.factorization_mul (by norm_num) (pow_ne_zero k hh), Nat.factorization_pow]
  simp only [Finsupp.add_apply, Finsupp.smul_apply, smul_eq_mul]

/-- The factor four belongs to FOUR reduced fields of the same composite. -/
theorem index_factorization (a b : ℤ) (hab : a * b ≠ 0) (k p : ℕ) :
    (index a b k).factorization p =
      Fintype.card (Index k) * (48 : ℕ).factorization p +
        4 * (k * k) * (a * b).natAbs.factorization p := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  rw [index, combined_index a b hab k,
    Nat.factorization_mul (pow_ne_zero _ (by norm_num)) (pow_ne_zero _ (pow_ne_zero _ hh))]
  simp only [Nat.factorization_pow, Finsupp.add_apply, Finsupp.smul_apply, smul_eq_mul]
  ring

private theorem stage_rank_pos (k : ℕ) : 0 < Fintype.card (Index k) := by
  apply Fintype.card_pos_iff.mpr
  exact ⟨Sum.inl ⟨0, Nat.zero_lt_succ k⟩⟩

private theorem twoPow_three_factors (n : ℕ) :
    (2 ^ n * 3).factorization = n • Finsupp.single 2 1 + Finsupp.single 3 1 := by
  rw [Nat.factorization_mul (pow_ne_zero _ (by norm_num)) (by norm_num),
    Nat.factorization_pow, Nat.Prime.factorization (by norm_num : Nat.Prime 2),
    Nat.Prime.factorization (by norm_num : Nat.Prime 3)]

private theorem twoPow_three_support (n : ℕ) (hn : n ≠ 0) :
    occupied (2 ^ n * 3) = {2, 3} := by
  rw [occupied_mul _ _ (pow_ne_zero _ (by norm_num)) (by norm_num),
    occupied_pow 2 n hn, occupied_prime 2 (by norm_num), occupied_prime 3 (by norm_num)]
  simp

/-- Positive grade: fixed chart primes union the occupied primes of the SAME ab. -/
theorem clearing_support (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) (hk : k ≠ 0) :
    occupied (clearing a b k) = {2, 3} ∪ occupied (a * b).natAbs := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  rw [clearing, occupied_mul _ _ (by norm_num) (pow_ne_zero _ hh), occupied_pow _ k hk]
  have h12 : occupied 12 = {2, 3} := by
    convert twoPow_three_support 2 (by norm_num) using 1 <;> norm_num
  rw [h12]

/-- The cokernel index has the SAME support, not the same prime-power depth. -/
theorem index_support (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) (hk : k ≠ 0) :
    occupied (index a b k) = {2, 3} ∪ occupied (a * b).natAbs := by
  have hh : (a * b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  rw [index, combined_index a b hab k,
    occupied_mul _ _ (pow_ne_zero _ (by norm_num)) (pow_ne_zero _ (pow_ne_zero _ hh)),
    occupied_pow 48 _ (Nat.ne_of_gt (stage_rank_pos k)),
    occupied_pow _ 4 (by norm_num), occupied_pow _ (k * k) (Nat.mul_ne_zero hk hk)]
  have h48 : occupied 48 = {2, 3} := by
    convert twoPow_three_support 4 (by norm_num) using 1 <;> norm_num
  rw [h48]

/-- Grade zero is NOT licensed to inherit prime support from ab. -/
theorem grade_zero_support (a b : ℤ) (hab : a * b ≠ 0) :
    occupied (clearing a b 0) = {2, 3} ∧ occupied (index a b 0) = {2, 3} := by
  constructor
  · change occupied 12 = {2, 3}
    convert twoPow_three_support 2 (by norm_num) using 1 <;> norm_num
  · rw [index, combined_index a b hab 0]
    norm_num [Index]
    convert twoPow_three_support 4 (by norm_num) using 1 <;> norm_num

/-- Equality is only of the two multiplicity-free budgets. -/
theorem same_radical (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    radical (clearing a b k) = radical (index a b k) := by
  have hs : occupied (clearing a b k) = occupied (index a b k) := by
    by_cases hk : k = 0
    · subst k
      exact (grade_zero_support a b hab).1.trans (grade_zero_support a b hab).2.symm
    · rw [clearing_support a b hab k hk, index_support a b hab k hk]
  simp only [radical, hs]

/-- Normalized rational-integer logarithmic cost; no operator-norm identification is hidden. -/
theorem clearing_log (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    Real.log (clearing a b k : ℝ) =
      Real.log 12 + (k : ℝ) * Real.log ((a * b).natAbs : ℝ) := by
  have hh : ((a * b).natAbs : ℝ) ≠ 0 := by
    exact Nat.cast_ne_zero.mpr (by simpa only [Int.natAbs_eq_zero] using hab)
  simp only [clearing, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  rw [Real.log_mul (by norm_num) (pow_ne_zero _ hh), Real.log_pow]

theorem index_log (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    Real.log (index a b k : ℝ) =
      (Fintype.card (Index k) : ℝ) * Real.log 48 +
        4 * (k : ℝ) ^ 2 * Real.log ((a * b).natAbs : ℝ) := by
  have hh : ((a * b).natAbs : ℝ) ≠ 0 := by
    exact Nat.cast_ne_zero.mpr (by simpa only [Int.natAbs_eq_zero] using hab)
  rw [index, combined_index a b hab k]
  simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  rw [Real.log_mul (pow_ne_zero _ (by norm_num)) (pow_ne_zero _ (pow_ne_zero _ hh))]
  simp only [Real.log_pow, Nat.cast_mul]
  ring

/-- Both terms are actual finite sums over this number's complete occupied support. -/
theorem clearing_log_budget (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    supportLog (clearing a b k) + excessLog (clearing a b k) =
      Real.log 12 + (k : ℝ) * Real.log ((a * b).natAbs : ℝ) := by
  rw [← log_decomposition _ (clearing_ne_zero a b hab k), clearing_log a b hab k]

theorem index_log_budget (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    supportLog (index a b k) + excessLog (index a b k) =
      (Fintype.card (Index k) : ℝ) * Real.log 48 +
        4 * (k : ℝ) ^ 2 * Real.log ((a * b).natAbs : ℝ) := by
  rw [← log_decomposition _ (index_ne_zero a b hab k), index_log a b hab k]

/-- Fixed primitive source (2,3,5): grade alone increases the clearing depths. -/
theorem native_clearing_depths (k : ℕ) :
    (clearing 2 3 k).factorization 2 = k + 2 ∧
    (clearing 2 3 k).factorization 3 = k + 1 := by
  have h6 : (6 : ℕ).factorization = 1 • Finsupp.single 2 1 + Finsupp.single 3 1 := by
    convert twoPow_three_factors 1 using 1 <;> norm_num
  have h12 : (12 : ℕ).factorization = 2 • Finsupp.single 2 1 + Finsupp.single 3 1 := by
    convert twoPow_three_factors 2 using 1 <;> norm_num
  constructor <;> rw [clearing_factorization 2 3 (by norm_num) k] <;>
    norm_num [h12, h6, Finsupp.smul_apply, smul_eq_mul] <;> omega

/-- Total index length is different even though its prime support agrees. -/
theorem native_index_depths (k : ℕ) :
    (index 2 3 k).factorization 2 = 4 * Fintype.card (Index k) + 4 * (k * k) ∧
    (index 2 3 k).factorization 3 = Fintype.card (Index k) + 4 * (k * k) := by
  have h6 : (6 : ℕ).factorization = 1 • Finsupp.single 2 1 + Finsupp.single 3 1 := by
    convert twoPow_three_factors 1 using 1 <;> norm_num
  have h48 : (48 : ℕ).factorization = 4 • Finsupp.single 2 1 + Finsupp.single 3 1 := by
    convert twoPow_three_factors 4 using 1 <;> norm_num
  constructor <;> rw [index_factorization 2 3 (by norm_num) k] <;>
    norm_num [h48, h6, Finsupp.smul_apply, smul_eq_mul] <;> ring

/-- An unbounded-grade theorem about this auxiliary cost, NOT a counterexample to abc. -/
theorem fixed_source_unbounded_excess (B : ℕ) :
    ∃ k : ℕ, occupied (clearing 2 3 k) = {2, 3} ∧ B < excess (clearing 2 3 k) 2 := by
  refine ⟨B + 1, ?_, ?_⟩
  · rw [clearing_support 2 3 (by norm_num) (B + 1) (by omega)]
    have h6 : occupied 6 = {2, 3} := by
      convert twoPow_three_support 1 (by norm_num) using 1 <;> norm_num
    norm_num [h6]
  · unfold excess
    rw [(native_clearing_depths (B + 1)).1]
    omega

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPrimeBudget
