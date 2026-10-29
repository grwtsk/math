-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveDensity.Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PrimitiveDensity.Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda","mathematical_subject":"Analysis.Calculus","original_sha256":"ab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/ab260f16213363400452-ActualCriticalPrimitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.NumberTheory.Harmonic.EulerMascheroni

/-!
Ignored research for #321. The primitive is defined directly from actual
Mangoldt coefficients. Its M bound remains an explicit, unproved hypothesis.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveDensity.Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceMangoldtAbel SourceFirstPrimeAbel
open SourceCorrelationEnergy SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual

noncomputable section

def primitiveDensity (t : ℝ) : ℝ :=
  Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant)

/-- Independent arithmetic primitive; not the compact source primitive. -/
def criticalPrimitive (t : ℝ) : ℝ := ∫ s in 0..t, primitiveDensity s

def criticalKernel (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t +
    sourceCorrelation explicitSecondDerivative A t / 2

theorem primitiveDensity_intervalIntegrable (T : ℝ) (hT : 0 ≤ T) :
    IntervalIntegrable primitiveDensity volume 0 T := by
  have hexp : ContDiff ℝ 1 (fun t : ℝ ↦ 2 * Real.exp (t / 2)) := by fun_prop
  have hd (t : ℝ) : deriv (fun t : ℝ ↦ 2 * Real.exp (t / 2)) t = Real.exp (t / 2) := by
    have h : HasDerivAt (fun t : ℝ ↦ 2 * Real.exp (t / 2)) (Real.exp (t / 2)) t := by
      exact (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv (by
      simp only [id_eq]
      ring)
    exact h.deriv
  have he := mangoldtLogError_mul_deriv_intervalIntegrable 0 T hT _ hexp
  simp_rw [hd] at he
  have hc : IntervalIntegrable (fun t : ℝ ↦
      Real.eulerMascheroniConstant * Real.exp (t / 2)) volume 0 T :=
    (show Continuous (fun t : ℝ ↦
    Real.eulerMascheroniConstant * Real.exp (t / 2)) by fun_prop).intervalIntegrable 0 T
  convert he.add hc using 1
  ext t
  simp only [primitiveDensity]
  ring

theorem criticalPrimitive_zero : criticalPrimitive 0 = 0 := by
  simp [criticalPrimitive]

theorem criticalPrimitive_absolutelyContinuous (T : ℝ) (hT : 0 ≤ T) :
    AbsolutelyContinuousOnInterval criticalPrimitive 0 T :=
  (primitiveDensity_intervalIntegrable T hT).absolutelyContinuousOnInterval_intervalIntegral
    (by simp)

theorem criticalPrimitive_ae_hasDerivAt (T : ℝ) (hT : 0 ≤ T) :
    ∀ᵐ t : ℝ, t ∈ uIcc 0 T → HasDerivAt criticalPrimitive (primitiveDensity t) t := by
  filter_upwards [(primitiveDensity_intervalIntegrable T hT).ae_hasDerivAt_integral]
    with t ht hmem
  exact ht hmem 0 (by simp)

theorem criticalKernel_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (criticalKernel A) :=
  (sourceCorrelation_deriv_contDiff hA).add ((sourceCorrelation_contDiff A hA).div_const 2)

theorem criticalKernel_at_upper (A : ℝ) (hA : 1 ≤ A) :
    criticalKernel A (2 * A) = 0 := by
  have hc : sourceCorrelation explicitSecondDerivative A (2 * A) = 0 :=
    sourceCorrelation_upper_endpoint A (by linarith)
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 :=
    EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le A (2 * A)
      (by linarith) le_rfl
  simp [criticalKernel, hc, hd]

/-- Integration by parts uses the actual primitive's AE derivative, so no
false differentiability assertion is made at Mangoldt jumps. -/
theorem actual_signed_primitive_parts (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, (mangoldtLogError t + Real.eulerMascheroniConstant) *
      deriv (criticalPrimeTest A) t) =
      -(∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t) := by
  have hp : 0 < A := by linarith
  have hF := criticalPrimitive_absolutelyContinuous (2 * A) (by linarith)
  have hk := (criticalKernel_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
    (a := 0) (b := 2 * A)
  have hibp := hF.integral_mul_deriv_eq_deriv_mul hk
  rw [criticalPrimitive_zero, criticalKernel_at_upper A hA] at hibp
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hibp
  have hi : (∫ t in 0..2 * A, deriv criticalPrimitive t * criticalKernel A t) =
      ∫ t in 0..2 * A, primitiveDensity t * criticalKernel A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt (2 * A) (by linarith)] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [hi] at hibp
  have he : (∫ t in 0..2 * A, (mangoldtLogError t + Real.eulerMascheroniConstant) *
      deriv (criticalPrimeTest A) t) =
      ∫ t in 0..2 * A, primitiveDensity t * criticalKernel A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [criticalPrimeTest_deriv A t hp]
    unfold primitiveDensity criticalKernel
    ring
  rw [he]
  linarith

theorem criticalTest_deriv_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, deriv (criticalPrimeTest A) t) = -1 := by
  rw [intervalIntegral.integral_deriv_eq_sub]
  · rw [criticalPrimeTest_at_upper A (by linarith), criticalPrimeTest_at_zero A hA]
    norm_num
  · intro t _
    exact (criticalPrimeTest_contDiff A (by linarith)).differentiable (by norm_num) t
  · exact (criticalPrimeTest_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable _ _

/-- Gamma has its literal sign, fixed by the source's 1-to-0 endpoints. -/
theorem actual_residual_primitive_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - Real.eulerMascheroniConstant +
      ∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t := by
  have he := actual_signed_primitive_parts A hA
  have hd := criticalTest_deriv_integral A hA
  have hi := criticalMangoldtWork_intervalIntegrable A (by linarith)
  have hg : IntervalIntegrable (fun t => Real.eulerMascheroniConstant *
      deriv (criticalPrimeTest A) t) volume 0 (2 * A) :=
    ((criticalPrimeTest_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable
      0 (2 * A)).const_mul Real.eulerMascheroniConstant
  simp_rw [add_mul] at he
  rw [intervalIntegral.integral_add hi hg, intervalIntegral.integral_const_mul, hd] at he
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  unfold criticalMangoldtWork at *
  linarith

theorem criticalKernel_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (criticalKernel A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by
  exact (((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt.add
    (((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
      t).hasDerivAt.div_const 2)).deriv

theorem source_first_derivative_coarse_bound (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ Real.sqrt (65 / 3 : ℝ) / A := by
  apply (sourceCorrelation_deriv_abs_le_coefficient hA t).trans
  exact div_le_div_of_nonneg_right (Real.sqrt_le_sqrt (by norm_num)) (by linarith)

theorem source_second_derivative_coarse_bound (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 65 / (3 * A ^ 2) := by
  apply (sourceCorrelation_second_deriv_abs_le_coefficient hA t).trans
  have hp : 0 < A ^ 2 := sq_pos_of_pos (by linarith)
  apply (div_le_div_iff₀ (by positivity) (by positivity)).2
  nlinarith

theorem criticalKernel_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (criticalKernel A) t| ≤
      65 / (3 * A ^ 2) + Real.sqrt (65 / 3 : ℝ) / (2 * A) := by
  rw [criticalKernel_deriv A t (by linarith)]
  apply (abs_add_le _ _).trans
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  have h1 := source_first_derivative_coarse_bound A t hA
  have h2 := source_second_derivative_coarse_bound A t hA
  have hh := div_le_div_of_nonneg_right h1 (by norm_num : (0 : ℝ) ≤ 2)
  calc
    _ ≤ 65 / (3 * A ^ 2) + (Real.sqrt (65 / 3 : ℝ) / A) / 2 := add_le_add h2 hh
    _ = _ := by ring

theorem criticalKernel_deriv_L1_bound (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, |deriv (criticalKernel A) t|) ≤
      130 / (3 * A) + Real.sqrt (65 / 3 : ℝ) := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (fun t => |deriv (criticalKernel A) t|) volume 0 (2 * A) :=
    ((criticalKernel_contDiff A hp).continuous_deriv_one.abs).intervalIntegrable _ _
  have hbound := intervalIntegral.integral_mono_on (by linarith : (0 : ℝ) ≤ 2 * A) hi
    (intervalIntegrable_const (μ := volume))
    (fun t _ => criticalKernel_deriv_abs_le A t hA)
  rw [intervalIntegral.integral_const] at hbound
  simp only [sub_zero, smul_eq_mul] at hbound
  convert hbound using 1
  field_simp
  ring

/-- Existence of the signed primitive work is established independently of M. -/
theorem primitive_work_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => criticalPrimitive t * deriv (criticalKernel A) t)
      volume 0 (2 * A) := by
  exact ((criticalKernel_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable
    _ _).continuousOn_mul
    (criticalPrimitive_absolutelyContinuous (2 * A) (by linarith)).continuousOn

/-- This is an implication from the independently supplied actual primitive
bound, not a construction of that bound. -/
theorem actual_primitive_work_bound (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t| ≤
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  have hp : 0 < A := by linarith
  have hpoint (t : ℝ) (ht : t ∈ Ι (0 : ℝ) (2 * A)) :
      ‖criticalPrimitive t * deriv (criticalKernel A) t‖ ≤
        M * (65 / (3 * A ^ 2) + Real.sqrt (65 / 3 : ℝ) / (2 * A)) := by
    rw [Real.norm_eq_abs, abs_mul]
    have ht0 : 0 ≤ t := ((uIoc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)) ▸ ht).1.le
    exact mul_le_mul (hF t ht0) (criticalKernel_deriv_abs_le A t hA) (abs_nonneg _) hM
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simp only [Real.norm_eq_abs, sub_zero, abs_of_pos (by positivity : 0 < 2 * A)] at hb
  convert hb using 1
  field_simp
  ring

theorem actual_residual_upper_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A ≤ 2 - Real.eulerMascheroniConstant +
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  rw [actual_residual_primitive_reconstruction A hA]
  have hw := (abs_le.mp (actual_primitive_work_bound M hM hF A hA)).2
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  linarith

/-- The exact source residual budget outputs the requested explicit gap
constant whenever the independently named correction has its lower bound. -/
theorem actual_gap_upper_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) (G a0 : ℝ) (hG : a0 ≤ G) :
    2 * mertensResidual A - G ≤
      4 - 2 * Real.eulerMascheroniConstant - a0 +
        2 * M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) := by
  have hr := actual_residual_upper_of_primitive_budget M hM hF A hA
  have hrat : 130 / (3 * A) ≤ (130 / 3 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 3 * A)).2
    nlinarith
  have hb := mul_le_mul_of_nonneg_left (add_le_add_right hrat (Real.sqrt (65 / 3 : ℝ))) hM
  linarith

theorem actual_residual_tail_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M) :
    MertensResidualTailUpperBound := by
  refine ⟨2 - Real.eulerMascheroniConstant +
      M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)), ?_, 1, le_rfl, ?_⟩
  · have hgamma := Real.eulerMascheroniConstant_lt_two_thirds
    have hmprod : 0 ≤ M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) := by positivity
    linarith
  · intro A hA
    have hr := actual_residual_upper_of_primitive_budget M hM hF A hA
    have hrat : 130 / (3 * A) ≤ (130 / 3 : ℝ) := by
      apply (div_le_iff₀ (by positivity : 0 < 3 * A)).2
      nlinarith
    have hb := mul_le_mul_of_nonneg_left (add_le_add_right hrat (Real.sqrt (65 / 3 : ℝ))) hM
    linarith

/-- The existing all-scale estimate consumer is reused. Its actual primitive
budget remains an antecedent; no arithmetic witness is established here. -/
theorem actual_uniform_estimate_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (actual_residual_tail_of_primitive_budget M hM hF)

end
end FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive

