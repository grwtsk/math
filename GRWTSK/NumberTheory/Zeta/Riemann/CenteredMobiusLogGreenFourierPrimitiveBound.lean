/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureDerivative
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Phase-difference form of the authenticated Fourier primitive. -/
theorem fourierModeValue_eq_phase_difference_thin
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    fourierModeValue k t =
      (fourier (-k) (t : AddCircle (1 : ℝ)) - 1) /
        (-2 * Real.pi * Complex.I * k) := by
  unfold fourierModeValue fourierModePrimitive
  have hz :
      fourier (-k) ((0 : ℝ) : AddCircle (1 : ℝ)) = 1 := by simp
  rw [hz]
  field_simp [hk, Real.pi_ne_zero]
  ring

/-- Elementary phase-difference numerator bound. -/
theorem norm_fourier_phase_sub_one_le_two
    (k : ℤ) (t : ℝ) :
    ‖fourier (-k) (t : AddCircle (1 : ℝ)) - 1‖ ≤ 2 := by
  calc
    ‖fourier (-k) (t : AddCircle (1 : ℝ)) - 1‖ ≤
        ‖fourier (-k) (t : AddCircle (1 : ℝ))‖ + ‖(1 : ℂ)‖ :=
      norm_sub_le _ _
    _ = 2 := by simp [norm_fourier]

/-- Explicit primitive norm bound, retaining the exact integer-frequency
absolute value. -/
theorem norm_fourierModeValue_le
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    ‖fourierModeValue k t‖ ≤
      1 / (Real.pi * |(k : ℝ)|) := by
  rw [fourierModeValue_eq_phase_difference_thin hk]
  rw [norm_div]
  have hnum := norm_fourier_phase_sub_one_le_two k t
  have hkabs : 0 < |(k : ℝ)| := abs_pos.mpr (by exact_mod_cast hk)
  have hpi : 0 < Real.pi := Real.pi_pos
  have hden :
      ‖(-2 : ℂ) * Real.pi * Complex.I * (k : ℂ)‖ =
        2 * Real.pi * |(k : ℝ)| := by
    simp [norm_mul, abs_of_nonneg hpi.le]
    ring
  rw [hden]
  have hdenpos : 0 < 2 * Real.pi * |(k : ℝ)| := by positivity
  calc
    ‖fourier (-k) (t : AddCircle (1 : ℝ)) - 1‖ /
        (2 * Real.pi * |(k : ℝ)|) ≤
      2 / (2 * Real.pi * |(k : ℝ)|) :=
        div_le_div_of_nonneg_right hnum hdenpos.le
    _ = 1 / (Real.pi * |(k : ℝ)|) := by
      field_simp
      ring

/-- Frequency-independent coarse bound for every nonzero integer mode. -/
theorem norm_fourierModeValue_le_inv_pi
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    ‖fourierModeValue k t‖ ≤ 1 / Real.pi := by
  have h := norm_fourierModeValue_le hk t
  have hkone : (1 : ℝ) ≤ |(k : ℝ)| := by
    exact_mod_cast Int.one_le_abs hk
  have hpi : 0 < Real.pi := Real.pi_pos
  calc
    ‖fourierModeValue k t‖ ≤ 1 / (Real.pi * |(k : ℝ)|) := h
    _ ≤ 1 / Real.pi := by
      apply one_div_le_one_div_of_le hpi
      nlinarith

end GRWTSK.RiemannHypothesis
