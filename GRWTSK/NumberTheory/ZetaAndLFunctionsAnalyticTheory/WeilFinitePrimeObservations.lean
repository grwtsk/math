/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations

/-!
# Finite arithmetic observations without a fixed prime-inventory cutoff

Dyadic range reduction gives rational logarithm intervals for every positive
natural argument. The error allowance records the actual reduction scale.
The existing integer-square-root brackets then enclose the original von
Mangoldt weight, with its prime-power condition retained. The four-cell
conductor-three source uses these observations beyond the earlier n ≤ 54
inventory. No floating-point observation is a premise.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FinitePrimeObservations

open ArithmeticFunction LowSchur
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- A twenty-four term logarithm series on the reduced interval [0,1/2]. -/
def logOneMinusHat (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range 24, x ^ (i + 1) / (i + 1 : ℕ))

theorem logOneMinus_error {x : ℚ} (hx : 0 ≤ x) (hx' : x ≤ 1 / 2) :
    |Real.log (1 - (x : ℝ)) - (logOneMinusHat x : ℝ)| ≤ 1 / (2 : ℝ) ^ 24 := by
  have hx0R : (0 : ℝ) ≤ (x : ℝ) := by exact_mod_cast hx
  have hxR : (x : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hx'
  have hAbs : |(x : ℝ)| ≤ 1 / 2 := by simpa only [abs_of_nonneg hx0R] using hxR
  have h := Real.abs_log_sub_add_sum_range_le (hAbs.trans_lt (by norm_num)) 24
  have hEq : Real.log (1 - (x : ℝ)) - (logOneMinusHat x : ℝ) =
      (∑ i ∈ Finset.range 24, (x : ℝ) ^ (i + 1) / ((i : ℝ) + 1)) +
        Real.log (1 - (x : ℝ)) := by
    simp [logOneMinusHat, add_comm]
  rw [hEq]
  refine h.trans ?_
  calc
    _ ≤ (1 / 2 : ℝ) ^ 25 / (1 - |(x : ℝ)|) :=
      div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) hAbs 25) (by linarith)
    _ ≤ (1 / 2 : ℝ) ^ 25 / (1 / 2) :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith)
    _ = _ := by norm_num

def logTwoHat : ℚ := -logOneMinusHat (1 / 2)

theorem logTwo_error : |Real.log 2 - (logTwoHat : ℝ)| ≤ 1 / (2 : ℝ) ^ 24 := by
  have h := logOneMinus_error (x := 1 / 2) (by norm_num) (by norm_num)
  have hEq : Real.log 2 - (logTwoHat : ℝ) =
      -(Real.log (1 - ((1 / 2 : ℚ) : ℝ)) - (logOneMinusHat (1 / 2) : ℝ)) := by
    rw [logTwoHat, Rat.cast_neg, show 1 - ((1 / 2 : ℚ) : ℝ) = (2 : ℝ)⁻¹ by norm_num,
      Real.log_inv]
    ring
  rw [hEq, abs_neg]
  exact h

def logScale (n : ℕ) : ℕ := Nat.log 2 n + 1
def logFraction (n : ℕ) : ℚ := 1 - (n : ℚ) / 2 ^ logScale n
def logHatRaw (n : ℕ) : ℚ :=
  logOneMinusHat (logFraction n) + (logScale n : ℚ) * logTwoHat

/-- The scale-sensitive estimate is valid for every positive argument. -/
theorem abs_log_sub_logHatRaw_le {n : ℕ} (hn : 0 < n) :
    |Real.log (n : ℝ) - (logHatRaw n : ℝ)| ≤
      ((logScale n : ℝ) + 1) / (2 : ℝ) ^ 24 := by
  have hnLo : (2 : ℚ) ^ Nat.log 2 n ≤ n := by
    exact_mod_cast Nat.pow_log_le_self 2 hn.ne'
  have hnHi : (n : ℚ) ≤ 2 ^ logScale n := by
    exact_mod_cast (Nat.lt_pow_succ_log_self (by decide : 1 < 2) n).le
  have hx : 0 ≤ logFraction n := by
    unfold logFraction
    exact sub_nonneg.mpr ((div_le_one (by positivity)).mpr hnHi)
  have hx' : logFraction n ≤ 1 / 2 := by
    unfold logFraction
    have h : (1 / 2 : ℚ) ≤ (n : ℚ) / 2 ^ logScale n := by
      apply (le_div_iff₀ (by positivity)).2
      rw [logScale, pow_succ]
      linarith only [hnLo]
    linarith
  have hxR : (logFraction n : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hx'
  have hnEq : (n : ℝ) = (1 - (logFraction n : ℝ)) * 2 ^ logScale n := by
    simp only [logFraction, Rat.cast_sub, Rat.cast_one, Rat.cast_div, Rat.cast_natCast,
      Rat.cast_pow, Rat.cast_ofNat, sub_sub_cancel]
    symm
    exact div_mul_cancel₀ (n : ℝ) (pow_ne_zero _ (by norm_num : (2 : ℝ) ≠ 0))
  have hLog : Real.log (n : ℝ) =
      Real.log (1 - (logFraction n : ℝ)) + (logScale n : ℝ) * Real.log 2 := by
    rw [hnEq, Real.log_mul (by linarith) (by positivity), Real.log_pow]
  rw [hLog]
  push_cast [logHatRaw]
  rw [show Real.log (1 - (logFraction n : ℝ)) + (logScale n : ℝ) * Real.log 2 -
      ((logOneMinusHat (logFraction n) : ℝ) + (logScale n : ℝ) * (logTwoHat : ℝ)) =
      (Real.log (1 - (logFraction n : ℝ)) - (logOneMinusHat (logFraction n) : ℝ)) +
        (logScale n : ℝ) * (Real.log 2 - (logTwoHat : ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg (α := ℝ) (logScale n))]
  calc
    _ ≤ 1 / (2 : ℝ) ^ 24 + (logScale n : ℝ) * (1 / (2 : ℝ) ^ 24) :=
      add_le_add (logOneMinus_error hx hx')
        (mul_le_mul_of_nonneg_left logTwo_error (Nat.cast_nonneg _))
    _ = _ := by ring

/-- Round the rational center to a fixed grid before accumulating intervals. -/
def logHat (n : ℕ) : ℚ :=
  (⌊(2 : ℚ) ^ (32 : ℕ) * logHatRaw n⌋ : ℤ) / (2 : ℚ) ^ (32 : ℕ)

def logRadius (n : ℕ) : ℚ :=
  ((logScale n : ℚ) + 1) / (2 : ℚ) ^ (24 : ℕ) + 1 / (2 : ℚ) ^ (32 : ℕ)

theorem abs_logHatRaw_sub_logHat_le (n : ℕ) :
    |(logHatRaw n : ℝ) - (logHat n : ℝ)| ≤ 1 / (2 : ℝ) ^ (32 : ℕ) := by
  let y := (2 : ℚ) ^ (32 : ℕ) * logHatRaw n
  have hLo := (Rat.cast_le (K := ℝ)).2 (Int.floor_le y)
  have hHi := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one y)
  simp only [y, Rat.cast_intCast, Rat.cast_add, Rat.cast_one, Rat.cast_mul, Rat.cast_pow,
    Rat.cast_ofNat] at hLo hHi
  have hGrid : 0 < (2 : ℝ) ^ (32 : ℕ) := by positivity
  simp only [logHat, Rat.cast_div, Rat.cast_intCast, Rat.cast_pow, Rat.cast_ofNat]
  change |(logHatRaw n : ℝ) - ((⌊y⌋ : ℤ) : ℝ) / (2 : ℝ) ^ (32 : ℕ)| ≤ _
  rw [abs_of_nonneg (sub_nonneg.mpr ((div_le_iff₀ hGrid).2
    (by simpa only [mul_comm] using hLo)))]
  apply (le_div_iff₀ hGrid).2
  rw [sub_mul, div_mul_cancel₀ _ hGrid.ne']
  linarith only [hHi]

theorem abs_log_sub_logHat_le {n : ℕ} (hn : 0 < n) :
    |Real.log (n : ℝ) - (logHat n : ℝ)| ≤ (logRadius n : ℝ) := by
  have h := (abs_sub_le (Real.log n) (logHatRaw n : ℝ) (logHat n : ℝ)).trans
    (add_le_add (abs_log_sub_logHatRaw_le hn) (abs_logHatRaw_sub_logHat_le n))
  simpa only [logRadius, Rat.cast_add, Rat.cast_div, Rat.cast_natCast, Rat.cast_one,
    Rat.cast_pow, Rat.cast_ofNat] using h

def logBounds (n : ℕ) : Bounds := (logHat n - logRadius n, logHat n + logRadius n)

theorem logBounds_sound {n : ℕ} (hn : 0 < n) :
    Encloses (logBounds n) (Real.log (n : ℝ)) := by
  have h := abs_le.mp (abs_log_sub_logHat_le hn)
  simp only [Encloses, logBounds, Rat.cast_sub, Rat.cast_add]
  exact ⟨by linarith [h.1], by linarith [h.2]⟩

/-- The previously proved integer square-root lower endpoint is positive
at every positive natural argument; there is no radius-two restriction. -/
theorem sqrtBounds_lo_pos {n : ℕ} (hn : 0 < n) :
    0 < ((RadiusTwoPrimeObservations.sqrtBounds n).1 : ℝ) := by
  have hp : 0 < Nat.sqrt (n * (10 ^ 18) ^ 2) :=
    Nat.sqrt_pos.mpr (Nat.mul_pos hn (by norm_num))
  simp only [RadiusTwoPrimeObservations.sqrtBounds, Rat.cast_div, Rat.cast_natCast]
  change (0 : ℝ) < (Nat.sqrt (n * (10 ^ 18) ^ 2) : ℝ) / ((10 ^ 18 : ℕ) : ℝ)
  exact div_pos (by exact_mod_cast hp) (by norm_num)

/-- The original von Mangoldt weight, with zero non-prime-power values. -/
def primeWeightBounds (n : ℕ) : Bounds :=
  if IsPrimePow n then
    mul (logBounds n.minFac) (inv (RadiusTwoPrimeObservations.sqrtBounds n))
  else point 0

theorem primeWeightBounds_sound {n : ℕ} (hn : 0 < n) :
    Encloses (primeWeightBounds n) (primeWeight n) := by
  unfold primeWeightBounds primeWeight
  rw [vonMangoldt_apply]
  split_ifs with hp
  · rw [div_eq_mul_inv]
    exact mul_sound (logBounds_sound (Nat.minFac_pos n))
      (inv_sound (RadiusTwoPrimeObservations.sqrtBounds_sound n) (sqrtBounds_lo_pos hn))
  · simpa only [zero_div, Rat.cast_zero] using point_sound (0 : ℚ)

end GRWTSK.NumberTheory.WeilQuadraticForm.FinitePrimeObservations
