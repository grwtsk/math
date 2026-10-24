-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedMomentUpperOfContractedLower.Variant55e88ca74c668ce35053bd765a901bdb637507966df4599d728925e4ef20910a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55e88ca74c668ce35053bd765a901bdb637507966df4599d728925e4ef20910a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClosedMomentUpperOfContractedLower.Variant55e88ca74c668ce35053bd765a901bdb637507966df4599d728925e4ef20910a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"55e88ca74c668ce35053bd765a901bdb637507966df4599d728925e4ef20910a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352720856051000/SourceGammaRetainedContractedConsequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceGammaRetainedMomentConsequences

/-!
Source-matched actual contracted-I consumers retain the same positive gamma
boundary. They use the exact native I=-closedMoment identity once, with no
additional arithmetic assumption, clipping, block gain or smoothing charge.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedMomentUpperOfContractedLower.Variant55e88ca74c668ce35053bd765a901bdb637507966df4599d728925e4ef20910a

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceGammaRetainedContractedConsequences
open MeasureTheory SourceActualClosedXiSignedMoment SourceLeadingTailBudget
open RH16ResumeBudget SourcePositiveSampling SourcePairing RH16ActualPsiNegativeBlock
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- Exact sign conversion of the actual contracted full-Xi integral. -/
theorem closed_moment_upper_of_contracted_lower (J A : ℝ) (hA : 1 ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualClosedXiSignedMoment A ≤ J := by
  rw [actual_contracted_pairing_eq_neg_closed_moment A hA] at hI
  linarith only [hI]

theorem residual_upper_of_contracted_Xi (J R A : ℝ) (hR : 91 ≤ R) (hRA : R ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 13 / 16 + criticalBaselineCorrection R :=
  SourceGammaRetainedMomentConsequences.residual_upper_of_closed_moment J R A hR hRA
    (closed_moment_upper_of_contracted_lower J A (by linarith) hI)

theorem all_real_lower_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply SourceGammaRetainedMomentConsequences.all_real_lower_of_closed_moment J R hR
  intro A hRA
  exact closed_moment_upper_of_contracted_lower J A (by linarith) (hI A hRA)

theorem estimate_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceGammaRetainedMomentConsequences.estimate_of_closed_moment J R hR
  intro A hRA
  exact closed_moment_upper_of_contracted_lower J A (by linarith) (hI A hRA)

theorem leading_upper_of_contracted_Xi (J R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
      (riemannZeta (1 / 2)).re + 3103 / 50 :=
  SourceGammaRetainedMomentConsequences.leading_upper_of_closed_moment J R A hR hA
    (closed_moment_upper_of_contracted_lower J A
      (by linarith [(le_max_right 25600 R).trans hA]) hI)

theorem leading_tail_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_contracted_Xi J R A hR hA
    (hI A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceGammaRetainedContractedConsequences
