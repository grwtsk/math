-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ExactStripCost.Variant88c86034465be9e53e355dd3b8f05f819c5aa786c696c457d47fb88e3cc94cf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c86034465be9e53e355dd3b8f05f819c5aa786c696c457d47fb88e3cc94cf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ExactStripCost.Variant88c86034465be9e53e355dd3b8f05f819c5aa786c696c457d47fb88e3cc94cf1","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"88c86034465be9e53e355dd3b8f05f819c5aa786c696c457d47fb88e3cc94cf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/exact-overlap-consumer/attempt01.source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactRestrictedStrip
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
The exact retained left-strip cost is applied to the original residual and quadratic source.
The only supplied arithmetic witness is the uniform upper bound on the unchanged
remainingOverlapBalance. The already proved ledger fact supplies its own constant.
The direct quadratic return keeps the closed/strict atom endpoint identity and pays
no smooth companion loss. The strict finite prefix is evaluated at the same max(91,R).
Research direction and conceptual origin: grwtsk contributors.
Native mathematical construction and focused verification: OpenAI Codex assistance.
Frozen qualified source40 private research ABI inherited; maintained acceptance is separate.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ExactStripCost.Variant88c86034465be9e53e355dd3b8f05f819c5aa786c696c457d47fb88e3cc94cf1

set_option autoImplicit false
noncomputable section
namespace RH16ExactOverlapConsumer
open MeasureTheory
open RH16ExactRestrictedStrip RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourceRestrictedLowTimeWork SourceActualMixedWorkFubini SourceSamplingLedger
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimatePrimeSmoothDefect EstimateTailReduction

/-- The paid actual strip cost at its calibrated real radius. -/
def exactStripCost (Q : ℝ) : ℝ :=
  (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2)

/-- The complete residual budget, after cancellation and actual ledger replacement. -/
def exactOverlapResidualBudget (D Q C_F : ℝ) : ℝ :=
  max 0 (D + exactStripCost Q + C_F)

theorem exactStripCost_nonneg (Q : ℝ) : 0 ≤ exactStripCost Q := by
  have hE := SourceLowTimeScalarBudget.mangoldt_error_budget_pos.le
  have hdelta := (tailEnergyCoefficient_pos Q).le
  unfold exactStripCost
  positivity

theorem exactOverlapResidualBudget_nonneg (D Q C_F : ℝ) :
    0 ≤ exactOverlapResidualBudget D Q C_F := le_max_left _ _

/-- All original source counterterms stay in the imported joint overlap and ledger identities. -/
theorem residual_upper_of_overlap_with_ledger (D R C_F : ℝ)
    (hledger : ∀ A : ℝ, 1 ≤ A → |betaMainLedger A + independentMainTerm A| ≤ C_F)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D)
    (A : ℝ) (hA : max 91 R ≤ A) :
    mertensResidual A ≤ exactOverlapResidualBudget D (max 91 R) C_F := by
  have hQ : (91 : ℝ) ≤ max 91 R := le_max_left _ _
  have hA1 : (1 : ℝ) ≤ A := by linarith [hQ.trans hA]
  have hoverA := hover A ((le_max_right _ _).trans hA)
  have hstrip := actual_surplus_le_remainingOverlap_add_exact_strip hQ hA
  have hledgerA := (abs_le.mp (hledger A hA1)).2
  rw [actual_residual_decomposition A hA1]
  have hraw : (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) +
      (betaMainLedger A + independentMainTerm A) ≤ D + exactStripCost (max 91 R) + C_F := by
    unfold exactStripCost
    linarith
  exact hraw.trans (le_max_right _ _)

/-- The established actual ledger theorem supplies its own constant, without a new premise. -/
theorem residual_tail_of_overlap_with_exact_strip (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 91 R ≤ A →
      mertensResidual A ≤ exactOverlapResidualBudget D (max 91 R) C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  exact ⟨C_F, hF0, residual_upper_of_overlap_with_ledger D R C_F hF hover⟩

/-- The exact closed/strict source bridge gives a direct quadratic return with no smooth loss. -/
theorem quadratic_lower_of_residual_upper (B A : ℝ) (hA : 1 ≤ A)
    (hres : mertensResidual A ≤ B) :
    archimedeanMultiplier 0 - 2 * B ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hprime : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
    rw [primePowerContribution_eq_closedPrimeMoment A hA,
      mertensResidual_eq_closedPrimeMoment A hA]
  unfold sourceQuadraticValue
  rw [hprime]
  linarith

/-- The existing strict finite-prefix budget is used at the same calibrated real radius. -/
theorem all_real_lower_of_overlap_with_ledger (D R C_F : ℝ)
    (hledger : ∀ A : ℝ, 1 ≤ A → |betaMainLedger A + independentMainTerm A| ≤ C_F)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * exactOverlapResidualBudget D (max 91 R) C_F) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : max 91 R ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_upper_of_overlap_with_ledger D R C_F hledger hover A hQA))
  · have hprefix := prime_contribution_le_finite_budget A (max 91 R) hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- Exact all-real source consequence with the already supplied actual ledger constant. -/
theorem all_real_lower_of_overlap_with_exact_strip (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * exactOverlapResidualBudget D (max 91 R) C_F) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  exact ⟨C_F, hF0, all_real_lower_of_overlap_with_ledger D R C_F hF hover⟩

/-- Directly instantiate the existing exact RH estimate consumer at max(91,R). -/
theorem estimate_of_overlap_with_exact_strip (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, _, hres⟩ := residual_tail_of_overlap_with_exact_strip D R hover
  exact estimate_of_mertens_residual_tail
    ⟨exactOverlapResidualBudget D (max 91 R) C_F,
      exactOverlapResidualBudget_nonneg _ _ _, max 91 R,
      by linarith [le_max_left (91 : ℝ) R], hres⟩
end RH16ExactOverlapConsumer
