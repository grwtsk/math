import FormalResearch.RiemannHypothesis.SourceConservativeComparison
import Mathlib.Analysis.Calculus.ParametricIntegral

/-!
# Centered smoothing of the unchanged source correlation

Research direction and high-priority emphasis: grwtsk contributors.
Selection of these lemmas and formal construction: OpenAI Codex, 7 October 2026.
This candidate pays analytic smoothing errors. It supplies no signed arithmetic cap.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCenteredSmoothing

open MeasureTheory SourcePairing SourceCorrelationCurvatureFive SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

variable (μ : Measure ℝ) [IsProbabilityMeasure μ]

/-- The source correlation averaged over the literal displacement measure. -/
def smoothedCorrelation (A t : ℝ) : ℝ :=
  ∫ y, sourceCorrelation explicitSecondDerivative A (t + y) ∂μ

/-- The complete derivative channel is averaged over the same displacement measure. -/
def smoothedSlope (A t : ℝ) : ℝ :=
  ∫ y, deriv (sourceCorrelation explicitSecondDerivative A) (t + y) ∂μ

theorem shiftedCorrelation_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (fun y => sourceCorrelation explicitSecondDerivative A (t + y)) μ := by
  apply (integrable_const (1 : ℝ)).mono'
  · exact ((sourceCorrelation_contDiff A (by linarith)).continuous.comp
      (continuous_const.add continuous_id)).aestronglyMeasurable
  · exact ae_of_all _ (fun y => by
      simpa only [Real.norm_eq_abs] using actual_correlation_abs_le_one A (t + y) hA)

theorem shiftedSlope_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (fun y => deriv (sourceCorrelation explicitSecondDerivative A) (t + y)) μ := by
  apply (integrable_const (5 / A : ℝ)).mono'
  · exact ((sourceCorrelation_contDiff A (by linarith)).continuous_deriv_one.comp
      (continuous_const.add continuous_id)).aestronglyMeasurable
  · exact ae_of_all _ (fun y => by
      simpa only [Real.norm_eq_abs] using sourceCorrelation_deriv_abs_le_five_div hA (t + y))

/-- A centered finite second moment pays the value error without discarding the linear term. -/
theorem smoothedCorrelation_error {A : ℝ} (hA : 200 ≤ A) (t : ℝ)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |sourceCorrelation explicitSecondDerivative A t - smoothedCorrelation μ A t| ≤
      (5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h1 : 1 ≤ A := by linarith
  have hc : Integrable (fun y : ℝ => C (t + y)) μ :=
    shiftedCorrelation_integrable μ h1 t
  have hk : Integrable (fun _ : ℝ => C t) μ := integrable_const _
  have hl : Integrable (fun y : ℝ => y * deriv C t) μ := hy.mul_const _
  have hr : Integrable (fun y : ℝ => C (t + y) - C t - y * deriv C t) μ :=
    (hc.sub hk).sub hl
  have he : (∫ y : ℝ, C (t + y) - C t - y * deriv C t ∂μ) =
      smoothedCorrelation μ A t - C t := by
    have hs := integral_sub (hc.sub hk) hl
    change (∫ y : ℝ, C (t + y) - C t - y * deriv C t ∂μ) =
      (∫ y : ℝ, C (t + y) - C t ∂μ) - (∫ y : ℝ, y * deriv C t ∂μ) at hs
    rw [hs, integral_sub hc hk, integral_const, probReal_univ, one_smul,
      integral_mul_const, hmean, zero_mul, sub_zero]
    rfl
  rw [abs_sub_comm, ← he]
  calc
    _ ≤ ∫ y : ℝ, |C (t + y) - C t - y * deriv C t| ∂μ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm (μ := μ)
        (fun y : ℝ => C (t + y) - C t - y * deriv C t)
    _ ≤ ∫ y : ℝ, (5 / (2 * A ^ 2)) * y ^ 2 ∂μ := by
      apply integral_mono hr.abs (hy2.const_mul _)
      intro y
      exact (sourceCorrelation_linear_taylor_bound_five hA t y).trans_eq (by ring)
    _ = _ := integral_const_mul _ _

/-- The derivative channel pays its full absolute first displacement moment. -/
theorem smoothedSlope_error {A : ℝ} (hA : 200 ≤ A) (t : ℝ)
    (hy : Integrable (fun y : ℝ => |y|) μ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t - smoothedSlope μ A t| ≤
      (5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h1 : 1 ≤ A := by linarith
  have hc : Integrable (fun y : ℝ => deriv C (t + y)) μ :=
    shiftedSlope_integrable μ h1 t
  have hk : Integrable (fun _ : ℝ => deriv C t) μ := integrable_const _
  have hr : Integrable (fun y : ℝ => deriv C (t + y) - deriv C t) μ :=
    hc.sub hk
  have he : (∫ y : ℝ, deriv C (t + y) - deriv C t ∂μ) =
      smoothedSlope μ A t - deriv C t := by
    have hs := integral_sub hc hk
    change (∫ y : ℝ, deriv C (t + y) - deriv C t ∂μ) =
      (∫ y : ℝ, deriv C (t + y) ∂μ) - (∫ _y : ℝ, deriv C t ∂μ) at hs
    rw [hs, integral_const, probReal_univ, one_smul]
    rfl
  rw [abs_sub_comm, ← he]
  calc
    _ ≤ ∫ y : ℝ, |deriv C (t + y) - deriv C t| ∂μ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm (μ := μ)
        (fun y : ℝ => deriv C (t + y) - deriv C t)
    _ ≤ ∫ y : ℝ, (5 / A ^ 2) * |y| ∂μ := by
      apply integral_mono hr.abs (hy.const_mul _)
      intro y
      exact sourceCorrelation_deriv_increment_bound_five hA t y
    _ = _ := integral_const_mul _ _

/-- The next finite shell consumer has both smoothing hypotheses discharged.
Its signed coefficient masses and logarithmic tangent drift remain explicit. -/
theorem finite_tangent_smoothed_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |SourceKapitzaSquareShell.finiteCompensatedReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (smoothedCorrelation μ A (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            smoothedSlope μ A (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      SourceKapitzaSquareShell.tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ)) *
          (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
        ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ)) *
          ∑ n ∈ Finset.Icc 2 N,
            |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
              |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  have hs := SourceConservativeComparison.finite_tangent_comparison_abs_le A N
    (smoothedCorrelation μ A) (smoothedSlope μ A)
    ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ))
    ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ))
    (fun _ _ => smoothedCorrelation_error μ hA _ hy hmean hy2)
    (fun _ _ => smoothedSlope_error μ hA _ hy.abs)
  exact (abs_sub_le _ (SourceKapitzaSquareShell.tangentReadout A N) _).trans
    ((add_le_add (SourceKapitzaSquareShell.finite_tangent_error hA N) hs).trans_eq (by ring))


end FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
