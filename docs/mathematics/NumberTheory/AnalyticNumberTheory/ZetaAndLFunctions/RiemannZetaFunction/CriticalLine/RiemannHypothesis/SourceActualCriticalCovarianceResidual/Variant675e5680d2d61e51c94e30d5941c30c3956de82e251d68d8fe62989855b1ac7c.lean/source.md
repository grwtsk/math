# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualCriticalCovarianceResidual.Variant675e5680d2d61e51c94e30d5941c30c3956de82e251d68d8fe62989855b1ac7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63edd7b7eb5bfe279df098e4cda5acbcc98c7e80` · SHA-256 `bc606e2699d4e73e50121aa51bf426a54c94ef60f167bc33be1aa6f1c4212bc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSevenCriticalWork.Variant7ec40e1b3db612c071b054ad7f8741d815fbaed75a838d70baa16755864fb8b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ec40e1b3db612c071b054ad7f8741d815fbaed75a838d70baa16755864fb8b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualZeroSevenCriticalWork.Variant7ec40e1b3db612c071b054ad7f8741d815fbaed75a838d70baa16755864fb8b0","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7ec40e1b3db612c071b054ad7f8741d815fbaed75a838d70baa16755864fb8b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T035335Z-1791345215749770000/SourceActualCriticalCovarianceResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalDeltaReturn

/-!
The literal full Mangoldt work returns to the actual covariance with the whole
zero-to-seven source head and the authentic unit gamma trace retained.
Only a genuine signed lower covariance witness yields the unchanged estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSevenCriticalWork.Variant7ec40e1b3db612c071b054ad7f8741d815fbaed75a838d70baa16755864fb8b0

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceResidual
open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceFirstPrimeAbel SourceActualXiErrorConvolution
open SourceActualXiErrorConvolutionKernel SourceActualCriticalCovarianceOrdinarySplit
open ActualCriticalDeltaReturn SourceFiveCancelledFactorialBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateCorrelation
noncomputable section

/-- The independent actual source work on the entire zero-to-seven logarithmic head. -/
def actualZeroSevenCriticalWork (A : ℝ) : ℝ :=
  ∫ t in 0..Real.log 7, actualCenteredMangoldtLogError t * deriv (criticalPrimeTest A) t

/-- A fixed actual elementary budget; no arithmetic cancellation is assumed. -/
def actualZeroSevenCriticalBudget : ℝ :=
  (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
    (1 + 10 * Real.log 7) * Real.sqrt 7

private theorem error_deriv_integrable {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => actualCenteredMangoldtLogError t *
      deriv (criticalPrimeTest A) t) volume l b := by
  exact (mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)).add
      (((criticalPrimeTest_contDiff A hA).continuous_deriv_one.intervalIntegrable l b).const_mul
        Real.eulerMascheroniConstant) |>.congr (fun t _ => by
          unfold actualCenteredMangoldtLogError
          ring)

/-- The literal covariance is one half of the true late Mangoldt derivative work. -/
theorem actualCriticalErrorCovariance_eq_half_derivative_work {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = (1 / 2 : ℝ) *
      ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        deriv (criticalPrimeTest A) t := by
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t _
  unfold actualCriticalErrorDensity
  dsimp only
  rw [criticalPrimeTest_deriv A t (by linarith)]
  ring

/-- Full finite source splitting and FTC retain the independent unit gamma trace. -/
theorem criticalMangoldtWork_eq_actual_covariance_and_full_head {A : ℝ} (hA : 91 ≤ A) :
    criticalMangoldtWork A = 2 * actualCriticalErrorCovariance A +
      actualZeroSevenCriticalWork A + Real.eulerMascheroniConstant := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hF := criticalPrimeTest_contDiff A hp
  have hd : (∫ t in 0..2 * A, deriv (criticalPrimeTest A) t) = -1 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
      (hF.continuous_deriv_one.intervalIntegrable _ _),
      criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A (by linarith)]
    norm_num
  have hiE := criticalMangoldtWork_intervalIntegrable A hp
  have hiγ := (hF.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)).const_mul
    Real.eulerMascheroniConstant
  have hfull : (∫ t in 0..2 * A, actualCenteredMangoldtLogError t *
      deriv (criticalPrimeTest A) t) = criticalMangoldtWork A -
        Real.eulerMascheroniConstant := by
    simp_rw [actualCenteredMangoldtLogError, add_mul]
    rw [intervalIntegral.integral_add hiE hiγ, intervalIntegral.integral_const_mul, hd]
    unfold criticalMangoldtWork
    ring
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (error_deriv_integrable hp ha) (error_deriv_integrable hp hab)
  have hc := actualCriticalErrorCovariance_eq_half_derivative_work hA
  unfold actualZeroSevenCriticalWork
  linarith

/-- The unchanged residual keeps the full head, gamma and the correct signed covariance. -/
theorem mertensResidual_eq_actual_covariance_and_full_head {A : ℝ} (hA : 91 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - 2 * actualCriticalErrorCovariance A -
      actualZeroSevenCriticalWork A - Real.eulerMascheroniConstant := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A (by linarith),
    criticalMangoldtWork_eq_actual_covariance_and_full_head hA]
  ring

/-- The complete fixed early work has a genuine radius-independent absolute budget. -/
theorem actualZeroSevenCriticalWork_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualZeroSevenCriticalWork A| ≤ actualZeroSevenCriticalBudget := by
  let a : ℝ := Real.log 7
  let B : ℝ := Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|
  let k : ℝ := B * (1 / 2 + 5 * a)
  have ha : 0 ≤ a := Real.log_nonneg (by norm_num)
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hp : 0 < A := by linarith
  have hp2 : 1 ≤ A ^ 2 := by nlinarith
  have hpt : ∀ t ∈ Ioc 0 a,
      ‖actualCenteredMangoldtLogError t * deriv (criticalPrimeTest A) t‖ ≤
        k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := ht.1.le
    have hG := actualCenteredMangoldtLogError_abs_le ht0
    have hc := actual_correlation_abs_le_one A t (by linarith)
    have hd := actualCorrelation_first_abs_le_five hA t
    rw [abs_of_nonneg ht0] at hd
    have hD : |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 * a := by
      calc
        _ ≤ 5 / A ^ 2 * t := hd
        _ ≤ 5 * a := by
          rw [div_mul_eq_mul_div]
          apply (div_le_iff₀ (by positivity : 0 < A ^ 2)).2
          nlinarith [mul_nonneg (show 0 ≤ 5 * a by positivity)
            (show 0 ≤ A ^ 2 - 1 by linarith)]
    have hs := abs_add_le (sourceCorrelation explicitSecondDerivative A t / 2)
      (deriv (sourceCorrelation explicitSecondDerivative A) t)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hs
    have hjet : |sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 1 / 2 + 5 * a := by
      linarith
    rw [Real.norm_eq_abs, abs_mul, criticalPrimeTest_deriv A t hp,
      abs_mul, Real.abs_exp]
    calc
      _ ≤ B * (Real.exp (t / 2) * (1 / 2 + 5 * a)) :=
        mul_le_mul hG (mul_le_mul_of_nonneg_left hjet (Real.exp_pos _).le)
          (by positivity) hB
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) ha
    (ae_of_all _ hpt) ((by fun_prop : Continuous
      (fun t : ℝ => k * Real.exp (t / 2))).intervalIntegrable _ _)
  have he : (∫ t in 0..a, Real.exp (t / 2)) ≤ 2 * Real.sqrt 7 := by
    have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
        (Real.exp (t / 2)) t := by
      exact (((hasDerivAt_id t).div_const (2 : ℝ)).exp.const_mul 2).congr_deriv
        (by dsimp; ring)
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)]
    dsimp [a]
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
    norm_num
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hh := hn.trans (mul_le_mul_of_nonneg_left he hk)
  change |actualZeroSevenCriticalWork A| ≤ _ at hh
  calc
    _ ≤ k * (2 * Real.sqrt 7) := hh
    _ = actualZeroSevenCriticalBudget := by
      unfold actualZeroSevenCriticalBudget
      dsimp [k, B, a]
      ring

/-- Same real radius: the genuine covariance lower witness is the original residual upper one. -/
theorem actual_covariance_lower_iff_residual_upper_at_radius (R : ℝ) (hR : 91 ≤ R) :
    (∃ L : ℝ, ∀ A : ℝ, R ≤ A → L ≤ actualCriticalErrorCovariance A) ↔
      (∃ U : ℝ, ∀ A : ℝ, R ≤ A → mertensResidual A ≤ U) := by
  constructor
  · rintro ⟨L, hL⟩
    refine ⟨2 - 2 * L + actualZeroSevenCriticalBudget +
      |Real.eulerMascheroniConstant|, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).2
    have hh := (abs_le.mp (actualZeroSevenCriticalWork_abs_le hA)).1
    have hg := neg_abs_le Real.eulerMascheroniConstant
    rw [mertensResidual_eq_actual_covariance_and_full_head hA]
    linarith [hL A hRA]
  · rintro ⟨U, hU⟩
    refine ⟨(-2 - U - actualZeroSevenCriticalBudget -
      |Real.eulerMascheroniConstant|) / 2, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
    have hh := (abs_le.mp (actualZeroSevenCriticalWork_abs_le hA)).2
    have hg := le_abs_self Real.eulerMascheroniConstant
    have he := mertensResidual_eq_actual_covariance_and_full_head hA
    linarith [hU A hRA]

/-- Only an actual uniform signed covariance lower witness activates the original all-real gate. -/
theorem estimate_of_actual_covariance_lower {L R : ℝ} (hR : 91 ≤ R)
    (hL : ∀ A : ℝ, R ≤ A → L ≤ actualCriticalErrorCovariance A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  obtain ⟨U, hU⟩ := (actual_covariance_lower_iff_residual_upper_at_radius R hR).mp ⟨L, hL⟩
  refine ⟨max 0 U, le_max_left 0 U, R, by linarith, ?_⟩
  intro A hRA
  exact (hU A hRA).trans (le_max_right 0 U)

/-- The genuine delta return carries the exact fixed-seven tail payment into the all-real gate. -/
theorem estimate_of_actual_delta_return_lower {L R : ℝ} (hR : 91 ≤ R)
    (hL : ∀ A : ℝ, R ≤ A → L ≤ actualDeltaCriticalReturn A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_actual_covariance_lower hR
    (L := L - (1 / 2 : ℝ) * Real.sqrt 7 * |actualRelativePsiTail (Real.log 7)|)
  intro A hRA
  have hA := hR.trans hRA
  have hh := (abs_le.mp (actualCriticalDeltaReturn_lower_head_abs_le
    (by linarith : 1 ≤ A))).1
  rw [actualCriticalErrorCovariance_eq_delta_return hA]
  linarith [hL A hRA]

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceResidual
```
