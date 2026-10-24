# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLocalizedSignedConsumer.Variant41095dbb25aa0976f014732a9f3de3865c6f1a47ae308e8b953bace77919f4b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b69dbcb6bff658ae68143fce7c79471e7105f06b` · SHA-256 `95a9cbfe5e09c51681a5bba3b622793c8f4bea0ed6968b3a736f37ca83066ce6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedLocalizedWork.Variantb7ac611e2056da4fabc0a453dbacc404825358923ad0ce08c33796729135b534","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7ac611e2056da4fabc0a453dbacc404825358923ad0ce08c33796729135b534","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CompensatedLocalizedWork.Variantb7ac611e2056da4fabc0a453dbacc404825358923ad0ce08c33796729135b534","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b7ac611e2056da4fabc0a453dbacc404825358923ad0ce08c33796729135b534","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T163215Z/SourceLocalizedSignedConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointWorkSupport
import SourceJointWorkConsumer
import SourceLocalizedMixedWorkEstimate

/-!
# The original signed target on its exact local source window

AI attribution: OpenAI Codex. The baseline window, full centered deleted
diagonal and independent main term remain unchanged. The original lower error
is retained by anchoring the shorter work. All tail premises remain explicit.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedLocalizedWork.Variantb7ac611e2056da4fabc0a453dbacc404825358923ad0ce08c33796729135b534

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer

open MeasureTheory
open scoped Interval
open SourceMangoldtAbel SourceJointMangoldtWork SourceJointWorkConsumer
open SourceJointWorkSupport SourceConstantOffsetCancellation SourceStrictColumnInterior
open SourceLocalizedMixedWorkEstimate SourceColumnEnvelopeMass SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual

noncomputable section

/-- The literal signed Abel target, with only its error-work window shortened. -/
def compensatedLocalizedWork (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  (∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
    (mangoldtLogError t - mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) *
      deriv (jointMangoldtTestProfile A) t) -
  centeredDeletedDiagonal A - independentMainTerm A

theorem compensatedLocalizedWork_eq_strictColumnInterior (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A = strictColumnInterior A := by
  rw [strictColumnInterior_eq_lower_anchored_error_work A hA,
    centeredErrorWork_eq_support_integral A _ hA]
  rfl

theorem compensatedLocalizedWork_eq_original (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A = compensatedJointWork A := by
  rw [compensatedLocalizedWork_eq_strictColumnInterior A hA,
    compensatedJointWork_eq_strictColumnInterior A hA]

/-- The endpoint three and independent ledger budget transfer at the original radius. -/
theorem residual_tail_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 3 + C_F := by
  apply residual_tail_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedLocalizedWork_eq_original A (hR.trans hRA)]
  exact hwork A hRA

/-- A literal uniform signed local-work witness suffices for the unchanged all-real target. -/
theorem estimate_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedLocalizedWork_eq_original A (hR.trans hRA)]
  exact hwork A hRA

/-- A quantitative sufficient budget preserves both independent compensation terms. -/
theorem compensatedLocalizedWork_le_baseline_and_localized_mass (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A ≤
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) - centeredDeletedDiagonal A - independentMainTerm A +
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A
          (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) * columnEnvelopeMass A := by
  have he := centeredErrorWork_abs_le_localized_mass A
    (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA
  have hl := (abs_le.mp he).1
  rw [centeredErrorWork_eq_support_integral A _ hA] at hl
  unfold compensatedLocalizedWork
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
```
