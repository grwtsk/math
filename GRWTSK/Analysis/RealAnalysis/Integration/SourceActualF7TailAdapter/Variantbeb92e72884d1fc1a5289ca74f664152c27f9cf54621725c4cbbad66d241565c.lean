-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PhysicalXiDensity.Variant538e470f41f79fcd1a3966d9491844c4cea23eb16c74ff5a9a78e381c0f61679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"538e470f41f79fcd1a3966d9491844c4cea23eb16c74ff5a9a78e381c0f61679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PhysicalXiDensity.Variant538e470f41f79fcd1a3966d9491844c4cea23eb16c74ff5a9a78e381c0f61679","mathematical_subject":"Analysis.Integration","original_sha256":"538e470f41f79fcd1a3966d9491844c4cea23eb16c74ff5a9a78e381c0f61679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-f7/adapter/attempt02/SourceActualF7TailAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteXiTailConsumer
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm

/-!
The physical first primitive of the actual shifted closed Chebyshev source.
The exponential change of variables permits a discontinuous arithmetic density.
Integrability is proved separately before absolute-continuity integration by parts.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PhysicalXiDensity.Variant538e470f41f79fcd1a3966d9491844c4cea23eb16c74ff5a9a78e381c0f61679

set_option autoImplicit false
noncomputable section

namespace RH16ActualF7

open MeasureTheory Set
open RH16ActualPsiNegativeBlock RH16ActualXiPositiveBlock RH16CompleteXiTail
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceCorrelationEnergy SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateSourceMobiusDerivative

/-- The literal physical shifted source; every closed prime power is retained. -/
def physicalXiDensity (y : ℝ) : ℝ := shiftedActualChebyshev y / y ^ (3 / 2 : ℝ)

/-- The primitive is centered at seven, including its closed atom convention. -/
def actualF7 (t : ℝ) : ℝ := ∫ y in 7..Real.exp t, physicalXiDensity y

/-- Exact exponential transport of the physical density. -/
def timeXiDensity (t : ℝ) : ℝ :=
  shiftedActualChebyshev (Real.exp t) * Real.exp (-t / 2)

/-- The actual physical minus-sign correlation weight. -/
def minusCorrelationWeight (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

theorem physicalXiDensity_exp_mul (t : ℝ) :
    physicalXiDensity (Real.exp t) * Real.exp t = timeXiDensity t := by
  unfold physicalXiDensity timeXiDensity
  rw [Real.rpow_def_of_pos (Real.exp_pos t), Real.log_exp]
  rw [div_mul_eq_mul_div, mul_div_assoc, ← Real.exp_sub]
  congr 1
  ring

/-- This substitution uses a monotone map, without continuity of the jumping source. -/
theorem actualF7_eq_time_primitive (t : ℝ) :
    actualF7 t = ∫ s in Real.log 7..t, timeXiDensity s := by
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := Real.log 7) (b := t) (f := Real.exp) (f' := Real.exp)
    (g := physicalXiDensity) Real.continuous_exp.continuousOn
    (fun s _ => Real.hasDerivAt_exp s) (fun s _ => (Real.exp_pos s).le)
  simp only [Function.comp_apply, physicalXiDensity_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.symm

theorem actualF7_at_log_seven : actualF7 (Real.log 7) = 0 := by
  simp [actualF7, Real.exp_log (by norm_num : (0 : ℝ) < 7)]

theorem physicalXiDensity_intervalIntegrable (T : ℝ) (hT : Real.log 7 ≤ T) :
    IntervalIntegrable physicalXiDensity volume 7 (Real.exp T) := by
  have hX7 : 7 ≤ Real.exp T := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using
      Real.exp_le_exp.mpr hT
  have hf : ContinuousOn (fun y : ℝ => 1 / y ^ (3 / 2 : ℝ))
      (Icc 2 (Real.exp T)) := by
    intro y hy
    have hyp : 0 < y := by linarith [hy.1]
    exact (continuousAt_const.div
      (continuousAt_id.rpow_const (Or.inl hyp.ne'))
      (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt
  have hi := SourceActualPsiInverseSquare.shiftedActualChebyshev_mul_intervalIntegrable
    (Real.exp T) (by linarith) _ hf
  have hs : uIcc 7 (Real.exp T) ⊆ uIcc 2 (Real.exp T) := by
    rw [uIcc_of_le hX7, uIcc_of_le (by linarith : (2 : ℝ) ≤ Real.exp T)]
    exact Icc_subset_Icc (by norm_num) le_rfl
  change IntervalIntegrable (fun y => shiftedActualChebyshev y / y ^ (3 / 2 : ℝ))
    volume 7 (Real.exp T)
  simpa only [mul_one_div] using hi.mono_set hs

theorem timeXiDensity_intervalIntegrable (T : ℝ) (hT : Real.log 7 ≤ T) :
    IntervalIntegrable timeXiDensity volume (Real.log 7) T := by
  have he := intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (a := Real.log 7) (b := T) (f := Real.exp) (f' := Real.exp)
    (g := physicalXiDensity) Real.continuous_exp.continuousOn
    (fun s _ => Real.hasDerivAt_exp s) (fun s _ => (Real.exp_pos s).le)
  simp only [Function.comp_apply, physicalXiDensity_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.mpr (physicalXiDensity_intervalIntegrable T hT)

/-- The actual primitive is absolutely continuous despite the prime-power jumps. -/
theorem actualF7_absolutelyContinuous (T : ℝ) (hT : Real.log 7 ≤ T) :
    AbsolutelyContinuousOnInterval actualF7 (Real.log 7) T := by
  have he : actualF7 = fun t => ∫ s in Real.log 7..t, timeXiDensity s :=
    funext actualF7_eq_time_primitive
  rw [he]
  have hi := timeXiDensity_intervalIntegrable T hT
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

theorem actualF7_ae_hasDerivAt (T : ℝ) (hT : Real.log 7 ≤ T) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) T → HasDerivAt actualF7 (timeXiDensity t) t := by
  have he : actualF7 = fun t => ∫ s in Real.log 7..t, timeXiDensity s :=
    funext actualF7_eq_time_primitive
  rw [he]
  filter_upwards [(timeXiDensity_intervalIntegrable T hT).ae_hasDerivAt_integral]
    with t ht hm
  exact ht hm (Real.log 7) (by simp)

theorem minusCorrelationWeight_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (minusCorrelationWeight A) := by
  exact (sourceCorrelation_deriv_contDiff hA).sub
    ((sourceCorrelation_contDiff A hA).div_const 2)

theorem minusCorrelationWeight_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (minusCorrelationWeight A)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) t := by
  exact ((sourceCorrelation_deriv_contDiff hA).differentiable
    (by norm_num) t).hasDerivAt.sub
    (((sourceCorrelation_contDiff A hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)

theorem minusCorrelationWeight_at_upper (A : ℝ) (hA : 0 < A) :
    minusCorrelationWeight A (2 * A) = 0 := by
  simp only [minusCorrelationWeight, sourceCorrelation_upper_endpoint A hA,
    sourceCorrelation_deriv_zero_of_two_mul_le A (2 * A) hA le_rfl,
    zero_div, sub_self]

theorem actual_transformed_density_exp_mul (A t : ℝ) :
    actualTransformedXiBlockDensity A (Real.exp t) * Real.exp t =
      timeXiDensity t * minusCorrelationWeight A t := by
  unfold actualTransformedXiBlockDensity minusCorrelationWeight
  rw [Real.log_exp]
  have he := physicalXiDensity_exp_mul t
  unfold physicalXiDensity at he
  calc
    _ = (shiftedActualChebyshev (Real.exp t) /
        (Real.exp t) ^ (3 / 2 : ℝ) * Real.exp t) *
          (deriv (sourceCorrelation explicitSecondDerivative A) t -
            sourceCorrelation explicitSecondDerivative A t / 2) := by ring
    _ = _ := by rw [he]

/-- The complete physical tail is transported exactly, with no omitted atom or endpoint. -/
theorem completeXiTail_eq_time_integral (A : ℝ) :
    completeXiTail A = ∫ t in Real.log 7..2 * A,
      timeXiDensity t * minusCorrelationWeight A t := by
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := Real.log 7) (b := 2 * A) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun s _ => Real.hasDerivAt_exp s) (fun s _ => (Real.exp_pos s).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.symm

/-- Both traces vanish, so the complete tail has exactly zero boundary cost. -/
theorem completeXiTail_eq_neg_F7_integral (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = -(∫ t in Real.log 7..2 * A,
      actualF7 t * (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hp : 0 < A := by linarith
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hF := actualF7_absolutelyContinuous (2 * A) hT
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
      (minusCorrelationWeight_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
  rw [actualF7_at_log_seven, minusCorrelationWeight_at_upper A hp] at hparts
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualF7 t * minusCorrelationWeight A t) =
        ∫ t in Real.log 7..2 * A,
          timeXiDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualF7_ae_hasDerivAt (2 * A) hT] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..2 * A,
      actualF7 t * deriv (minusCorrelationWeight A) t) =
        ∫ t in Real.log 7..2 * A,
          actualF7 t *
            (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
              deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    apply intervalIntegral.integral_congr
    intro t _
    rw [(minusCorrelationWeight_hasDerivAt A t hp).deriv]
  rw [hd] at hparts
  rw [completeXiTail_eq_time_integral]
  linarith only [hparts]

/-- The weighted physical tail is genuinely integrable on the supported domain. -/
theorem completeXiTail_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7 (Real.exp (2 * A)) := by
  have hp : 0 < A := by linarith
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := (timeXiDensity_intervalIntegrable (2 * A) hT).mul_continuousOn
    (minusCorrelationWeight_contDiff A hp).continuous.continuousOn
  have he := intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (a := Real.log 7) (b := 2 * A) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun s _ => Real.hasDerivAt_exp s) (fun s _ => (Real.exp_pos s).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.mp hi

/-- The integrated-by-parts product is also genuinely integrable. -/
theorem actualF7_curvature_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (fun t => actualF7 t *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) := by
  have hp : 0 < A := by linarith
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hc := (minusCorrelationWeight_contDiff A hp).continuous_deriv_one
  have he : deriv (minusCorrelationWeight A) = fun t =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
    funext fun t => (minusCorrelationWeight_hasDerivAt A t hp).deriv
  rw [he] at hc
  exact ((actualF7_absolutelyContinuous (2 * A) hT).continuousOn.mul
    hc.continuousOn).intervalIntegrable

/-- The physical normalization uses the actual derivative energy at scale A. -/
theorem actual_derivative_energy_normalization (A : ℝ) (hA : 0 < A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) =
      SourceDerivativeCoefficientBound.derivativePolynomial ((A ^ 2)⁻¹) /
        SourceDerivativeCoefficientBound.normPolynomial ((A ^ 2)⁻¹) :=
  actual_derivative_energy_eq hA

/-- Both physical-coordinate bounds apply globally, not only on a rescaled head. -/
theorem actual_physical_derivative_bounds (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ∧
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
        162826 / (7623 * A ^ 2) :=
  ⟨sourceCorrelation_deriv_abs_le_five_div hA t,
    sourceCorrelation_second_deriv_abs_le_coefficient hA t⟩

theorem actual_physical_upper_traces (A : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A (2 * A) = 0 ∧
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 :=
  ⟨sourceCorrelation_upper_endpoint A hA,
    sourceCorrelation_deriv_zero_of_two_mul_le A (2 * A) hA le_rfl⟩

end RH16ActualF7
