/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachLocalizedNormalizedMargin

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Weighted local error threshold on the actual full source. No local
baseline quality or second-moment supplier is constructed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachWeightedWindowError
open GoldbachWeighted

theorem full_source_nonzero_of_weighted_window_error
    (W : Finset ℕ) (M weight : ℕ → ℝ) (minimumWeight : ℝ)
    (hw : ∀ N ∈ W, 0 ≤ weight N)
    (hmin : ∀ N ∈ W, minimumWeight ≤ weight N)
    (herr : (∑ N ∈ W, weight N * (goldbachLogMass N / M N - 1) ^ 2) <
      minimumWeight) :
    ∀ N ∈ W, goldbachLogMass N ≠ 0 := by
  intro N hN hz
  have h := Finset.single_le_sum
    (fun j hj => mul_nonneg (hw j hj) (sq_nonneg (goldbachLogMass j / M j - 1))) hN
  rw [hz] at h
  simp only [zero_div, zero_sub, neg_sq, one_pow, mul_one] at h
  have hm := hmin N hN
  linarith

theorem prime_pairs_of_weighted_window_error
    (W : Finset ℕ) (M weight : ℕ → ℝ) (minimumWeight : ℝ)
    (hw : ∀ N ∈ W, 0 ≤ weight N)
    (hmin : ∀ N ∈ W, minimumWeight ≤ weight N)
    (herr : (∑ N ∈ W, weight N * (goldbachLogMass N / M N - 1) ^ 2) <
      minimumWeight) :
    ∀ N ∈ W, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  intro N hN
  apply (goldbachLogMass_pos_iff N).mp
  exact lt_of_le_of_ne (goldbachLogMass_nonneg N)
    (Ne.symm (full_source_nonzero_of_weighted_window_error W M weight
      minimumWeight hw hmin herr N hN))

end GRWTSK.NumberTheory.Primes.GoldbachWeightedWindowError
