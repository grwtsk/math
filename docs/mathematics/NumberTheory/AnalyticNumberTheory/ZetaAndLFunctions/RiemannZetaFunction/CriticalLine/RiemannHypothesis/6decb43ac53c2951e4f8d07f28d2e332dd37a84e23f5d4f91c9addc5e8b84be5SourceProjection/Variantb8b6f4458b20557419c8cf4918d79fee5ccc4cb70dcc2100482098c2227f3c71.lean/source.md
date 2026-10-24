# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5SourceProjection.Variantb8b6f4458b20557419c8cf4918d79fee5ccc4cb70dcc2100482098c2227f3c71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `958587fe00d99e443bdfdd38cedf40bc44265619` · SHA-256 `d919dd657981eef4389ba788df87fc873f009ec486c60fb5b043d7e4cb95691e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarContinuumAnchorNormLeTwo.Variant6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScalarContinuumAnchorNormLeTwo.Variant6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next-rate-ingestion/concurrent-native-recovery/bytes/6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5--SourceProjectionScalarNorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
# Full operator norm after independent scalar compensation

The independently defined continuum scalar has norm at most two on the native source domain.
The existing norm lower bound for the complete Mangoldt interaction therefore survives with
only that fixed loss. This rules out an eventual uniform full operator-norm budget for the
explicit scalar-compensated operator.

This operator agrees with the centered arithmetic readout on the original unit source.
It is not identified on intermediate projection states with the physical continuum translation
integral operator under https://github.com/grwtsk/formal-research/issues/443. Norm growth here
does not imply growth of the matched-source signed readout, whose row-square bound remains open.

Human direction and formation of the medium: grwtsk contributors. These proof implementations
were developed with OpenAI Codex; kernel checking remains distinct from review and integration.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarContinuumAnchorNormLeTwo.Variant6decb43ac53c2951e4f8d07f28d2e332dd37a84e23f5d4f91c9addc5e8b84be5

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm

open SourceProjectionReadout SourceMangoldtInteraction SourceMangoldtNorm
open SourceFirstPrimeAbel SourceReflectionDuality

/-- Independent continuum scalar compensation has a uniform full operator-norm budget. -/
theorem scalarContinuumAnchor_norm_le_two (A : ℝ) (hA : 1 ≤ A) :
    ‖scalarContinuumAnchor A‖ ≤ 2 := by
  unfold scalarContinuumAnchor
  calc
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * ‖ContinuousLinearMap.id ℂ ComplexL2‖ :=
      norm_smul_le _ _
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * 1 :=
      mul_le_mul_of_nonneg_left ContinuousLinearMap.norm_id_le (norm_nonneg _)
    _ = |criticalContinuousMoment A| := by
      rw [Complex.norm_real, Real.norm_eq_abs, mul_one]
    _ ≤ 2 := criticalContinuousMoment_abs_le_two A hA

/-- Subtracting a scalar of norm at most two retains the literal prime operator's growth. -/
theorem scalarCompensatedPrimeOperator_norm_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 3 ≤ ‖scalarCompensatedPrimeOperator A‖ := by
  have hm := mangoldtInteraction_norm_lower hA
  have hc := scalarContinuumAnchor_norm_le_two A hA
  have hn := norm_sub_norm_le (mangoldtInteraction A) (scalarContinuumAnchor A)
  change ‖mangoldtInteraction A‖ - ‖scalarContinuumAnchor A‖ ≤
    ‖scalarCompensatedPrimeOperator A‖ at hn
  linarith

/-- A uniform full norm shortcut still fails for the explicitly scalar-compensated family. -/
theorem scalarCompensatedPrimeOperator_norm_not_eventually_bounded :
    ¬ ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ‖scalarCompensatedPrimeOperator A‖ ≤ D := by
  rintro ⟨D, _, R, hR, h⟩
  let A : ℝ := max R (D + Real.log 2 + 4)
  have hAR : R ≤ A := le_max_left _ _
  have hAD : D + Real.log 2 + 4 ≤ A := le_max_right _ _
  have hl := scalarCompensatedPrimeOperator_norm_lower (hR.trans hAR)
  have hu := h A hAR
  linarith

end FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm
```
