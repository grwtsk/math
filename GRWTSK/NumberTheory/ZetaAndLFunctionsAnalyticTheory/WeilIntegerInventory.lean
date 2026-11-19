/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Order.Interval.Finset.Nat

/-!
# Admitting integer inventories for the original Weil prime cutoff

MSC2020: 11M06, 11A25, 65G20. Consumer: WeilSineInventoryPadding.
The source uses q < exp(2T), not a rounded log comparison. Two certified
boundary inequalities replace its noncomputable inventory by an exact integer
interval. Separately, 9^n is a proved upper cutoff at EVERY integer radius n.
It is not asserted to be the exact inventory; the consumer pays that difference
by proving the extra supported translations are identically zero.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, kernel replay, transitive
axiom audit and independent review NOT_RUN. No arithmetic sign is asserted.
See the adjacent individual argument/provenance records.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.IntegerInventory

open LowSchur RationalLogarithms

/-- Eliminate the redundant ceiling test without changing the strict boundary. -/
theorem mem_active_iff (T : ℝ) (q : ℕ) :
    q ∈ activePrimePowers T ↔ 2 ≤ q ∧ (q : ℝ) < Real.exp (2 * T) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  constructor
  · exact fun h => h.2
  · exact fun h => ⟨h.2, h⟩

/-- A proved integer upper cutoff contains ALL the original labels. -/
theorem active_subset_Icc {T : ℝ} {B : ℕ}
    (hB : Real.exp (2 * T) ≤ (B : ℝ)) :
    activePrimePowers T ⊆ Finset.Icc 2 B := by
  intro q hq
  obtain ⟨hq2, hqe⟩ := (mem_active_iff T q).1 hq
  have hqB : q < B := by exact_mod_cast hqe.trans_le hB
  exact Finset.mem_Icc.mpr ⟨hq2, hqB.le⟩

/-- The upper boundary is NONSTRICT: equality at B+1 excludes that label. -/
theorem active_eq_Icc {T : ℝ} {B : ℕ}
    (hl : (B : ℝ) < Real.exp (2 * T))
    (hu : Real.exp (2 * T) ≤ ((B + 1 : ℕ) : ℝ)) :
    activePrimePowers T = Finset.Icc 2 B := by
  ext q
  rw [mem_active_iff, Finset.mem_Icc]
  constructor
  · rintro ⟨hq2, hqe⟩
    have hqB : q < B + 1 := by exact_mod_cast hqe.trans_le hu
    exact ⟨hq2, by omega⟩
  · rintro ⟨hq2, hqB⟩
    have hqBR : (q : ℝ) ≤ (B : ℝ) := by exact_mod_cast hqB
    exact ⟨hq2, hqBR.trans_lt hl⟩

/-- Return logarithmic boundary checks to the existing exponential cutoff. -/
theorem active_eq_Icc_of_log {T : ℝ} {B : ℕ} (hB : 1 ≤ B)
    (hl : Real.log (B : ℝ) < 2 * T)
    (hu : 2 * T ≤ Real.log ((B + 1 : ℕ) : ℝ)) :
    activePrimePowers T = Finset.Icc 2 B := by
  have hBp : (0 : ℝ) < (B : ℝ) := by exact_mod_cast (show 0 < B by omega)
  have hBsp : (0 : ℝ) < ((B + 1 : ℕ) : ℝ) := by positivity
  have hle := Real.exp_lt_exp.mpr hl
  have hue := Real.exp_le_exp.mpr hu
  rw [Real.exp_log hBp] at hle
  rw [Real.exp_log hBsp] at hue
  exact active_eq_Icc hle hue

/-- All premises except the conclusion are finite rational/integer comparisons.
The exact factorizations are required; no guessed floor of an exponential. -/
theorem active_eq_Icc_of_dyadic_checks (T : ℚ) {B j k N : ℕ} {r s : ℚ}
    (hB : 1 ≤ B) (hr : 1 ≤ r) (hs : 1 ≤ s)
    (hleft : (B : ℚ) = (2 : ℚ) ^ j * r)
    (hright : ((B + 1 : ℕ) : ℚ) = (2 : ℚ) ^ k * s)
    (hl : dyadicUpper j r N < 2 * T)
    (hu : 2 * T ≤ dyadicLower k s N) :
    activePrimePowers (T : ℝ) = Finset.Icc 2 B := by
  have hlogL : Real.log (B : ℝ) ≤ (dyadicUpper j r N : ℝ) := by
    simpa only [Rat.cast_natCast] using (dyadic_enclosure hr hleft N).2
  have hlogR : (dyadicLower k s N : ℝ) ≤ Real.log ((B + 1 : ℕ) : ℝ) := by
    simpa only [Rat.cast_natCast] using (dyadic_enclosure hs hright N).1
  have hlR : (dyadicUpper j r N : ℝ) < 2 * (T : ℝ) := by exact_mod_cast hl
  have huR : 2 * (T : ℝ) ≤ (dyadicLower k s N : ℝ) := by exact_mod_cast hu
  exact active_eq_Icc_of_log hB (hlogL.trans_lt hlR) (huR.trans hlogR)

/-- A small explicit source-log bound, reused for all integer windows. -/
theorem log_three_lower : (13 / 12 : ℝ) ≤ Real.log 3 := by
  have h := (log_enclosure (by norm_num : (1 : ℚ) ≤ 3) 2).1
  norm_num [lower, ratio, Finset.sum_range_succ] at h
  exact h

/-- Uniform finite padding, not a uniform lower bound for the Weil form. -/
theorem integer_exp_le_nine_pow (n : ℕ) :
    Real.exp (2 * (n : ℝ)) ≤ ((9 ^ n : ℕ) : ℝ) := by
  have h9 : (2 : ℝ) ≤ Real.log 9 := by
    have hlog : Real.log (9 : ℝ) = 2 * Real.log 3 := by
      rw [show (9 : ℝ) = 3 ^ (2 : ℕ) by norm_num, Real.log_pow]
      norm_num
    rw [hlog]
    linarith [log_three_lower]
  have hlog : 2 * (n : ℝ) ≤ Real.log ((9 : ℝ) ^ n) := by
    rw [Real.log_pow]
    nlinarith [mul_le_mul_of_nonneg_left h9 (Nat.cast_nonneg n)]
  have h := Real.exp_le_exp.mpr hlog
  rw [Real.exp_log (pow_pos (by norm_num : (0 : ℝ) < 9) n)] at h
  simpa only [Nat.cast_pow, Nat.cast_ofNat] using h

/-- This contains the canonical inventory at every integer radius, including n=0. -/
theorem integer_active_subset (n : ℕ) :
    activePrimePowers (n : ℝ) ⊆ Finset.Icc 2 (9 ^ n) :=
  active_subset_Icc (integer_exp_le_nine_pow n)

/-- Exact radius-one inventory; all composite labels are retained. -/
theorem active_one : activePrimePowers 1 = Finset.Icc 2 7 := by
  apply active_eq_Icc_of_dyadic_checks (T := (1 : ℚ))
    (B := 7) (j := 2) (k := 3) (N := 8) (r := 7 / 4) (s := 1)
  all_goals norm_num [dyadicUpper, dyadicLower, upper, lower, width, ratio,
    Finset.sum_range_succ]

/-- Exact radius-two inventory: includes 4,8,9,16,25,27,32,49, not just primes. -/
theorem active_two : activePrimePowers 2 = Finset.Icc 2 54 := by
  apply active_eq_Icc_of_dyadic_checks (T := (2 : ℚ))
    (B := 54) (j := 5) (k := 5) (N := 8) (r := 27 / 16) (s := 55 / 32)
  all_goals norm_num [dyadicUpper, dyadicLower, upper, lower, width, ratio,
    Finset.sum_range_succ]

/-- Exact radius-three inventory, admitted by the same eight-term supplier. -/
theorem active_three : activePrimePowers 3 = Finset.Icc 2 403 := by
  apply active_eq_Icc_of_dyadic_checks (T := (3 : ℚ))
    (B := 403) (j := 8) (k := 8) (N := 8) (r := 403 / 256) (s := 101 / 64)
  all_goals norm_num [dyadicUpper, dyadicLower, upper, lower, width, ratio,
    Finset.sum_range_succ]

end GRWTSK.NumberTheory.WeilQuadraticForm.IntegerInventory
