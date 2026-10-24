-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualRemainderTendstoIntegral.Variant7c85f05dd989a44ca67b371c2ffbe423b03509ffc088b48d5cf0947482800bed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c85f05dd989a44ca67b371c2ffbe423b03509ffc088b48d5cf0947482800bed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualRemainderTendstoIntegral.Variant7c85f05dd989a44ca67b371c2ffbe423b03509ffc088b48d5cf0947482800bed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7c85f05dd989a44ca67b371c2ffbe423b03509ffc088b48d5cf0947482800bed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/arithmetic_assembly/peer-ActualCentering-candidate/ActualCentering-attemptpeer01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FinalValue
import ActualChebyshevAbel
import ActualArithmeticIntercept

/-! Actual Euler centering from the genuine finite Abel dictionary, unconditionally
proved Chebyshev L1, and the independent finite Laplace coefficient.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
No centered-remainder L1 premise, numeric Ramaré instance, RH assumption,
or signed source witness is introduced. -/

namespace GRWTSK.Topology.GeneralTopology.ActualRemainderTendstoIntegral.Variant7c85f05dd989a44ca67b371c2ffbe423b03509ffc088b48d5cf0947482800bed

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCentering
open MeasureTheory Set Filter
open scoped Topology Interval
open ContinuousResearch.FinalValue ContinuousResearch.ActualChebyshevAbel
open ContinuousResearch.MediumPNTLogError ContinuousResearch.MediumPNTMoment
open ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.MangoldtLaplaceIntegrability
open ContinuousResearch.ActualArithmeticIntercept

theorem actual_remainder_tendsto_integral :
    Tendsto actualRemainder atTop
      (𝓝 ((∫ u in Ioi (0 : ℝ), psiRelativeError u) + 1 +
        Real.eulerMascheroniConstant)) := by
  have he : Tendsto psiRelativeError atTop (𝓝 (0 : ℝ)) := by
    simpa only [pow_zero, one_mul] using psiRelativeError_mul_pow_tendsto_zero 0
  have hp := intervalIntegral_tendsto_integral_Ioi (0 : ℝ)
    psiRelativeError_integrable (tendsto_id : Tendsto (fun t : ℝ => t) atTop atTop)
  have h := ((he.add hp).add_const 1).add_const Real.eulerMascheroniConstant
  simp only [zero_add] at h
  apply h.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
  exact (mangoldtLogError_centered_eq_interval ht).symm

theorem actual_scaled_laplace_tendsto_zero :
    Tendsto (fun s : ℝ => s * actualLaplace s) (𝓝[>] (0 : ℝ)) (𝓝 (0 : ℝ)) := by
  have hs : Tendsto (fun s : ℝ => s) (𝓝[>] (0 : ℝ)) (𝓝 (0 : ℝ)) :=
    tendsto_id.mono_left nhdsWithin_le_nhds
  simpa only [zero_mul] using hs.mul actual_laplace_tendsto_coefficient

theorem actual_euler_centering :
    (∫ u in Ioi (0 : ℝ), psiRelativeError u) = -1 - Real.eulerMascheroniConstant := by
  have hm : Measurable actualRemainder := centeredMangoldtError_measurable
  have hb : ∀ t : ℝ, 0 ≤ t → |actualRemainder t| ≤
      Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant| := by
    intro t ht
    exact centeredMangoldtError_bound ht
  have hf := bounded_final_value hm hb actual_remainder_tendsto_integral
  have hz : (∫ u in Ioi (0 : ℝ), psiRelativeError u) + 1 +
      Real.eulerMascheroniConstant = 0 :=
    tendsto_nhds_unique hf actual_scaled_laplace_tendsto_zero
  linarith

theorem actual_remainder_tendsto_zero : Tendsto actualRemainder atTop (𝓝 (0 : ℝ)) := by
  have he : -1 - Real.eulerMascheroniConstant + 1 + Real.eulerMascheroniConstant = (0:ℝ) := by ring
  simpa only [actual_euler_centering, he] using actual_remainder_tendsto_integral

theorem actual_remainder_eq_tail {t : ℝ} (ht : 0 ≤ t) :
    actualRemainder t = psiRelativeError t - (∫ u in Ioi t, psiRelativeError u) := by
  have ha := mangoldtLogError_centered_eq_interval ht
  have hi := intervalIntegral.integral_interval_add_Ioi psiRelativeError_integrable
    (psiRelativeError_integrable.mono_set (Ioi_subset_Ioi ht))
  rw [actual_euler_centering] at hi
  change actualRemainder t = _ at ha
  linarith

end ContinuousResearch.ActualCentering

set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#print ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#print axioms ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#check ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#print ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#print axioms ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#check ContinuousResearch.ActualCentering.actual_euler_centering
#print ContinuousResearch.ActualCentering.actual_euler_centering
#print axioms ContinuousResearch.ActualCentering.actual_euler_centering
#check ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#print ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#print axioms ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#check ContinuousResearch.ActualCentering.actual_remainder_eq_tail
#print ContinuousResearch.ActualCentering.actual_remainder_eq_tail
#print axioms ContinuousResearch.ActualCentering.actual_remainder_eq_tail
