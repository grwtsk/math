# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPrimeBumpDictionary.Variant10bf7b59688c8eab53bef8ac5b571d4d732524fd1865bcc71f4cddc3c161c02a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af4282491cf41f407a0318c982551b0a223c89c` · SHA-256 `099362e2057f3d46502c5ab5c48bf35f5405ce578fbf086195cfa4845e04a9ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialPrimeMellinEqBumpMellinWeight.Variantdc103e35a32a6c6091a7bca4e7080781e7aa4e22cbb89a90b80a2673b65fd926","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc103e35a32a6c6091a7bca4e7080781e7aa4e22cbb89a90b80a2673b65fd926","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualInitialPrimeMellinEqBumpMellinWeight.Variantdc103e35a32a6c6091a7bca4e7080781e7aa4e22cbb89a90b80a2673b65fd926","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dc103e35a32a6c6091a7bca4e7080781e7aa4e22cbb89a90b80a2673b65fd926","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T043404Z-1791347644557847000/SourceActualPrimeBumpDictionary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpTransform
import SourceActualBumpMovingHeight
import SourceActualPrimeContourResidual

/-!
The actual initial prime contour has the independently prescribed bump weight.
The full actual arithmetic density, both finite support seams, and both true
frequency tails are retained. At the genuine moving height, the original real
Mertens residual differs from its signed finite head by at most K(c)/A^9.
The signed head still has no uniform bound; no arithmetic witness is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialPrimeMellinEqBumpMellinWeight.Variantdc103e35a32a6c6091a7bca4e7080781e7aa4e22cbb89a90b80a2673b65fd926

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPrimeBumpDictionary
open MeasureTheory Set
open SourcePairing SourceActualBumpTransform SourceActualBumpMellinLineBudget
open SourceActualRightBumpTail SourceActualBumpTwoTailBudget SourceActualBumpMovingHeight
open SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualPrimeContourResidual ActualComplexCorrelationSquare ActualCorrelationOppositeHalf
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- Genuine compact-support Fubini identifies the literal Mellin transform with the bump weight. -/
theorem actualInitialPrimeMellin_eq_bumpMellinWeight {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A s = bumpMellinWeight A s := by
  calc
    _ = ∫ t : ℝ, Complex.exp ((s-1/2) * (t : ℂ)) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ) := by
      unfold actualInitialPrimeMellin
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun t => mul_comm _ _
    _ = actualBilateralCorrelationTransform A (s-1/2) :=
      (actualBilateralCorrelationTransform_eq_full hA (s-1/2)).symm
    _ = _ := actualBilateralCorrelationTransform_eq_bump hA s

/-- The exact source arithmetic density retains the full logarithmic derivative only for c>1. -/
theorem actualInitialPrimeDensity_eq_bump {A c : ℝ} (hA : 1 ≤ A) (hc : 1 < c) (t : ℝ) :
    actualInitialPrimeDensity A c t = actualRightBumpDensity A c t := by
  rw [actualInitialPrimeDensity_eq_series A c t hc,
    actualInitialPrimeMellin_eq_bumpMellinWeight hA]
  exact mul_comm _ _

/-- Both actual frequency tails equal their independently defined original bump tails. -/
theorem actualInitialPrimeTwoTail_eq_bump {A c : ℝ} (hA : 1 ≤ A) (hc : 1 < c) (T : ℝ) :
    actualInitialPrimeTwoTail A c T = actualBumpTwoTail A c T := by
  unfold actualInitialPrimeTwoTail actualBumpTwoTail
  simp_rw [actualInitialPrimeDensity_eq_bump hA hc]

/-- This is the actual source contour tail bound at the genuine moving height. -/
theorem actualInitialPrimeTwoTail_movingHeight_norm_le {A c : ℝ}
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualInitialPrimeTwoTail A c (actualBumpMovingHeight A c)‖ ≤
      actualBumpMovingTailConstant c / A^9 := by
  rw [actualInitialPrimeTwoTail_eq_bump hA hc]
  exact actualBumpTwoTail_movingHeight_norm_le A c hA hc

/-- The original source residual has the precise quantified difference from the signed finite head. -/
theorem actualMertensResidual_sub_head_norm_le {A c : ℝ} (hA : 1 ≤ A) (hc : 1 < c) :
    ‖(mertensResidual A : ℂ) -
      actualInitialPrimeHead A c (actualBumpMovingHeight A c)‖ ≤
      actualBumpMovingTailConstant c / A^9 := by
  rw [actual_mertensResidual_eq_head_add_twoTail A c (actualBumpMovingHeight A c) hA hc,
    add_sub_cancel_left]
  exact actualInitialPrimeTwoTail_movingHeight_norm_le hA hc

/-- The real signed source residual keeps that same error; no modulus square is substituted. -/
theorem actualMertensResidual_sub_head_real_abs_le {A c : ℝ}
    (hA : 1 ≤ A) (hc : 1 < c) :
    |mertensResidual A - (actualInitialPrimeHead A c (actualBumpMovingHeight A c)).re| ≤
      actualBumpMovingTailConstant c / A^9 := by
  have hh := (Complex.abs_re_le_norm ((mertensResidual A : ℂ) -
    actualInitialPrimeHead A c (actualBumpMovingHeight A c))).trans
      (actualMertensResidual_sub_head_norm_le hA hc)
  simpa only [Complex.sub_re, Complex.ofReal_re] using hh

/-- Only the true real part of the signed growing head remains to bound from above. -/
theorem actualMertensResidual_le_head_add {A c : ℝ} (hA : 1 ≤ A) (hc : 1 < c) :
    mertensResidual A ≤ (actualInitialPrimeHead A c (actualBumpMovingHeight A c)).re +
      actualBumpMovingTailConstant c / A^9 := by
  have hh := (le_abs_self (mertensResidual A -
    (actualInitialPrimeHead A c (actualBumpMovingHeight A c)).re)).trans
      (actualMertensResidual_sub_head_real_abs_le hA hc)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPrimeBumpDictionary
```
