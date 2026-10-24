# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceResidualBudget.Variantc3d7650c979890afe7a0708fb2f51731ff2e2a2b38dd14e4d632d61025d202bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ca1c48c54eb077533a01c615fdf61bd25b196f8` · SHA-256 `40250f22b2266469b97e0a9d4b7c6b020f6d26169ece52715afc9f32d8f04c74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceQuadraticValueEqArchimedeanSubTwoResidual.Variant74385954c48cc144a75ba50270265d7fc995dbad374fa851c70eb516c2f4d206","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74385954c48cc144a75ba50270265d7fc995dbad374fa851c70eb516c2f4d206","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceQuadraticValueEqArchimedeanSubTwoResidual.Variant74385954c48cc144a75ba50270265d7fc995dbad374fa851c70eb516c2f4d206","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"74385954c48cc144a75ba50270265d7fc995dbad374fa851c70eb516c2f4d206","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/independent-SourceResidualBudget-1791346180478876000/SourceResidualBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact source residual budgets through the original finite prime prefix.
The prime-two and smooth terms cancel by the proved exact prime moment identity.
No residual bound witness is supplied. Research direction: grwtsk contributors.
Formal construction and mathematical challenge: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceQuadraticValueEqArchimedeanSubTwoResidual.Variant74385954c48cc144a75ba50270265d7fc995dbad374fa851c70eb516c2f4d206

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction

noncomputable section

theorem sourceQuadraticValue_eq_archimedean_sub_two_residual
    (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
  unfold sourceQuadraticValue
  rw [EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]

theorem source_lower_of_residual_upper (A M : ℝ) (hA : 1 ≤ A)
    (hres : mertensResidual A ≤ M) :
    archimedeanMultiplier 0 - 2 * M ≤ sourceQuadraticValue explicitSecondDerivative A := by
  rw [sourceQuadraticValue_eq_archimedean_sub_two_residual A hA]
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  linarith

/-- The finite prefix is the literal strict prime inventory; no continuity is assumed. -/
def originalPrefixLower (R : ℝ) : ℝ :=
  archimedeanMultiplier 0 -
    2 * ∑ n ∈ primeIndices R, |ArithmeticFunction.vonMangoldt n / Real.sqrt n|

theorem originalPrefixLower_le_source (R A : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    originalPrefixLower R ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have hp := prime_contribution_le_finite_budget A R hA hAR
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold originalPrefixLower sourceQuadraticValue
  linarith

/-- The stated minimum is an explicit all-real witness conditional on the supplied tail. -/
theorem all_real_source_lower_of_residual_tail (M R : ℝ) (_hR : 1 ≤ R)
    (hres : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ M) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * M) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (source_lower_of_residual_upper A M hA (hres A hRA))
  · exact (min_le_left _ _).trans
      (originalPrefixLower_le_source R A hA (le_of_lt (lt_of_not_ge hRA)))

theorem estimate_of_residual_tail_direct (M R : ℝ) (hR : 1 ≤ R)
    (hres : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ M) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * M),
    all_real_source_lower_of_residual_tail M R hR hres⟩

end
end RH16ResumeBudget
```
