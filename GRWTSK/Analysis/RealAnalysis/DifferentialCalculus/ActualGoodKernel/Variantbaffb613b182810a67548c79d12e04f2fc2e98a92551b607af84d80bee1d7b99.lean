-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLogSourceContDiff.Variantd6aa3177697f85117a05bf7ba09fc44a275bb9271179bb730f9fcab0ccc62b39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6aa3177697f85117a05bf7ba09fc44a275bb9271179bb730f9fcab0ccc62b39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualLogSourceContDiff.Variantd6aa3177697f85117a05bf7ba09fc44a275bb9271179bb730f9fcab0ccc62b39","mathematical_subject":"Analysis.Calculus","original_sha256":"d6aa3177697f85117a05bf7ba09fc44a275bb9271179bb730f9fcab0ccc62b39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/mellin_hypotheses/ActualGoodKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LogarithmicSource
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-! Actual compact good-kernel hypotheses for #257.
Direction: grwtsk contributors. Focused scratch proof: OpenAI Codex.
No closure, Mellin zero-freeness, source arithmetic budget or RH input is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLogSourceContDiff.Variantd6aa3177697f85117a05bf7ba09fc44a275bb9271179bb730f9fcab0ccc62b39

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualGoodKernel
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.LogarithmicSource

theorem actualLogSource_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLogSource A) := by
  apply contDiff_iff_contDiffAt.mpr
  intro x
  by_cases hx : 0 < x
  · have hl : ContDiffAt ℝ 1 Real.log x := Real.contDiffAt_log.mpr hx.ne'
    have he : ContDiffAt ℝ 1 (fun y : ℝ => Real.exp (-Real.log y / 2)) x := by
      fun_prop
    have hf := (normalizedTest_contDiff A hA).contDiffAt.comp x hl
    apply (he.mul hf).congr_of_eventuallyEq
    filter_upwards [Ioi_mem_nhds hx] with y hy
    change 0 < y at hy
    simp only [actualLogSource,positiveLogLift,if_pos hy,Function.comp_apply]
  · have hx' : x < Real.exp (-A) := lt_of_le_of_lt (le_of_not_gt hx) (Real.exp_pos _)
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [Iio_mem_nhds hx'] with y hy
    exact actualLogSource_zero_outside hA (Or.inl hy.le)

theorem actualLogSource_tendsto_zero {A : ℝ} (hA : 0 < A) :
    Tendsto (actualLogSource A) atTop (𝓝 0) := by
  have he : actualLogSource A =ᶠ[atTop] (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_ge_atTop (Real.exp A)] with x hx
    exact actualLogSource_zero_outside hA (Or.inr hx)
  exact tendsto_const_nhds.congr' he.symm

theorem actualLogSource_deriv_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (deriv (actualLogSource A)) :=
  (actualLogSource_hasCompactSupport hA).deriv

theorem actualLogSource_integrable_global {A : ℝ} (hA : 0 < A) :
    Integrable (actualLogSource A) :=
  (actualLogSource_contDiff hA).continuous.integrable_of_hasCompactSupport
    (actualLogSource_hasCompactSupport hA)

theorem actualLogSource_weighted_derivative_integrable_global {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ => x * |deriv (actualLogSource A) x|) := by
  have hc : Continuous (fun x : ℝ => x * |deriv (actualLogSource A) x|) :=
    continuous_id.mul (actualLogSource_contDiff hA).continuous_deriv_one.abs
  exact hc.integrable_of_hasCompactSupport
    (actualLogSource_deriv_hasCompactSupport hA).abs.mul_left

theorem actualLogSource_weighted_derivative_integrable {A : ℝ} (hA : 0 < A) :
    IntegrableOn (fun x : ℝ => x * |deriv (actualLogSource A) x|) (Ioi 0) :=
  (actualLogSource_weighted_derivative_integrable_global hA).integrableOn

theorem actual_good_kernel_hypotheses {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLogSource A) ∧ HasCompactSupport (actualLogSource A) ∧
    IntegrableOn (actualLogSource A) (Ioi 0) ∧
    IntegrableOn (fun x : ℝ => x * |deriv (actualLogSource A) x|) (Ioi 0) :=
  ⟨actualLogSource_contDiff hA,actualLogSource_hasCompactSupport hA,
    (actualLogSource_integrable_global hA).integrableOn,
    actualLogSource_weighted_derivative_integrable hA⟩

end ContinuousResearch.ActualGoodKernel

#check ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff
#print ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff

#check ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero
#print ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero

#check ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport
#print ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport

#check ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global
#print ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global

#check ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global
#print ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global

#check ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable
#print ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable

#check ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
#print axioms ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
#print ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
