-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfOverlapUpper.Variant460c9a9dae444d5e7b050b8d8713fed217c2c923475a03a1730931abededa9f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"460c9a9dae444d5e7b050b8d8713fed217c2c923475a03a1730931abededa9f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfOverlapUpper.Variant460c9a9dae444d5e7b050b8d8713fed217c2c923475a03a1730931abededa9f0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"460c9a9dae444d5e7b050b8d8713fed217c2c923475a03a1730931abededa9f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/independent-SourceOverlapResidualDirect-1791346248256207000/SourceOverlapResidualDirect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLowTimeRadius
import SourceResidualBudget

/-!
Directly apply the genuine physical-overlap balance to the source residual and
the original finite prefix. The quotient endpoint is already in the independent
balance; it is not charged again. The full signed balance witness remains open.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfOverlapUpper.Variant460c9a9dae444d5e7b050b8d8713fed217c2c923475a03a1730931abededa9f0

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceOverlapResidualDirect
open SourceRestrictedLowTimeWork SourceLowTimeRadius SourceSamplingLedger SourcePairing
open RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_overlap_upper (D R A C_F : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hbal : remainingOverlapBalance A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + lowTimeStripBudget R + C_F := by
  have ht := actual_surplus_le_remainingOverlap_add_radius hR hRA
  have hr := actual_residual_decomposition A (hR.trans hRA)
  have hf := (abs_le.mp hF).2
  linarith

theorem residual_tail_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + lowTimeStripBudget R + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact residual_upper_of_overlap_upper D R A C_F hR hA
    (hbal A hA) (hF A (hR.trans hA))

theorem all_real_lower_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (D + lowTimeStripBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_overlap_tail D R hR hbal
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail _ R hR hF⟩

theorem estimate_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, _hF0, hF⟩ := residual_tail_of_overlap_tail D R hR hbal
  exact estimate_of_residual_tail_direct _ R hR hF

end
end FormalResearch.RiemannHypothesis.SourceOverlapResidualDirect
