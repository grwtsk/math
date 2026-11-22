/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.OrderedHeatSchedule

/-!
# Inverse readout with a miscalibrated exposure

The common spectral chart separates multiplicative bias due to an exposure
error from amplified additive measurement error.
-/

noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.OrderedHeatSchedule

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

variable {ι : Type*}

theorem exposure_calibration_error (time measured : ℕ → ℝ)
    (spectrum : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    |exposure measured spectrum n i - exposure time spectrum n i| ≤
      ∑ j ∈ Finset.range n, |measured j - time j| * |spectrum j i| := by
  unfold exposure
  rw [← Finset.sum_sub_distrib]
  simpa only [← sub_mul, abs_mul] using
    (Finset.abs_sum_le_sum_abs
      (fun j => measured j * spectrum j i - time j * spectrum j i) (Finset.range n))

/-- The exact modal bias, including the additive error at the terminal sensor. -/
theorem calibrated_recovery_defect (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (estimate initial noise : ι → ℝ) (n : ℕ) (i : ι) :
    spectralHeat estimate (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) initial n + noise) i -
      initial i =
    (Real.exp (estimate i - exposure time spectrum n i) - 1) * initial i +
      Real.exp (estimate i) * noise i := by
  rw [run_spectral_eq]
  change Real.exp (-(-1) * estimate i) *
      (Real.exp (-1 * exposure time spectrum n i) * initial i + noise i) - initial i = _
  rw [neg_neg, one_mul, neg_one_mul,
    sub_eq_add_neg (estimate i) (exposure time spectrum n i), Real.exp_add]
  ring

private theorem exp_defect_bound {d δ : ℝ} (hd : |d| ≤ δ) :
    |Real.exp d - 1| ≤ Real.exp δ - 1 := by
  obtain ⟨hlo, hhi⟩ := abs_le.mp hd
  have hδ : 0 ≤ δ := (abs_nonneg d).trans hd
  have he : 1 ≤ Real.exp δ := Real.one_le_exp_iff.mpr hδ
  have hinv : 1 - Real.exp (-δ) ≤ Real.exp δ - 1 := by
    have hid : 1 - Real.exp (-δ) = (Real.exp δ - 1) / Real.exp δ := by
      rw [Real.exp_neg]
      field_simp [ne_of_gt (Real.exp_pos δ)]
    rw [hid]
    exact div_le_self (sub_nonneg.mpr he) he
  apply abs_le.mpr
  constructor
  · have h := Real.exp_le_exp.mpr hlo
    linarith
  · exact sub_le_sub_right (Real.exp_le_exp.mpr hhi) 1

/-- Exposure error and noise contribute to different terms of the error budget. -/
theorem calibrated_recovery_error_le (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (estimate initial noise : ι → ℝ) (n : ℕ) (i : ι) {δ M : ℝ}
    (hδ : |estimate i - exposure time spectrum n i| ≤ δ) (hM : estimate i ≤ M) :
    |spectralHeat estimate (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) initial n + noise) i -
      initial i| ≤
    (Real.exp δ - 1) * |initial i| + Real.exp M * |noise i| := by
  rw [calibrated_recovery_defect]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact add_le_add (mul_le_mul_of_nonneg_right (exp_defect_bound hδ) (abs_nonneg _))
    (mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hM) (abs_nonneg _))

/-- Sum the calibrated dwell errors over the 95 stages in the original order. -/
theorem dwell_recovery_error_le_95 (time measured : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (initial noise : ι → ℝ) (i : ι) :
    let estimate := exposure measured spectrum 95
    let δ := ∑ j ∈ Finset.range 95, |measured j - time j| * |spectrum j i|
    |spectralHeat estimate (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) initial 95 + noise) i -
      initial i| ≤
      (Real.exp δ - 1) * |initial i| + Real.exp (estimate i) * |noise i| :=
  calibrated_recovery_error_le time spectrum _ initial noise 95 i
    (exposure_calibration_error time measured spectrum 95 i) le_rfl

/-- Positive overcalibration on a unit mode creates bias even at zero noise.
The exposure-error term is attained exactly. -/
theorem overcalibration_unit_control (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (n : ℕ) (i : ι) {δ : ℝ} (hδ : 0 < δ) :
    let estimate := fun k => exposure time spectrum n k + δ
    spectralHeat estimate (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) (fun _ => 1) n + 0) i - 1 =
      Real.exp δ - 1 ∧ 0 < Real.exp δ - 1 := by
  intro estimate
  constructor
  · rw [calibrated_recovery_defect time spectrum estimate (fun _ => 1) 0 n i]
    change (Real.exp (exposure time spectrum n i + δ - exposure time spectrum n i) - 1) *
      1 + Real.exp (estimate i) * 0 = _
    ring_nf
  · exact sub_pos.mpr (Real.one_lt_exp_iff.mpr hδ)

end GRWTSK.OperatorTheory.OrderedHeatSchedule
