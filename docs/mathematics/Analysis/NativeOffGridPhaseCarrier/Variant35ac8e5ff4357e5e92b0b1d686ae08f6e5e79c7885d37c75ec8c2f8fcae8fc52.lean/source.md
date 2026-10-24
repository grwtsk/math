# Complete source: GRWTSK.Analysis.NativeOffGridPhaseCarrier.Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab327bb686d5347949705f63e8cea619c078a09c` · SHA-256 `35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridPhase
import FormalResearch.RiemannHypothesis.Conversation.ActualComplexLaplaceFormula
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Literal integer and half-integer phase carrier of the native model

The exact complex source formula is paired with the paper's retained phase.
Integer radii give a negative-real leading carrier and half-integers a
positive-real carrier; the correction square remains explicit. This does
not by itself bound the correction or conclude a sign for the readout.
Human exact-source and coverage direction: grwtsk contributors. Local phase
and complex-algebra consumer: OpenAI Codex. Qualified source artifacts and
Mathlib periodicity retain identity; no arithmetic or RH claim is made.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridPhaseCarrier
open FormalResearch.RiemannHypothesis.SourcePairing
open NativeOffGridDensity NativeOffGridPhase ActualComplexSourceMoment
open ActualComplexLaplacePrimitive ActualComplexLaplaceFormula
noncomputable section

/-- The mode magnitude in this module, with the following exact parameterization.

def modeMagnitude (A : ℝ) : ℝ := 73728 * ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 / (sourceNormalization A
* ‖mode‖ ^ 10) * (Real.exp (A / 2) / A ^ 9)
-/
def modeMagnitude (A : ℝ) : ℝ :=
  73728 * ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 /
    (sourceNormalization A * ‖mode‖ ^ 10) * (Real.exp (A / 2) / A ^ 9)

theorem literal_mode_exponential_factor (A : ℝ) :
    Complex.exp (2 * (A : ℂ) * mode) =
      (Real.exp (A / 2) : ℂ) * Complex.exp ((A : ℂ) * (2 * (Real.pi : ℂ) * Complex.I)) := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  unfold mode
  push_cast
  ring

theorem literal_integer_phase_carrier (n : ℕ) :
    Complex.exp ((n : ℂ) * (2 * (Real.pi : ℂ) * Complex.I)) = 1 := by
  rw [Complex.exp_nat_mul, Complex.exp_two_pi_mul_I, one_pow]

theorem literal_half_integer_phase_carrier (n : ℕ) :
    Complex.exp (((n : ℝ) + 1 / 2 : ℝ) * (2 * (Real.pi : ℂ) * Complex.I)) = -1 := by
  have he : (((n : ℝ) + 1 / 2 : ℝ) : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) =
      (n : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) + (Real.pi : ℂ) * Complex.I := by
    push_cast
    ring
  rw [he, Complex.exp_add, literal_integer_phase_carrier, Complex.exp_pi_mul_I, one_mul]

theorem literal_source_coefficient_norm :
    ‖sourceCoefficient‖ = ‖exponent‖ * ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 / ‖mode‖ ^ 10 := by
  unfold sourceCoefficient
  norm_num [norm_div, norm_mul, norm_pow]

theorem literal_phase_selected_source_formula {A : ℝ} (hA : 1 ≤ A) :
    phase * exponent * complexTestMoment A mode ^ 2 =
      -(modeMagnitude A : ℂ) * Complex.exp ((A : ℂ) * (2 * (Real.pi : ℂ) * Complex.I)) *
        complexEndpointCorrection A mode ^ 2 := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  have hm := norm_pos_iff.mpr mode_ne_zero
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have hwc : (‖exponent‖ : ℂ) ≠ 0 := by exact_mod_cast hw.ne'
  have hmc : (‖mode‖ : ℂ) ≠ 0 := by exact_mod_cast hm.ne'
  rw [complex_actual_source_squared_formula hA mode_ne_zero]
  have he : phase * exponent *
      (147456 * (mode ^ 2 - 1 / 4) ^ 2 / ((A : ℂ) ^ 9 * (sourceNormalization A : ℂ) * mode ^ 10) *
        Complex.exp (2 * (A : ℂ) * mode) * complexEndpointCorrection A mode ^ 2) =
      147456 / ((A : ℂ) ^ 9 * (sourceNormalization A : ℂ)) * (phase * sourceCoefficient) *
        Complex.exp (2 * (A : ℂ) * mode) * complexEndpointCorrection A mode ^ 2 := by
    unfold sourceCoefficient
    push_cast
    field_simp [hAc, hZc, mode_ne_zero]
  rw [he, literal_phase_source_coefficient, literal_source_coefficient_norm,
    literal_mode_exponential_factor]
  unfold modeMagnitude
  push_cast
  field_simp [hAc, hZc, hwc, hmc]
  ring

theorem literal_integer_selected_source_formula (n : ℕ) (hn : 1 ≤ (n : ℝ)) :
    phase * exponent * complexTestMoment (n : ℝ) mode ^ 2 =
      -(modeMagnitude (n : ℝ) : ℂ) * complexEndpointCorrection (n : ℝ) mode ^ 2 := by
  rw [literal_phase_selected_source_formula hn, Complex.ofReal_natCast,
    literal_integer_phase_carrier, mul_one]

theorem literal_half_integer_selected_source_formula (n : ℕ) (hn : 1 ≤ (n : ℝ) + 1 / 2) :
    phase * exponent * complexTestMoment ((n : ℝ) + 1 / 2) mode ^ 2 =
      (modeMagnitude ((n : ℝ) + 1 / 2) : ℂ) *
        complexEndpointCorrection ((n : ℝ) + 1 / 2) mode ^ 2 := by
  rw [literal_phase_selected_source_formula hn, literal_half_integer_phase_carrier,
    mul_neg_one, neg_neg]

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridPhaseCarrier
```
