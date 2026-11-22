/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

/-!
# Finite rational enclosures for the actual prime logarithms

Reuse Mathlib's positive logarithm-series lower and upper bounds. No
transcendental value is an input to `lower`, `upper`, `center`, or `radius`.
The optional dyadic factorization is an exact rational equality, not a
rounded logarithmic identity. Consumer: WeilPrimeLagSampling.

SOURCE_PROOF_CANDIDATE. Lean elaboration, exact types, kernel replay,
transitive axiom audit, certified execution and independent review NOT_RUN.
The adjacent record gives each declaration's argument and source locator.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalLogarithms

/-- For q >= 1 this lies in [0,1). -/
def ratio (q : ℚ) : ℚ := (q - 1) / (q + 1)

/-- All operations are exact rational arithmetic, including the integer powers. -/
def lower (q : ℚ) (N : ℕ) : ℚ :=
  2 * ∑ k ∈ Finset.range N, (ratio q) ^ (2 * k + 1) / (2 * (k : ℚ) + 1)

def width (q : ℚ) (N : ℕ) : ℚ :=
  2 * (ratio q) ^ (2 * N + 1) / (1 - (ratio q) ^ 2)

def upper (q : ℚ) (N : ℕ) : ℚ := lower q N + width q N

def center (q : ℚ) (N : ℕ) : ℚ := (lower q N + upper q N) / 2

def radius (q : ℚ) (N : ℕ) : ℚ := width q N / 2

theorem ratio_bounds {q : ℚ} (hq : 1 ≤ q) : 0 ≤ ratio q ∧ ratio q < 1 := by
  have hd : 0 < q + 1 := by linarith
  exact ⟨div_nonneg (sub_nonneg.mpr hq) hd.le,
    (div_lt_one hd).2 (by linarith)⟩

/-- Exact return to the logarithm argument, before applying the series theorem. -/
theorem ratio_identity {q : ℚ} (hq : 1 ≤ q) :
    (1 + (ratio q : ℝ)) / (1 - (ratio q : ℝ)) = (q : ℝ) := by
  have hqR : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  have hd : (q : ℝ) + 1 ≠ 0 := by linarith
  have hz1 : (ratio q : ℝ) < 1 := by exact_mod_cast (ratio_bounds hq).2
  apply (div_eq_iff (show 1 - (ratio q : ℝ) ≠ 0 by linarith)).2
  simp only [ratio, Rat.cast_div, Rat.cast_sub, Rat.cast_add, Rat.cast_one]
  field_simp [hd]
  <;> ring

/-- The result concerns Real.log of the actual argument, not a new log model. -/
theorem log_enclosure {q : ℚ} (hq : 1 ≤ q) (N : ℕ) :
    (lower q N : ℝ) ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) ≤ (upper q N : ℝ) := by
  obtain ⟨hz0, hz1⟩ := ratio_bounds hq
  have hz0R : (0 : ℝ) ≤ (ratio q : ℝ) := by exact_mod_cast hz0
  have hz1R : (ratio q : ℝ) < 1 := by exact_mod_cast hz1
  have hl := Real.sum_range_le_log_div hz0R hz1R N
  have hu := Real.log_div_le_sum_range_add hz0R hz1R N
  rw [ratio_identity hq] at hl hu
  have hL : (lower q N : ℝ) =
      2 * ∑ k ∈ Finset.range N, (ratio q : ℝ) ^ (2 * k + 1) / (2 * (k : ℝ) + 1) := by
    simp [lower]
  have hU : (upper q N : ℝ) = (lower q N : ℝ) +
      2 * (ratio q : ℝ) ^ (2 * N + 1) / (1 - (ratio q : ℝ) ^ 2) := by
    simp [upper, width]
  rw [hL] at hU ⊢
  constructor
  · linarith
  · rw [hU]
    linarith

theorem radius_nonneg {q : ℚ} (hq : 1 ≤ q) (N : ℕ) : 0 ≤ radius q N := by
  obtain ⟨hz0, hz1⟩ := ratio_bounds hq
  have hd : 0 < 1 - (ratio q) ^ 2 := by nlinarith
  unfold radius width
  positivity

/-- A finite rational center-radius pair encloses the exact logarithmic lag. -/
theorem center_error {q : ℚ} (hq : 1 ≤ q) (N : ℕ) :
    |Real.log (q : ℝ) - (center q N : ℝ)| ≤ (radius q N : ℝ) := by
  obtain ⟨hl, hu⟩ := log_enclosure hq N
  have hU : (upper q N : ℝ) = (lower q N : ℝ) + (width q N : ℝ) := by
    simp [upper]
  simp only [center, radius, Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Dyadic reduction is checked by a rational factorization q=2^j*r. -/
def dyadicLower (j : ℕ) (r : ℚ) (N : ℕ) : ℚ := (j : ℚ) * lower 2 N + lower r N

def dyadicUpper (j : ℕ) (r : ℚ) (N : ℕ) : ℚ := (j : ℚ) * upper 2 N + upper r N

theorem dyadic_enclosure {q r : ℚ} {j : ℕ} (hr : 1 ≤ r)
    (hfactor : q = (2 : ℚ) ^ j * r) (N : ℕ) :
    (dyadicLower j r N : ℝ) ≤ Real.log (q : ℝ) ∧
      Real.log (q : ℝ) ≤ (dyadicUpper j r N : ℝ) := by
  have hrR : (0 : ℝ) < (r : ℝ) := by exact_mod_cast (show 0 < r by linarith)
  have heq : (q : ℝ) = (2 : ℝ) ^ j * (r : ℝ) := by exact_mod_cast hfactor
  rw [heq, Real.log_mul (pow_ne_zero j (by norm_num)) hrR.ne', Real.log_pow]
  obtain ⟨h2l, h2u⟩ := log_enclosure (by norm_num : (1 : ℚ) ≤ 2) N
  obtain ⟨hrl, hru⟩ := log_enclosure hr N
  simp only [dyadicLower, dyadicUpper, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast]
  exact ⟨add_le_add (mul_le_mul_of_nonneg_left h2l (Nat.cast_nonneg j)) hrl,
    add_le_add (mul_le_mul_of_nonneg_left h2u (Nat.cast_nonneg j)) hru⟩

/-- Geometric precision after reduction to [1,2]. This is a rational inequality. -/
theorem width_le_geometric {q : ℚ} (hq : 1 ≤ q) (hq2 : q ≤ 2) (N : ℕ) :
    width q N ≤ (3 / 4 : ℚ) * (1 / 9 : ℚ) ^ N := by
  obtain ⟨hz0, hz1⟩ := ratio_bounds hq
  have hz : ratio q ≤ (1 / 3 : ℚ) := by
    apply (div_le_iff₀ (show 0 < q + 1 by linarith)).2
    linarith
  have hd : (8 / 9 : ℚ) ≤ 1 - (ratio q) ^ 2 := by nlinarith
  have hp := pow_le_pow_left₀ hz0 hz (2 * N + 1)
  calc
    width q N ≤ 2 * (1 / 3 : ℚ) ^ (2 * N + 1) / (8 / 9) := by
      unfold width
      apply (div_le_div_iff₀ (by linarith : 0 < 1 - (ratio q) ^ 2)
        (by norm_num : (0 : ℚ) < 8 / 9)).2
      exact (mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hp (by norm_num)) (by norm_num)).trans
        (mul_le_mul_of_nonneg_left hd (by positivity))
    _ = _ := by
      rw [pow_add, pow_mul]
      norm_num <;> ring

/-- Dimension-free scalar precision for a single dyadically reduced logarithm. -/
theorem dyadic_width_le {r : ℚ} (hr : 1 ≤ r) (hr2 : r ≤ 2) (j N : ℕ) :
    dyadicUpper j r N - dyadicLower j r N ≤
      ((j : ℚ) + 1) * (3 / 4 : ℚ) * (1 / 9 : ℚ) ^ N := by
  have h2 := width_le_geometric (by norm_num : (1 : ℚ) ≤ 2) le_rfl N
  have hr' := width_le_geometric hr hr2 N
  have hid : dyadicUpper j r N - dyadicLower j r N =
      (j : ℚ) * width 2 N + width r N := by
    unfold dyadicUpper dyadicLower upper
    ring
  rw [hid]
  have h := add_le_add (mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg j)) hr'
  nlinarith

/-- An explicit source-log enclosure; the norm_num proof is a candidate, not an executed receipt. -/
theorem log_two_rational_example :
    (842 / 1215 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (3373 / 4860 : ℝ) := by
  have h := log_enclosure (by norm_num : (1 : ℚ) ≤ 2) 3
  norm_num [lower, upper, width, ratio, Finset.sum_range_succ] at h
  exact h

/-- Concrete midpoint/radius, by exact fraction arithmetic from the same source bound. -/
theorem log_two_center_error :
    |Real.log 2 - (749 / 1080 : ℝ)| ≤ (1 / 1944 : ℝ) := by
  obtain ⟨hl, hu⟩ := log_two_rational_example
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalLogarithms
