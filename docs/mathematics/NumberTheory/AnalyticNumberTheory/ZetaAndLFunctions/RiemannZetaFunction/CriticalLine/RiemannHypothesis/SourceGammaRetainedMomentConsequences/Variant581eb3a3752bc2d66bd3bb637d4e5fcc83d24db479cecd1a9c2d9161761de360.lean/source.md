# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGammaRetainedMomentConsequences.Variant581eb3a3752bc2d66bd3bb637d4e5fcc83d24db479cecd1a9c2d9161761de360

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9471bc2b47219c8bd9d9195500e967dff842c33` · SHA-256 `bc7e09d1a22af5629ec00c18634750b3edd3e1f61ac4f2186eeb48779fea32c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfClosedMoment.Variante0c558a3c5753178a7bdeaa6a87b23c3089259dc974fa83d96f373edf3df1b52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0c558a3c5753178a7bdeaa6a87b23c3089259dc974fa83d96f373edf3df1b52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfClosedMoment.Variante0c558a3c5753178a7bdeaa6a87b23c3089259dc974fa83d96f373edf3df1b52","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e0c558a3c5753178a7bdeaa6a87b23c3089259dc974fa83d96f373edf3df1b52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352647299010000/SourceGammaRetainedMomentConsequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSmoothingArithmeticAttempt

/-!
Retain the actual positive gamma boundary in the signed moment consumer.
The supplied fixed real J remains unrestricted. The original real prefix
and the actual common radius are preserved, without any additional cost.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfClosedMoment.Variante0c558a3c5753178a7bdeaa6a87b23c3089259dc974fa83d96f373edf3df1b52

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceGammaRetainedMomentConsequences
open SourceActualSmoothingArithmeticAttempt SourceActualClosedXiSignedMoment
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget
open RH16ResumeApplication SourcePositiveSampling SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- The full gamma boundary improves the prior source residual budget by seven-sixteenths. -/
theorem residual_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R) (hRA : R ≤ A)
    (hmoment : actualClosedXiSignedMoment A ≤ J) :
    mertensResidual A ≤ J - 13 / 16 + criticalBaselineCorrection R := by
  have hm := (actual_moment_residual_comparison A (by linarith : 40 ≤ A)).1
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  linarith only [hm, hb, hmoment]

/-- Keep the actual finite prefix at the supplied real radius R. -/
theorem all_real_lower_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 13 / 16 + criticalBaselineCorrection R) R (by linarith)
  intro A hRA
  exact residual_upper_of_closed_moment J R A hR hRA (hmoment A hRA)

/-- Instantiate the same explicit original-prefix minimum. -/
theorem estimate_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)),
    all_real_lower_of_closed_moment J R hR hmoment⟩

/-- The actual sharp leading transfer introduces no extra smoothing charge. -/
theorem leading_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A) (hmoment : actualClosedXiSignedMoment A ≤ J) :
    actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_closed_moment J R A hR
    ((le_max_right _ _).trans hA) hmoment

theorem leading_tail_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_closed_moment J R A hR hA
    (hmoment A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceGammaRetainedMomentConsequences
```
