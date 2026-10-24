# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeOffGridPhase.Variant155cc024d94a1c3d205fa347e4c51e76aa8bff5dccf3d74bdbb9a194756c0714

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a0949e329140a02743d9fc09ba931e964f3ffc` · SHA-256 `155cc024d94a1c3d205fa347e4c51e76aa8bff5dccf3d74bdbb9a194756c0714`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensity

/-!
# Exact negative-real phase of the literal native comparison model

The paper's phase sends its exact source coefficient to a negative real
number. This proves the phase relation and its magnitude, separately from
integer/half-integer source readout estimates. Human source and coverage
direction: grwtsk contributors. Local complex algebra consumer: OpenAI Codex.
The coefficient and its qualified definitions are retained unchanged; no
training exposure, proof novelty or arithmetic counterexample is inferred.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridPhase
open NativeOffGridDensity ComplexConjugate
noncomputable section

theorem literal_phase_norm_exact : ‖phase‖ = 1 / (2 * ‖exponent‖) := by
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  have h := literal_phase_amplitude
  rw [norm_mul] at h
  have h2 : ‖phase‖ * (2 * ‖exponent‖) = 1 := by nlinarith
  calc
    _ = (‖phase‖ * (2 * ‖exponent‖)) / (2 * ‖exponent‖) := by field_simp [hw.ne']
    _ = _ := by rw [h2]

theorem literal_phase_source_coefficient :
    phase * sourceCoefficient = (-(‖sourceCoefficient‖ / (2 * ‖exponent‖)) : ℝ) := by
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  have hB := norm_pos_iff.mpr source_coefficient_ne_zero
  have hwc : (‖exponent‖ : ℂ) ≠ 0 := by exact_mod_cast hw.ne'
  have hBc : (‖sourceCoefficient‖ : ℂ) ≠ 0 := by exact_mod_cast hB.ne'
  unfold phase
  calc
    _ = -(conj sourceCoefficient * sourceCoefficient) /
        ((2 * ‖exponent‖ * ‖sourceCoefficient‖ : ℝ) : ℂ) := by ring
    _ = -((‖sourceCoefficient‖ ^ 2 : ℝ) : ℂ) /
        ((2 * ‖exponent‖ * ‖sourceCoefficient‖ : ℝ) : ℂ) := by
      rw [Complex.conj_mul', Complex.ofReal_pow]
    _ = _ := by
      push_cast
      field_simp [hwc, hBc]

theorem literal_phase_source_coefficient_negative :
    (phase * sourceCoefficient).im = 0 ∧ (phase * sourceCoefficient).re < 0 := by
  rw [literal_phase_source_coefficient]
  simp only [Complex.ofReal_im, Complex.ofReal_re, true_and]
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  exact neg_neg_of_pos (div_pos (norm_pos_iff.mpr source_coefficient_ne_zero) (by positivity))

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridPhase
```
