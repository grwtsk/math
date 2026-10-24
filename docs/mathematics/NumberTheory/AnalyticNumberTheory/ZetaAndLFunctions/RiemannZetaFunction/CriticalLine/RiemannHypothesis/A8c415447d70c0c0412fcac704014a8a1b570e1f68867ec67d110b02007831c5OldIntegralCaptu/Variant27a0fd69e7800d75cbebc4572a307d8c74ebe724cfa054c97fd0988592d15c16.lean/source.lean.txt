-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OldUnparenthesized0.Varianta8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OldUnparenthesized0.Varianta8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a8/a8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5--OldIntegralCaptureRegression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiPhiTransform


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OldUnparenthesized0.Varianta8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/- Regression preserving the exact old unparenthesized proposition bodies.
The copied integral notation absorbs the retained boundary into its integrand.
At b = 0 both integrals vanish, so the old proposition asserts 0 = 1/2. -/
def oldUnparenthesized0 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        thetaCoshBoundary u b

theorem oldUnparenthesized0_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized0 u 0 := by
  norm_num [oldUnparenthesized0]

def oldUnparenthesized1 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        (thetaADerivSeries b : ℂ) * Complex.cosh (2 * u * (b : ℂ)) -
        (2 * u) * (thetaA b : ℂ) * Complex.sinh (2 * u * (b : ℂ))

theorem oldUnparenthesized1_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized1 u 0 := by
  norm_num [oldUnparenthesized1]

theorem corrected_identity_valid_at_zero (u : ℂ) :
    (1 / 2 : ℂ) + thetaCoshBoundary u 0 = 0 :=
  thetaPhi_cosh_interval_identity_at_zero u

#print axioms oldUnparenthesized0_false_at_zero
#print axioms oldUnparenthesized1_false_at_zero
#print axioms corrected_identity_valid_at_zero

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
