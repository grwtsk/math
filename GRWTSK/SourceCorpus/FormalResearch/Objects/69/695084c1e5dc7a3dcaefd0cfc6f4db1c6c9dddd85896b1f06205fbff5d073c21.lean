import SourceActualEarlyFractionalLimit
import ActualSamplingConstant

/-!
The independently specified fractional head constant equals the original
sampling coefficient with its entire lower unit cell retained. The original
Euler integral identification then gives its exact zeta value.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalZeta

open MeasureTheory Set Filter
open scoped Topology
open SourceSamplingCoefficients SourceActualEarlyFractionalLimit
open SourceStrictComplementaryLocalization
open ContinuousResearch.ActualSamplingConstant

noncomputable section

/-- Exact coefficient identification keeps the full below-one mass of two. -/
theorem earlyFractionalConstant_eq_neg_samplingAlpha0 :
    earlyFractionalConstant = -samplingAlpha0 := by
  have hd : coefficientWeight 0 = earlyFractionalDensity := by
    funext x
    unfold coefficientWeight earlyFractionalDensity
    simp
  unfold earlyFractionalConstant samplingAlpha0
  rw [coefficientWeight_zero_split, hd]
  ring

/-- The original source-backed Euler formula identifies the literal head constant. -/
theorem earlyFractionalConstant_add_zeta_half_eq_zero :
    earlyFractionalConstant + (riemannZeta (1 / 2 : ℂ)).re = 0 := by
  rw [earlyFractionalConstant_eq_neg_samplingAlpha0,
    samplingAlpha0_eq_riemannZeta_half_re]
  ring

/-- Exact zeta head calibration retains the all-real quantitative envelope. -/
theorem actualEarly_add_scale_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A + A + (riemannZeta (1 / 2 : ℂ)).re| ≤
      actualHeadFractionalEnvelope A := by
  have hz := earlyFractionalConstant_add_zeta_half_eq_zero
  have he : complementaryEarlyBaseline A + A + (riemannZeta (1 / 2 : ℂ)).re =
      complementaryEarlyBaseline A + A - earlyFractionalConstant := by linarith only [hz]
  rw [he]
  exact actualEarly_add_scale_sub_fractional_abs_le_envelope hA

/-- Actual early head plus its scale tends to the identified zeta constant. -/
theorem actualEarly_add_scale_tendsto_neg_zeta_half :
    Tendsto (fun A : ℝ => complementaryEarlyBaseline A + A)
      atTop (𝓝 (-(riemannZeta (1 / 2 : ℂ)).re)) := by
  have hz : earlyFractionalConstant = -(riemannZeta (1 / 2 : ℂ)).re := by
    linarith only [earlyFractionalConstant_add_zeta_half_eq_zero]
  rw [← hz]
  exact actualEarly_add_scale_tendsto_fractional

end
end FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalZeta
