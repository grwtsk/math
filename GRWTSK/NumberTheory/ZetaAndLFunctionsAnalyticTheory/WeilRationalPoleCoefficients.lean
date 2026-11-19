/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalSineSamples
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleMoment
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Data.Matrix.Notation
import Mathlib.Tactic

/-!
# Rational enclosures of the original radius-two pole coefficients

The target is the pre-existing `OddOutputTrace.sinePoleCoefficient 2 n`.
The original integral identity, both pole orientations, normalization, and
alternating sign are retained. This file encloses the coefficient for EVERY
natural n; the displayed finite table is only a consumer of that theorem.
No infinite set is inferred from the finite arithmetic diagnostics.

SOURCE_PROOF_CANDIDATE. Lean parsing/elaboration, exact signatures, fresh
kernel replay, transitive axiom audit and independent review: NOT_RUN.
See the adjacent individual argument and provenance record.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalPoleCoefficients

open OddRootProjection OddOutputTrace OddPoleMoment OddSchurAccounting

/-- Pinned Mathlib's two exact decimal-rational bounds for pi. -/
def piLower : ℚ := 314159265358979323846 / 100000000000000000000
def piUpper : ℚ := 314159265358979323847 / 100000000000000000000

/-- The normalization is checked by squares, not a floating square root. -/
def alphaLower : ℚ := 707106781186547 / 1000000000000000
def alphaUpper : ℚ := 707106781186548 / 1000000000000000

/-- The rational center and entire radius of Mathlib's exp(1) theorem. -/
def expLower : ℚ := 363916618873 / 133877442384 - 1 / 10 ^ 20
def expUpper : ℚ := 363916618873 / 133877442384 + 1 / 10 ^ 20

def sinhLower : ℚ := (expLower - 1 / expLower) / 2
def sinhUpper : ℚ := (expUpper - 1 / expUpper) / 2

theorem scalar_signs :
    0 < piLower ∧ 0 < alphaLower ∧ 0 < expLower ∧ 0 < sinhLower := by
  norm_num [piLower, alphaLower, expLower, sinhLower]

theorem pi_bounds : (piLower : ℝ) ≤ Real.pi ∧ Real.pi ≤ (piUpper : ℝ) := by
  constructor
  · simpa [piLower] using Real.pi_gt_d20.le
  · simpa [piUpper] using Real.pi_lt_d20.le

theorem normalization_bounds :
    (alphaLower : ℝ) ≤ 1 / Real.sqrt 2 ∧ 1 / Real.sqrt 2 ≤ (alphaUpper : ℝ) := by
  apply RationalSineSamples.inv_sqrt_bounds (by norm_num : (0 : ℝ) < 2)
  all_goals norm_num [alphaLower, alphaUpper]

theorem exp_one_bounds :
    (expLower : ℝ) ≤ Real.exp 1 ∧ Real.exp 1 ≤ (expUpper : ℝ) := by
  obtain ⟨hl, hu⟩ := abs_le.mp Real.exp_one_near_20
  constructor <;> norm_num [expLower, expUpper] <;> linarith

/-- The reciprocal error is paid with its reversed order and positive denominator. -/
theorem sinh_one_bounds :
    (sinhLower : ℝ) ≤ Real.sinh 1 ∧ Real.sinh 1 ≤ (sinhUpper : ℝ) := by
  obtain ⟨hl, hu⟩ := exp_one_bounds
  have hl0 : (0 : ℝ) < (expLower : ℝ) := by exact_mod_cast scalar_signs.2.2.1
  have hli : 1 / Real.exp 1 ≤ 1 / (expLower : ℝ) :=
    one_div_le_one_div_of_le hl0 hl
  have hui : 1 / (expUpper : ℝ) ≤ 1 / Real.exp 1 :=
    one_div_le_one_div_of_le (Real.exp_pos 1) hu
  simp only [Real.sinh_eq, Real.exp_neg, sinhLower, sinhUpper, Rat.cast_div, Rat.cast_sub, Rat.cast_one,
    Rat.cast_ofNat, one_div] at hli hui ⊢
  constructor <;> linarith

/-- Positive-amplitude part. The source sign is supplied separately below. -/
noncomputable def amplitude (n : ℕ) : ℝ :=
  4 * (1 / Real.sqrt 2) * Real.pi * Real.sinh 1 * (n : ℝ) /
    (1 + Real.pi ^ 2 * (n : ℝ) ^ 2)

def amplitudeLower (n : ℕ) : ℚ :=
  4 * alphaLower * piLower * sinhLower * (n : ℚ) /
    (1 + piUpper ^ 2 * (n : ℚ) ^ 2)

def amplitudeUpper (n : ℕ) : ℚ :=
  4 * alphaUpper * piUpper * sinhUpper * (n : ℚ) /
    (1 + piLower ^ 2 * (n : ℚ) ^ 2)

/-- Exact reduction of the ORIGINAL closed-form source coefficient. -/
theorem coefficient_eq_sign_mul_amplitude (n : ℕ) :
    sinePoleCoefficient 2 n = (-1 : ℝ) ^ (n + 1) * amplitude n := by
  have hs : Real.sqrt 2 ≠ 0 := Real.sqrt_ne_zero'.mpr (by norm_num)
  have hd : (1 : ℝ) / 4 + (Real.pi * (n : ℝ) / 2) ^ 2 ≠ 0 := by positivity
  have he : (1 : ℝ) + Real.pi ^ 2 * (n : ℝ) ^ 2 ≠ 0 := by positivity
  unfold sinePoleCoefficient frequency amplitude
  norm_num only [show (2 : ℝ) / 2 = 1 by norm_num]
  field_simp [hs, hd, he] <;> ring

/-- A scalar quotient enclosure with all signs and denominator hypotheses exposed. -/
private theorem quotient_bounds {a al au d dl du : ℝ}
    (ha0 : 0 ≤ a) (hal0 : 0 ≤ al) (hau0 : 0 ≤ au)
    (hal : al ≤ a) (hau : a ≤ au)
    (hdl0 : 0 < dl) (hd : dl ≤ d) (hdu : d ≤ du) :
    al / du ≤ a / d ∧ a / d ≤ au / dl := by
  have hd0 : 0 < d := hdl0.trans_le hd
  have hdu0 : 0 < du := hd0.trans_le hdu
  constructor
  · apply (div_le_div_iff₀ hdu0 hd0).mpr
    exact (mul_le_mul_of_nonneg_right hal hd0.le).trans
      (mul_le_mul_of_nonneg_left hdu ha0)
  · apply (div_le_div_iff₀ hd0 hdl0).mpr
    exact (mul_le_mul_of_nonneg_left hd ha0).trans
      (mul_le_mul_of_nonneg_right hau hd0.le)

/-- Valid for every mode, including n=0. This is not a finite-table extrapolation. -/
theorem amplitude_bounds (n : ℕ) :
    (amplitudeLower n : ℝ) ≤ amplitude n ∧ amplitude n ≤ (amplitudeUpper n : ℝ) := by
  obtain ⟨hpl, hpu⟩ := pi_bounds
  obtain ⟨hal, hau⟩ := normalization_bounds
  obtain ⟨hsl, hsu⟩ := sinh_one_bounds
  have hp0 : (0 : ℝ) ≤ (piLower : ℝ) := by
    exact_mod_cast scalar_signs.1.le
  have ha0 : (0 : ℝ) ≤ (alphaLower : ℝ) := by
    exact_mod_cast scalar_signs.2.1.le
  have hs0 : (0 : ℝ) ≤ (sinhLower : ℝ) := by
    exact_mod_cast scalar_signs.2.2.2.le
  have hp : 0 ≤ Real.pi := hp0.trans hpl
  have ha : 0 ≤ 1 / Real.sqrt 2 := ha0.trans hal
  have hs : 0 ≤ Real.sinh 1 := hs0.trans hsl
  have hpU : (0 : ℝ) ≤ (piUpper : ℝ) := hp.trans hpu
  have haU : (0 : ℝ) ≤ (alphaUpper : ℝ) := ha.trans hau
  have hsU : (0 : ℝ) ≤ (sinhUpper : ℝ) := hs.trans hsu
  have hl := mul_le_mul (mul_le_mul hal hpl hp0 ha) hsl hs0 (mul_nonneg ha hp)
  have hu := mul_le_mul (mul_le_mul hau hpu hp haU) hsu hs (mul_nonneg haU hpU)
  have hnl : 4 * (alphaLower : ℝ) * (piLower : ℝ) * (sinhLower : ℝ) * (n : ℝ) ≤
      4 * (1 / Real.sqrt 2) * Real.pi * Real.sinh 1 * (n : ℝ) := by
    nlinarith [mul_le_mul_of_nonneg_left hl (show 0 ≤ 4 * (n : ℝ) by positivity)]
  have hnu : 4 * (1 / Real.sqrt 2) * Real.pi * Real.sinh 1 * (n : ℝ) ≤
      4 * (alphaUpper : ℝ) * (piUpper : ℝ) * (sinhUpper : ℝ) * (n : ℝ) := by
    nlinarith [mul_le_mul_of_nonneg_left hu (show 0 ≤ 4 * (n : ℝ) by positivity)]
  have hpl2 : (piLower : ℝ) ^ 2 ≤ Real.pi ^ 2 := by nlinarith
  have hpu2 : Real.pi ^ 2 ≤ (piUpper : ℝ) ^ 2 := by nlinarith
  have hdl : 1 + (piLower : ℝ) ^ 2 * (n : ℝ) ^ 2 ≤
      1 + Real.pi ^ 2 * (n : ℝ) ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_right hpl2 (sq_nonneg (n : ℝ))]
  have hdu : 1 + Real.pi ^ 2 * (n : ℝ) ^ 2 ≤
      1 + (piUpper : ℝ) ^ 2 * (n : ℝ) ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_right hpu2 (sq_nonneg (n : ℝ))]
  unfold amplitudeLower amplitudeUpper
  push_cast
  exact quotient_bounds (by positivity) (by positivity) (by positivity)
    hnl hnu (by positivity) hdl hdu

/-- The sign is part of the center, never replaced by its absolute value. -/
def center (n : ℕ) : ℚ :=
  (-1 : ℚ) ^ (n + 1) * ((amplitudeLower n + amplitudeUpper n) / 2)

def radius (n : ℕ) : ℚ := (amplitudeUpper n - amplitudeLower n) / 2

theorem radius_nonneg (n : ℕ) : 0 ≤ radius n := by
  have h := (amplitude_bounds n).1.trans (amplitude_bounds n).2
  have hq : amplitudeLower n ≤ amplitudeUpper n := by exact_mod_cast h
  unfold radius
  exact div_nonneg (sub_nonneg.mpr hq) (by norm_num)

/-- Complete rational center-radius enclosure of the original signed coefficient. -/
theorem coefficient_error (n : ℕ) :
    |sinePoleCoefficient 2 n - (center n : ℝ)| ≤ (radius n : ℝ) := by
  obtain ⟨hl, hu⟩ := amplitude_bounds n
  rw [coefficient_eq_sign_mul_amplitude]
  simp only [center, radius, Rat.cast_mul, Rat.cast_pow, Rat.cast_neg, Rat.cast_one,
    Rat.cast_add, Rat.cast_sub, Rat.cast_div, Rat.cast_ofNat]
  rw [← mul_sub, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The same interval encloses the integral-defined bordered pole column. -/
theorem sinhMomentRow_error {M : ℕ} (i : Fin M) :
    |sinhMomentRow 2 M i - (center (i.val + 1) : ℝ)| ≤ (radius (i.val + 1) : ℝ) := by
  rw [sinhMomentRow_eq_sinePoleCoefficient 2 (by norm_num)]
  exact coefficient_error _

/-- Nonzero fixtures include retained, first omitted, and remote modes. -/
def sampleMode : Fin 8 → ℕ := ![1, 2, 4, 8, 64, 65, 512, 2048]
def sampleNumerator : Fin 8 → ℤ :=
  ![960712301842, -515957059703, -262848693554, -132047550954,
    -16531666209, 16277345177, -2066508595, -516627336]
def sampleCenter (i : Fin 8) : ℚ := (sampleNumerator i : ℚ) / 1000000000000

set_option maxRecDepth 8192 in
set_option maxHeartbeats 4000000 in
/-- Finite rational arithmetic only. Lean execution of these bodies remains NOT_RUN. -/
theorem sample_budget (i : Fin 8) :
    |center (sampleMode i) - sampleCenter i| + radius (sampleMode i) ≤ 1 / 1000000000000 := by
  fin_cases i <;>
    norm_num [sampleMode, sampleCenter, sampleNumerator, center, radius,
      amplitudeLower, amplitudeUpper, piLower, piUpper, alphaLower, alphaUpper,
      sinhLower, sinhUpper, expLower, expUpper]

theorem source_samples (i : Fin 8) :
    |sinePoleCoefficient 2 (sampleMode i) - (sampleCenter i : ℝ)| ≤
      (1 / 1000000000000 : ℝ) := by
  have hb : |(center (sampleMode i) : ℝ) - (sampleCenter i : ℝ)| +
      (radius (sampleMode i) : ℝ) ≤ (1 / 1000000000000 : ℝ) := by
    exact_mod_cast sample_budget i
  exact (abs_sub_le _ (center (sampleMode i) : ℝ) _).trans
    (by linarith [coefficient_error (sampleMode i)])

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalPoleCoefficients
