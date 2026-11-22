/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.OrderedHeatCalibrationError

/-!
# Signed dwell calibration in a shared spectral chart

Noiseless recovery depends on the signed, rate-weighted dwell errors in
the modes occupied by the input.
-/

noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.OrderedHeatSchedule

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

variable {ι : Type*}

/-- The signed exposure difference retains cancellations across stages. -/
theorem exposure_sub_eq_signed_dwell (time measured : ℕ → ℝ)
    (spectrum : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    exposure measured spectrum n i - exposure time spectrum n i =
      ∑ j ∈ Finset.range n, (measured j - time j) * spectrum j i := by
  simp only [exposure, Finset.sum_sub_distrib, sub_mul]

/-- Exact noiseless recovery requires calibration only on the nonzero input
coordinates, and is equivalent there to a zero signed exposure difference. -/
theorem noiseless_recovery_iff_signed_dwell (time measured : ℕ → ℝ)
    (spectrum : ℕ → ι → ℝ) (initial : ι → ℝ) (n : ℕ) :
    spectralHeat (exposure measured spectrum n) (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) initial n) = initial ↔
      ∀ i, initial i ≠ 0 →
        (∑ j ∈ Finset.range n, (measured j - time j) * spectrum j i) = 0 := by
  have defect (i : ι) :=
    calibrated_recovery_defect time spectrum (exposure measured spectrum n) initial 0 n i
  constructor
  · intro recovered i hn
    have h := defect i
    simp only [add_zero, Pi.zero_apply, mul_zero,
      exposure_sub_eq_signed_dwell] at h
    rw [congrFun recovered i, sub_self] at h
    have hexp := (mul_eq_zero.mp h.symm).resolve_right hn
    exact Real.exp_injective ((sub_eq_zero.mp hexp).trans Real.exp_zero.symm)
  · intro exactDwell
    funext i
    have h := defect i
    simp only [add_zero, Pi.zero_apply, mul_zero,
      exposure_sub_eq_signed_dwell] at h
    apply sub_eq_zero.mp
    rw [h]
    by_cases hz : initial i = 0
    · rw [hz, mul_zero]
    · rw [exactDwell i hz, Real.exp_zero, sub_self, zero_mul]

theorem noiseless_recovery_95_of_equal_total_dwell (time measured : ℕ → ℝ)
    (rate initial : ι → ℝ)
    (balanced : ∑ j ∈ Finset.range 95, measured j = ∑ j ∈ Finset.range 95, time j) :
    spectralHeat (exposure measured (fun _ => rate) 95) (-1)
      (run (fun j x => spectralHeat rate (time j) x) initial 95) = initial := by
  apply (noiseless_recovery_iff_signed_dwell time measured (fun _ => rate) initial 95).mpr
  intro i _
  rw [← Finset.sum_mul, Finset.sum_sub_distrib, balanced, sub_self, zero_mul]

/-- Two opposite dwell errors cancel at a common rate, but unequal rates
give a nonzero residual even though the measured total duration is right. -/
theorem balanced_clock_unequal_rate_control :
    let time := fun _ : ℕ => (1 : ℝ)
    let measured := fun j : ℕ => if j = 0 then (2 : ℝ) else 0
    (∑ j ∈ Finset.range 2, measured j) = ∑ j ∈ Finset.range 2, time j ∧
      (∑ j ∈ Finset.range 2, (measured j - time j) * (if j = 0 then 1 else 2)) = -1 := by
  dsimp only
  norm_num [Finset.sum_range_succ]

end GRWTSK.OperatorTheory.OrderedHeatSchedule
