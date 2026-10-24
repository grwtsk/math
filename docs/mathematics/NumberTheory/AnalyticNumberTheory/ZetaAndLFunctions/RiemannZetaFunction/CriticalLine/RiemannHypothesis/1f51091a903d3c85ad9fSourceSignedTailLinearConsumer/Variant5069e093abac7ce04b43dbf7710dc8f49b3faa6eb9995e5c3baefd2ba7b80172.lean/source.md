# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.1f51091a903d3c85ad9fSourceSignedTailLinearConsumer.Variant5069e093abac7ce04b43dbf7710dc8f49b3faa6eb9995e5c3baefd2ba7b80172

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ce873907ca8b006a4bf1f071f595ed9fbbbf328` · SHA-256 `e884f2682c4c089126d9baebea065fc1d2f0ec6f96592988c6b39ed1fc892a0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedShortAndComplementaryTail.Variant1f51091a903d3c85ad9f6dc54e24d27223e38dfdce67814c6161bdde12fb8d60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f51091a903d3c85ad9f6dc54e24d27223e38dfdce67814c6161bdde12fb8d60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SignedShortAndComplementaryTail.Variant1f51091a903d3c85ad9f6dc54e24d27223e38dfdce67814c6161bdde12fb8d60","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1f51091a903d3c85ad9f6dc54e24d27223e38dfdce67814c6161bdde12fb8d60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1f51091a903d3c85ad9f-SourceSignedTailLinearConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictComplementaryEarlyBudget
import SourceUnconditionalCorrectedCalibration

/-!
Exploit the genuine negative early contribution once more in the original
complete signed source. The remaining short jets and actual complementary tail
are independently specified. A supplied joint arithmetic bound may spend the
proved 5A/128 cancellation. No such all-real witness is constructed here.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedShortAndComplementaryTail.Variant1f51091a903d3c85ad9f6dc54e24d27223e38dfdce67814c6161bdde12fb8d60

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceSignedTailLinearConsumer

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceStrictComplementaryEarlyBudget SourceStrictComplementaryLocalization
open SourceCorrectedOmegaPeanoTaylor SourceUnconditionalCorrectedCalibration
open SourceCompleteCorrectedAbelPairing SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- The full signed short jets and genuine actual complementary tail, before head cancellation. -/
def signedShortAndComplementaryTail (A : ℝ) : ℝ :=
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    correctedFourKappaJet A (Real.log (d : ℝ))) + complementarySignedTail A

/-- Genuine all-real complete source control spends only the proved negative head. -/
theorem complete_pairing_le_signed_short_tail_sub_linear (A : ℝ) (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A ≤ signedShortAndComplementaryTail A - (5 / 128 : ℝ) * A := by
  rw [← correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  have he := literal_L_sub_plain_le_tail_sub_linear hA
  unfold correctedCompleteOmega signedShortAndComplementaryTail
  linarith

/-- Original residual upper comparison retains all real scales and the full source constant. -/
theorem mertensResidual_lt_signed_short_tail_sub_linear_add_zeta
    (A : ℝ) (hA : 25600 ≤ A) :
    mertensResidual A < signedShortAndComplementaryTail A - (5 / 128 : ℝ) * A +
      (riemannZeta (1 / 2)).re + 3 / 50 := by
  have hc := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A (by linarith))).2
  have he := complete_pairing_le_signed_short_tail_sub_linear A hA
  linarith

/-- A genuine joint linear tail budget implies the unchanged original all-real estimate. -/
theorem estimate_of_actual_signed_short_tail_linear_budget {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A →
      signedShortAndComplementaryTail A ≤ K + (5 / 128 : ℝ) * A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K) (by linarith : 117 ≤ R)
  intro A hRA
  have he := complete_pairing_le_signed_short_tail_sub_linear A (hR.trans hRA)
  have hj := hjoint A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceSignedTailLinearConsumer
```
