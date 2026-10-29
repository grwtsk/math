-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AttenuatedCorrelation.Variant946ed673ecf24703635fd5b55f4e198b482e8237ead0117e087d3b0854b6a35a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"946ed673ecf24703635fd5b55f4e198b482e8237ead0117e087d3b0854b6a35a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AttenuatedCorrelation.Variant946ed673ecf24703635fd5b55f4e198b482e8237ead0117e087d3b0854b6a35a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"946ed673ecf24703635fd5b55f4e198b482e8237ead0117e087d3b0854b6a35a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791313544759281000/SourceTriangularSignObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

/-!
The new actual triangular attenuation retains the source's negative sector.
It therefore does not create a real squared-kernel identification for Lamzouri's
finite counting inequality. This is a method obstruction, not an obstruction
to a compensated arithmetic upper bound or to the unchanged estimate target.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AttenuatedCorrelation.Variant946ed673ecf24703635fd5b55f4e198b482e8237ead0117e087d3b0854b6a35a

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceTriangularSignObstruction

open SourcePairing SourceAdaptiveTriangularConsumer SourceCorrelationSignChange
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def attenuatedCorrelation (A t : ℝ) : ℝ :=
  (1 - |t| / bandwidth A) * sourceCorrelation explicitSecondDerivative A t

theorem attenuation_preserves_negative (A : ℝ) (hA : 1 ≤ A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧ attenuatedCorrelation A t < 0 := by
  obtain ⟨t, ht, htA, hn⟩ :=
    sourceCorrelation_exists_neg_in_half_support (by linarith : 0 < A)
  have hband : 2 * A < bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hratio : t / bandwidth A < 1 :=
    (div_lt_one (bandwidth_pos A hA)).mpr (htA.trans hband)
  refine ⟨t, ht, htA, ?_⟩
  unfold attenuatedCorrelation
  rw [abs_of_pos ht]
  exact mul_neg_of_pos_of_neg (by linarith) hn

theorem no_real_squared_kernel (A : ℝ) (hA : 1 ≤ A) (K : ℝ → ℝ) :
    ¬ ∀ t : ℝ, attenuatedCorrelation A t = K t ^ 2 := by
  intro h
  obtain ⟨t, _, _, ht⟩ := attenuation_preserves_negative A hA
  rw [h t] at ht
  exact (not_lt_of_ge (sq_nonneg (K t))) ht

end FormalResearch.RiemannHypothesis.SourceTriangularSignObstruction
