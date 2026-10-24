# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualClosedXiSqrtConsumers.Variant0f739e286c675247046970256479cef87a588049c5d916b32fad82cad1b3fde9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87a335fd96b3073c6c98382fc229b609845f7159` · SHA-256 `c8ab7c0fb24e2f9e4dd527ab3f330795f26c334c660fbf958a02a1e4c5c8615f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedXiSqrtReadout.Variantae6f50b5a7fd505626213aafb9cac52436186ce4a375fc7f28de13ec6f072ad8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae6f50b5a7fd505626213aafb9cac52436186ce4a375fc7f28de13ec6f072ad8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualClosedXiSqrtReadout.Variantae6f50b5a7fd505626213aafb9cac52436186ce4a375fc7f28de13ec6f072ad8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ae6f50b5a7fd505626213aafb9cac52436186ce4a375fc7f28de13ec6f072ad8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791328523375057000/SourceActualClosedXiSqrtConsumers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiSqrtClosedReadout
import SourceActualXiPrimitiveConsequences

/-!
Apply a uniform bound on the literal complete closed inverse-square-root Xi
readout to the actual anchored primitive and the unchanged original consumers.
Every prime power, gamma companion, lower anchor and smooth term is retained.
The arithmetic H witness remains an explicit hypothesis.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedXiSqrtReadout.Variantae6f50b5a7fd505626213aafb9cac52436186ce4a375fc7f28de13ec6f072ad8

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualClosedXiSqrtConsumers
open ArithmeticFunction SourceActualXiSqrtClosedReadout SourceActualXiPrimitiveTransport
open SourceActualXiPrimitiveConsequences SourcePairing RH16ResumeBudget SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
open scoped BigOperators

/-- The full closed finite readout, including its independent gamma and smooth companions. -/
def actualClosedXiSqrtReadout (Y : ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
    vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) +
  2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
    ((2 : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) -
  2 * (Y ^ (1 / 2 : ℝ) - (2 : ℝ) ^ (1 / 2 : ℝ))

theorem actualClosedXiSqrtReadout_eq_primitive (Y : ℝ) (hY : 2 ≤ Y) :
    actualClosedXiSqrtReadout Y = actualXiLogPrimitive (Real.log Y) := by
  unfold actualClosedXiSqrtReadout
  exact (actualXiLogPrimitive_log_eq_closed_atoms Y hY).symm

theorem primitive_bound_of_closed_readout (H : ℝ)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H := by
  intro t ht
  have hY : (2 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have h := hclosed (Real.exp t) hY
  rw [actualClosedXiSqrtReadout_eq_primitive (Real.exp t) hY, Real.log_exp] at h
  exact h

theorem residual_upper_of_closed_readout (H R A : ℝ) (hR : 91 ≤ R) (hA : R ≤ A)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    mertensResidual A ≤ (11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R :=
  residual_upper_of_actual_primitive H R A hR hA (primitive_bound_of_closed_readout H hclosed)

theorem all_real_lower_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * ((11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R)) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_actual_primitive H R hR (primitive_bound_of_closed_readout H hclosed)

theorem estimate_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_actual_primitive H R hR (primitive_bound_of_closed_readout H hclosed)

theorem leading_tail_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ (11 / 2 : ℝ) * H - 3 / 8 +
        criticalBaselineCorrection R - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_actual_primitive H R A hR hA
    (primitive_bound_of_closed_readout H hclosed)

end FormalResearch.RiemannHypothesis.SourceActualClosedXiSqrtConsumers
```
