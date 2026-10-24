-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePlainWeightExistsNegInRealSupport.Variant200426c857468f22951638f663b6c10cbcc4f32f710b08281bac2fe4458b5d28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"200426c857468f22951638f663b6c10cbcc4f32f710b08281bac2fe4458b5d28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePlainWeightExistsNegInRealSupport.Variant200426c857468f22951638f663b6c10cbcc4f32f710b08281bac2fe4458b5d28","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"200426c857468f22951638f663b6c10cbcc4f32f710b08281bac2fe4458b5d28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/source-readbacks/owner-ignored-latest-20261007T154040Z/preserved/scratch/confluence/cycle29/mutation-issue-regent-v1/actual-correlation-sign-investigation-v1/SourceActualPlainWeightSignGuard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel

/-!
# A negative real sample of the unchanged plain source weight

The existing actual correlation sign theorem supplies a real separation inside
its literal support. Exponentiation gives a real multiplicative argument for
`sourcePlainWeight`; no natural-number, prime, or arithmetic covariance witness
is obtained. The polynomial source, fixed normalization, and pole identities
remain unchanged. This does not bound the independent residual or imply RH.

Research direction and selection: grwtsk contributors.
Formal construction: OpenAI Codex; independent review is a separate gate.
This source-only preparation is uncompiled and has no new kernel credit.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePlainWeightExistsNegInRealSupport.Variant200426c857468f22951638f663b6c10cbcc4f32f710b08281bac2fe4458b5d28

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePlainKernel SourceCorrelationSignChange

/-- The actual plain weight is negative at some real point inside its positive support. -/
theorem sourcePlainWeight_exists_neg_in_real_support (A : ℝ) (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ x < Real.exp (2 * A) ∧ sourcePlainWeight A x < 0 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  obtain ⟨t, ht, htA, hneg⟩ := sourceCorrelation_exists_neg_in_half_support hpos
  refine ⟨Real.exp t, Real.one_lt_exp_iff.mpr ht, Real.exp_lt_exp.mpr htA, ?_⟩
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hneg (Real.sqrt_pos.mpr (Real.exp_pos t))

end FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard
