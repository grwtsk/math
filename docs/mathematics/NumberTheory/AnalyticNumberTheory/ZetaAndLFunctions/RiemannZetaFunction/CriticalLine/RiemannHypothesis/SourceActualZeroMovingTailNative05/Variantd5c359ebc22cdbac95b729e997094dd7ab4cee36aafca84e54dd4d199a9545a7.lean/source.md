# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroMovingTailNative05.Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32348986aaea8082755020181a0a70dcfff4f547` · SHA-256 `eccea7c08861369a6d328fbd8558add02e28ee7c305fb2c35621e672328ddb6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroMovingRadius.Variant636203dabbe12b31979d1b7ccad9c2517eb1ba0fd9c3eec28ba9d6ec5cb9579e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"636203dabbe12b31979d1b7ccad9c2517eb1ba0fd9c3eec28ba9d6ec5cb9579e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualZeroMovingRadius.Variant636203dabbe12b31979d1b7ccad9c2517eb1ba0fd9c3eec28ba9d6ec5cb9579e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"636203dabbe12b31979d1b7ccad9c2517eb1ba0fd9c3eec28ba9d6ec5cb9579e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualZeroMovingTail-native05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailBudget
import SourceActualZeroArithmeticDictionary

/-!
The genuine growing-height all-zero tail tends to zero, with explicit source constants and
radius. The original quadratic zero/arithmetic dictionary retains its signed finite head.
No RH, nonnegative off-axis weights, or uniform lower head witness is assumed or proved.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroMovingRadius.Variant636203dabbe12b31979d1b7ccad9c2517eb1ba0fd9c3eec28ba9d6ec5cb9579e

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroMovingTail
open Zeta23 MeasureTheory Set Finset Filter
open SourceActualBumpMovingHeight SourceActualInitialPrimeContour
open SourceActualFullZeroContour SourceActualZeroTailBudget SourceActualZeroArithmeticDictionary
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The exact real radius ensures the prescribed height is at least four. -/
def actualZeroMovingRadius (c : ℝ) : ℝ := max 1 (5 * Real.log 4 / (2 * c - 1))

/-- The actual all-zero error envelope retains its exponential gain when c>1. -/
def actualZeroMovingEnvelope (A0 c A : ℝ) : ℝ :=
  2 * actualZeroTailWeightConstant * A0 * Real.exp (-2 * (c - 1) * A) *
    ((2 * c - 1) * A / 5 + 2) / A ^ 9

/-- The radius supplies the literal actual count-tail guard, without a fixed-A shortcut. -/
theorem actualZeroMovingHeight_ge_four (c A : ℝ) (hc : 1 < c)
    (hA : actualZeroMovingRadius c ≤ A) : 4 ≤ actualBumpMovingHeight A c := by
  have hp : 0 < 2 * c - 1 := by linarith
  have hh : 5 * Real.log 4 / (2 * c - 1) ≤ A :=
    (le_max_right _ _).trans hA
  have hh' := (div_le_iff₀ hp).mp hh
  have he : Real.log 4 ≤ (2 * c - 1) * A / 5 := by linarith
  calc
    (4 : ℝ) = Real.exp (Real.log 4) := (Real.exp_log (by norm_num)).symm
    _ ≤ actualBumpMovingHeight A c := Real.exp_le_exp.mpr he

/-- The full actual zero tail keeps equality atoms in its quantified moving-height budget. -/
theorem actualZeroMovingTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      ‖actualZeroHeightTail A (actualBumpMovingHeight A c)‖ ≤
        actualZeroMovingEnvelope A0 c A := by
  obtain ⟨A0, hA0, hb⟩ := actualZeroHeightTail_norm_bound
  refine ⟨A0, hA0, fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := hb A (actualBumpMovingHeight A c) hA1
    (actualZeroMovingHeight_ge_four c A hc hA)
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : Real.exp A = Real.exp (-2 * (c - 1) * A) *
      Real.exp ((2 * c - 1) * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  refine hh.trans_eq ?_
  rw [ht]
  unfold actualBumpMovingHeight actualZeroMovingEnvelope
  rw [Real.log_exp, he]
  field_simp

private theorem envelope_le_inverse_eighth (A0 c A : ℝ) (hA0 : 1 ≤ A0)
    (hc : 1 < c) (hA : 1 ≤ A) :
    actualZeroMovingEnvelope A0 c A ≤
      (2 * actualZeroTailWeightConstant * A0 * ((2 * c - 1) / 5 + 2)) / A ^ 8 := by
  have hp : 0 < A := by linarith
  have he : Real.exp (-2 * (c - 1) * A) ≤ 1 := Real.exp_le_one_iff.mpr (by nlinarith)
  have hc0 : 0 ≤ 2 * actualZeroTailWeightConstant * A0 := by
    unfold actualZeroTailWeightConstant
    positivity
  have hlin : (2 * c - 1) * A / 5 + 2 ≤ ((2 * c - 1) / 5 + 2) * A := by
    nlinarith
  unfold actualZeroMovingEnvelope
  calc
    _ ≤ (2 * actualZeroTailWeightConstant * A0) *
        (((2 * c - 1) / 5 + 2) * A) / A ^ 9 := by
      apply div_le_div_of_nonneg_right _ (by positivity)
      apply mul_le_mul
      · exact mul_le_of_le_one_right hc0 he
      · exact hlin
      · nlinarith
      · exact hc0
    _ = _ := by field_simp

/-- The actual moving tail vanishes on the whole real A-axis. -/
theorem actualZeroMovingTail_tendsto_zero (c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ => actualZeroHeightTail A (actualBumpMovingHeight A c))
      atTop (nhds 0) := by
  obtain ⟨A0, hA0, hb⟩ := actualZeroMovingTail_norm_bound
  let D : ℝ := 2 * actualZeroTailWeightConstant * A0 * ((2 * c - 1) / 5 + 2)
  have hz : Tendsto (fun A : ℝ => D / A ^ 8) atTop (nhds 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  apply squeeze_zero_norm' _ hz
  filter_upwards [eventually_ge_atTop (actualZeroMovingRadius c)] with A hA
  exact (hb c A hc hA).trans (envelope_le_inverse_eighth A0 c A hA0 hc
    ((le_max_left _ _).trans hA))

/-- The exact full actual zero value differs from its actual finite growing head by that tail. -/
theorem actualFullZeroContribution_sub_movingHead (A c : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A - actualZeroHeightHead A (actualBumpMovingHeight A c) =
      actualZeroHeightTail A (actualBumpMovingHeight A c) := by
  rw [actualFullZeroContribution_eq_head_add_tail A (actualBumpMovingHeight A c) hA]
  abel

/-- The original arithmetic quadratic value has precisely the same complete zero tail error. -/
theorem actualSourceQuadraticValue_sub_movingHead (A c : ℝ) (hA : 1 ≤ A) :
    (sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualZeroHeightHead A (actualBumpMovingHeight A c) =
      actualZeroHeightTail A (actualBumpMovingHeight A c) := by
  rw [← actualFullZeroContribution_eq_original_sourceQuadraticValue A hA]
  exact actualFullZeroContribution_sub_movingHead A c hA

end
end FormalResearch.RiemannHypothesis.SourceActualZeroMovingTail
```
