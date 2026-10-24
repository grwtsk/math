# Complete source: GRWTSK.Analysis.NativeOffGridDensity.Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c69b1a903328d66b3897c4fd0a18ddce2148a3` · SHA-256 `8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Complex.RealDeriv

/-!
# Literal positive comparison density of the native off-grid model

This module keeps the paper's z=1/4+i*pi, omega=3/4+i*pi, B and normalized
phase. It checks the selected density's amplitude and pointwise positive
bounds on x>=1. These are preparation for the actual native readout; no
integer or half-integer source-sign result follows from this file alone.
Human source and off-grid coverage direction: grwtsk contributors. Local
complex normalization and density consumer: OpenAI Codex. Mathlib definitions
and calculus retain their qualified upstream identity. This density replaces
the arithmetic measure; it is not a Mangoldt counterexample or an RH result.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridDensity
open ComplexConjugate
noncomputable section

def mode : ℂ := (1 / 4 : ℝ) + Complex.I * (Real.pi : ℂ)
def exponent : ℂ := mode + (1 / 2 : ℝ)
def sourceCoefficient : ℂ := exponent * (mode ^ 2 - (1 / 4 : ℝ)) ^ 2 / mode ^ 10
def phase : ℂ := -conj sourceCoefficient /
  ((2 * ‖exponent‖ * ‖sourceCoefficient‖ : ℝ) : ℂ)
def density (x : ℝ) : ℝ :=
  1 + (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))).re

theorem exponent_real_part : exponent.re = 3 / 4 := by
  simp [exponent, mode]
  norm_num

theorem exponent_imaginary_part : exponent.im = Real.pi := by simp [exponent, mode]

theorem exponent_norm_gt_three : 3 < ‖exponent‖ := by
  have h := Complex.abs_im_le_norm exponent
  rw [exponent_imaginary_part, abs_of_pos Real.pi_pos] at h
  exact lt_of_lt_of_le Real.pi_gt_three h

theorem mode_ne_zero : mode ≠ 0 := by
  intro h
  have h' := congrArg Complex.re h
  norm_num [mode] at h'

theorem source_pole_factor_ne_zero : mode ^ 2 - (1 / 4 : ℝ) ≠ 0 := by
  intro h
  have h' := congrArg Complex.re h
  have hp := Real.pi_pos
  norm_num [mode, pow_two, Complex.mul_re, Complex.mul_im] at h'
  nlinarith [sq_nonneg Real.pi]

theorem source_coefficient_ne_zero : sourceCoefficient ≠ 0 := by
  have hw : exponent ≠ 0 := norm_pos_iff.mp (by linarith [exponent_norm_gt_three])
  exact div_ne_zero (mul_ne_zero hw (pow_ne_zero 2 source_pole_factor_ne_zero))
    (pow_ne_zero 10 mode_ne_zero)

theorem literal_phase_amplitude : ‖phase * exponent‖ = 1 / 2 := by
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  have hB := norm_pos_iff.mpr source_coefficient_ne_zero
  unfold phase
  simp only [norm_mul, norm_div, norm_neg, Complex.norm_conj, Complex.norm_real, Real.norm_eq_abs]
  norm_num [abs_of_pos hw, abs_of_pos hB]
  field_simp [hw.ne', hB.ne']

theorem literal_density_cpow {x : ℝ} (hx : 0 < x) :
    density x = 1 + (phase * exponent * (x : ℂ) ^ (exponent - 1)).re := by
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hx.ne'), ← Complex.ofReal_log hx.le]
  unfold density
  congr 3
  ring

theorem density_oscillation_bound {x : ℝ} (hx : 1 ≤ x) :
    |density x - 1| ≤ 1 / 2 := by
  have hxpos : 0 < x := by linarith
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have hexp : ‖Complex.exp ((exponent - 1) * (Real.log x : ℂ))‖ ≤ 1 := by
    rw [Complex.norm_exp]
    apply Real.exp_le_one_iff.mpr
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero, exponent_real_part]
    nlinarith
  have h := (Complex.abs_re_le_norm
    (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ)))).trans
      (by rw [norm_mul, literal_phase_amplitude]; nlinarith :
        ‖phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))‖ ≤ 1 / 2)
  simpa only [density, add_sub_cancel_left] using h

theorem literal_density_positive_bounds {x : ℝ} (hx : 1 ≤ x) :
    1 / 2 ≤ density x ∧ density x ≤ 3 / 2 := by
  have h := abs_le.mp (density_oscillation_bound hx)
  constructor <;> linarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridDensity
```
