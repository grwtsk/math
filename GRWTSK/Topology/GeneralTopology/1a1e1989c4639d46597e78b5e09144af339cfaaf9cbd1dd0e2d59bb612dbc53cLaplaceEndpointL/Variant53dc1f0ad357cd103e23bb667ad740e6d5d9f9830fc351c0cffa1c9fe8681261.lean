-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EndpointProfile.Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EndpointProfile.Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/1a/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c--LaplaceEndpointLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic


namespace GRWTSK.Topology.GeneralTopology.EndpointProfile.Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c

open Filter
noncomputable section
namespace EndpointLimit

private def endpointProfile (w : ℂ) : ℂ := 1 - 10 * w + 45 * w ^ 2 - 105 * w ^ 3 + 105 * w ^ 4

private theorem endpoint_profile_continuous : Continuous endpointProfile := by
  unfold endpointProfile
  fun_prop

 theorem reciprocal_ray_tendsto_zero (z : ℂ) :
    Tendsto (fun A : ℝ ↦ ((A : ℂ) * z)⁻¹) atTop (nhds 0) := by
  have hr : Tendsto (fun A : ℝ ↦ ((A : ℂ)⁻¹)) atTop (nhds 0) := by
    simpa using Complex.continuous_ofReal.continuousAt.tendsto.comp
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  simpa only [mul_inv_rev, mul_zero] using hr.const_mul z⁻¹

 theorem negative_ray_exp_tendsto_zero (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ Complex.exp (-2 * (A : ℂ) * z)) atTop (nhds 0) := by
  apply Complex.tendsto_exp_nhds_zero_iff.mpr
  have ht : Tendsto (fun A : ℝ ↦ (2 * z.re) * A) atTop atTop :=
    (tendsto_id : Tendsto (fun A : ℝ ↦ A) atTop atTop).const_mul_atTop (by positivity)
  convert ht.neg_atTop using 1
  ext A
  simp [Complex.mul_re]
  ring

 theorem profile_endpoint_tendsto_one (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ endpointProfile (((A : ℂ) * z)⁻¹) -
      Complex.exp (-2 * (A : ℂ) * z) * endpointProfile (-((A : ℂ) * z)⁻¹))
      atTop (nhds 1) := by
  have h1 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z)
  have h2 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z).neg
  simpa [endpointProfile] using h1.sub ((negative_ray_exp_tendsto_zero z hz).mul h2)

end EndpointLimit
