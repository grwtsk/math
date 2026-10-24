# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiPrimitiveConsequences.Variant853f38fbc1300c7a81708b4a30b08b0d29863a706177229401a49ea8915a7cfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23f65bba8fdb4e8c9f3ce2699173ea0bf5344aef` · SHA-256 `0c7206d0d4ae3dabb93ab59fbfaff11c52dfcc5ae896c5ae30568ff05628dc77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContractedLowerOfActualPrimitive.Variant8906178e4e2dc7beef7de72928e9202042200317fc2151fac80188f7d614de1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8906178e4e2dc7beef7de72928e9202042200317fc2151fac80188f7d614de1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ContractedLowerOfActualPrimitive.Variant8906178e4e2dc7beef7de72928e9202042200317fc2151fac80188f7d614de1c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8906178e4e2dc7beef7de72928e9202042200317fc2151fac80188f7d614de1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791327939177644000/SourceActualXiPrimitiveConsequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiPrimitiveTransport
import SourceLaterRadiusPropagation

/-!
Apply the actual signed-primitive sufficient bound to the unchanged original
source consumers. The arithmetic primitive bound remains an explicit input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContractedLowerOfActualPrimitive.Variant8906178e4e2dc7beef7de72928e9202042200317fc2151fac80188f7d614de1c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveConsequences
open MeasureTheory SourceActualXiPrimitiveTransport SourceLaterRadiusPropagation
open SourcePositiveSampling SourcePairing RH16ActualPsiNegativeBlock
open SourceFirstAtomSignedWork RH16ResumeBudget RH16ResumeApplication
open SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

theorem contracted_lower_of_actual_primitive (H A : ℝ) (hA : 91 ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    -((11 / 2 : ℝ) * H) ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hH : 0 ≤ H := by
    simpa only [actualXiLogPrimitive_at_anchor, abs_zero] using hF (Real.log 2) le_rfl
  exact contracted_lower_of_actual_primitive_bound H A hH hA hF

theorem residual_upper_of_actual_primitive (H R A : ℝ) (hR : 91 ≤ R) (hA : R ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    mertensResidual A ≤ (11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R := by
  exact residual_upper_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R A hR hA
    (contracted_lower_of_actual_primitive H A (hR.trans hA) hF)

theorem all_real_lower_of_actual_primitive (H R : ℝ) (hR : 91 ≤ R)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * ((11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R hR
  intro A hA
  exact contracted_lower_of_actual_primitive H A (hR.trans hA) hF

theorem estimate_of_actual_primitive (H R : ℝ) (hR : 91 ≤ R)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R hR
    (fun A hA => contracted_lower_of_actual_primitive H A (hR.trans hA) hF)

theorem leading_upper_of_actual_primitive (H R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    actualLeadingRenormalizedTail A ≤ (11 / 2 : ℝ) * H - 3 / 8 +
      criticalBaselineCorrection R - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  exact leading_upper_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R A hR hA
    (contracted_lower_of_actual_primitive H A
      (hR.trans ((le_max_right _ _).trans hA)) hF)

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveConsequences
```
