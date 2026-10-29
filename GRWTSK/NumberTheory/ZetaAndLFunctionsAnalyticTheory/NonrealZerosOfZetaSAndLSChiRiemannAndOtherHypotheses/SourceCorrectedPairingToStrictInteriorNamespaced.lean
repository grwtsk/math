-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictColumnInteriorUpperOfCompletePairingCalibration.Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictColumnInteriorUpperOfCompletePairingCalibration.Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/new-root-sources/SourceCorrectedPairingToStrictInterior.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictEnergyConsumer
import SourceUnconditionalCorrectedCalibration

/-!
Consume the source-exact corrected-pairing calibration back into the unchanged
strict-column frontier. Both endpoint and ledger costs stay independent of A.
This supplies a conditional route transfer, not an arithmetic upper witness.
AI attribution: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictColumnInteriorUpperOfCompletePairingCalibration.Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCorrectedPairingToStrictInterior

open SourceStrictEnergyConsumer SourceStrictColumnInterior SourceSamplingLedger
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

noncomputable section

/-- The corrected full pairing reaches the original frontier with explicit fixed losses. -/
theorem strictColumnInterior_upper_of_complete_pairing_calibration
    (A C_F : ℝ) (hA : 117 ≤ A)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    strictColumnInterior A ≤ completeCorrectedAbelPairing A +
      (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + 12 + C_F := by
  have hA1 : 1 ≤ A := by linarith
  have hc := residual_sub_complete_pairing_sub_zeta_abs_lt A hA
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA1
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hr := actual_residual_decomposition A hA1
  have hb := (abs_le.mp (sourceEndpoint_abs_le_twelve A hA1)).1
  have hf := (abs_le.mp hF).1
  have hp := (abs_lt.mp hc).2
  linarith

/-- The ledger constant is chosen once, before the scale is quantified. -/
theorem uniform_strictColumnInterior_comparison :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 117 ≤ A →
      strictColumnInterior A ≤ completeCorrectedAbelPairing A +
        (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + 12 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact strictColumnInterior_upper_of_complete_pairing_calibration A C_F hA
    (hF A (by linarith))

/-- Keep the route's real radius and return exactly the primary strict-column target. -/
theorem strictColumnInterior_tail_of_complete_pairing_tail
    (K R : ℝ) (hR : 117 ≤ R)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ R₀ : ℝ, 1 ≤ R₀ ∧
      ∀ A : ℝ, R₀ ≤ A → strictColumnInterior A ≤ D := by
  obtain ⟨C_F, _hF0, hF⟩ := uniform_strictColumnInterior_comparison
  let D := max 0 (K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + 12 + C_F)
  refine ⟨D, le_max_left _ _, R, by linarith, ?_⟩
  intro A hRA
  have hc := hF A (hR.trans hRA)
  have hp := hpair A hRA
  have hd : K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + 12 + C_F ≤ D :=
    le_max_right _ _
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCorrectedPairingToStrictInterior
