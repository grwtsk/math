-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.EndpointPrimitive.Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.EndpointPrimitive.Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c","mathematical_subject":"Analysis.Integration","original_sha256":"2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/2b/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c--LaplaceEndpointScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic


namespace GRWTSK.Analysis.RealAnalysis.Integration.EndpointPrimitive.Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c

open MeasureTheory

noncomputable section
namespace EndpointScratch

private def endpointPrimitive (z w : ℂ) : ℂ :=
  (w ^ 8 - 4 * w ^ 6 + 6 * w ^ 4 - 4 * w ^ 2 + 1) / z -
    (8 * w ^ 7 - 24 * w ^ 5 + 24 * w ^ 3 - 8 * w) / z ^ 2 +
    (56 * w ^ 6 - 120 * w ^ 4 + 72 * w ^ 2 - 8) / z ^ 3 -
    (336 * w ^ 5 - 480 * w ^ 3 + 144 * w) / z ^ 4 +
    (1680 * w ^ 4 - 1440 * w ^ 2 + 144) / z ^ 5 -
    (6720 * w ^ 3 - 2880 * w) / z ^ 6 +
    (20160 * w ^ 2 - 2880) / z ^ 7 -
    40320 * w / z ^ 8 + 40320 / z ^ 9

set_option maxHeartbeats 800000 in
private theorem endpoint_antiderivative (z : ℂ) (hz : z ≠ 0) (w : ℂ) :
    HasDerivAt (fun w ↦ Complex.exp (z * w) * endpointPrimitive z w)
      ((1 - w ^ 2) ^ 4 * Complex.exp (z * w)) w := by
  have h := hasDerivAt_id w
  have h2 := h.pow 2
  have h3 := h.pow 3
  have h4 := h.pow 4
  have h5 := h.pow 5
  have h6 := h.pow 6
  have h7 := h.pow 7
  have h8 := h.pow 8
  have h0 := (((h8.sub (h6.const_mul 4)).add (h4.const_mul 6)).sub
    (h2.const_mul 4)).add_const 1
  have h1 := (((h7.const_mul 8).sub (h5.const_mul 24)).add
    (h3.const_mul 24)).sub (h.const_mul 8)
  have h2j := (((h6.const_mul 56).sub (h4.const_mul 120)).add
    (h2.const_mul 72)).sub_const 8
  have h3j := ((h5.const_mul 336).sub (h3.const_mul 480)).add (h.const_mul 144)
  have h4j := ((h4.const_mul 1680).sub (h2.const_mul 1440)).add_const 144
  have h5j := (h3.const_mul 6720).sub (h.const_mul 2880)
  have h6j := (h2.const_mul 20160).sub_const 2880
  have hp := ((((((((h0.div_const z).sub (h1.div_const (z ^ 2))).add
    (h2j.div_const (z ^ 3))).sub (h3j.div_const (z ^ 4))).add
    (h4j.div_const (z ^ 5))).sub (h5j.div_const (z ^ 6))).add
    (h6j.div_const (z ^ 7))).sub ((h.const_mul 40320).div_const (z ^ 8))).add_const
    (40320 / z ^ 9)
  have he := (h.const_mul z).cexp
  convert he.mul hp using 1 <;> try rfl
  all_goals
    try funext u
    simp only [id_eq, Pi.pow_apply, Pi.sub_apply, Pi.add_apply]
    norm_num
    field_simp [hz]
    ring


 theorem exponential_bump_integral (z : ℂ) (hz : z ≠ 0) :
    (∫ x in (-1 : ℝ)..1, (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) =
      384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)) := by
  have hd (x : ℝ) := (endpoint_antiderivative z hz (x : ℂ)).comp_ofReal
  have heq (x : ℝ) : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) = (1 - (x : ℂ) ^ 2) ^ 4 := by
    norm_cast
  simp_rw [heq]
  have hi : IntervalIntegrable (fun x : ℝ ↦ (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]

  norm_num [endpointPrimitive]
  field_simp [hz]
  ring

end EndpointScratch
