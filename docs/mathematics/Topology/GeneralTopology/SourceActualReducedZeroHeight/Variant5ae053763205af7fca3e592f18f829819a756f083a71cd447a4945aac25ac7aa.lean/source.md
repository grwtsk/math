# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualReducedZeroHeight.Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb3271f5a10985f5573c606e23cc73c15081a8be` · SHA-256 `5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualOffAxisResidualUpper

/-!
The genuine all-zero representation permits a smaller finite height after the
initial contour has been established: exp(A/5)/A. Its full actual zero tail has
an explicit inverse-cubic bound on every real A at least 200. This choice does
not move the initial contour to c=1. Every actual zero, multiplicity and signed
ordinary complex weight is retained by the exact head/tail partition.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualReducedZeroHeight
open MeasureTheory Filter
open scoped Topology
open SourcePairing SourceActualCriticalZeroHead SourceActualSignedZeroHeadReduction
open SourceActualOffAxisResidualUpper SourceActualZeroTailBudget
open SourceActualZeroArithmeticDictionary SourceActualFullZeroContour SourceActualArchimedeanUpper
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- This literal real height is smaller than the previous exponential recipe by a factor A. -/
def actualReducedZeroHeight (A : ℝ) : ℝ := Real.exp (A / 5) / A

/-- The exact actual zero-tail allowance tends to zero at inverse-cubic rate. -/
def actualReducedZeroEnvelope (A0 A : ℝ) : ℝ :=
  2 * actualZeroTailWeightConstant * A0 * ((1 / 5 : ℝ) / A^3 + 2 / A^4)

/-- An explicit radius gives the genuine local zero-count tail its height guard. -/
theorem actualReducedZeroHeight_ge_four {A : ℝ} (hA : 200 ≤ A) :
    4 ≤ actualReducedZeroHeight A := by
  have hp : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp (show 0 ≤ A / 5 by positivity) 2
  norm_num at he
  have ha : 4 * A ≤ (A / 5)^2 / 2 := by
    nlinarith [mul_nonneg hp.le (show 0 ≤ A - 200 by linarith)]
  exact (le_div_iff₀ hp).mpr (ha.trans he)

/-- The literal full actual tail beyond the smaller height has one all-real quantitative bound. -/
theorem actualReducedZeroTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      ‖actualZeroHeightTail A (actualReducedZeroHeight A)‖ ≤
        actualReducedZeroEnvelope A0 A := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroHeightTail_norm_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have ht := hbound A (actualReducedZeroHeight A) hA1 (actualReducedZeroHeight_ge_four hA)
  have he : actualReducedZeroHeight A ^ 5 = Real.exp A / A^5 := by
    unfold actualReducedZeroHeight
    rw [div_pow, ← Real.exp_nat_mul]
    congr 2
    ring
  have hl : Real.log (actualReducedZeroHeight A) ≤ A / 5 := by
    unfold actualReducedZeroHeight
    rw [Real.log_div (Real.exp_pos _).ne' hp.ne', Real.log_exp]
    linarith [Real.log_nonneg hA1]
  calc
    _ ≤ 2 * actualZeroTailWeightConstant * A0 * Real.exp A *
        (A / 5 + 2) / (A^9 * actualReducedZeroHeight A ^ 5) := by
      apply ht.trans
      apply div_le_div_of_nonneg_right _ (by positivity)
      apply mul_le_mul_of_nonneg_left (by linarith :
        Real.log (actualReducedZeroHeight A) + 2 ≤ A / 5 + 2)
      unfold actualZeroTailWeightConstant
      positivity
    _ = actualReducedZeroEnvelope A0 A := by
      rw [he]
      unfold actualReducedZeroEnvelope
      field_simp
      ring

/-- The complete actual zero tail vanishes on the whole real scale axis at the smaller height. -/
theorem actualReducedZeroTail_tendsto_zero :
    Tendsto (fun A : ℝ => actualZeroHeightTail A (actualReducedZeroHeight A))
      atTop (𝓝 0) := by
  obtain ⟨A0,hA0,hbound⟩ := actualReducedZeroTail_norm_bound
  have h3 : Tendsto (fun A : ℝ => (1 / 5 : ℝ) / A^3) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have h4 : Tendsto (fun A : ℝ => (2 : ℝ) / A^4) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have he : Tendsto (fun A : ℝ => actualReducedZeroEnvelope A0 A) atTop (𝓝 0) := by
    simpa [actualReducedZeroEnvelope] using (h3.add h4).const_mul
      (2 * actualZeroTailWeightConstant * A0)
  apply squeeze_zero_norm' _ he
  filter_upwards [eventually_ge_atTop (200 : ℝ)] with A hA
  exact hbound A hA

/-- The original quadratic value equals the entire reduced-height head plus its genuine tail. -/
theorem actualSourceQuadraticValue_sub_reducedHead (A : ℝ) (hA : 1 ≤ A) :
    (sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualZeroHeightHead A (actualReducedZeroHeight A) =
        actualZeroHeightTail A (actualReducedZeroHeight A) := by
  rw [← actualFullZeroContribution_eq_original_sourceQuadraticValue A hA,
    actualFullZeroContribution_eq_head_add_tail A (actualReducedZeroHeight A) hA]
  abel

/-- The original residual has an explicit signed error bound at the smaller finite height. -/
theorem actualResidual_reducedHead_signed_error_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
        (actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2| ≤
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualReducedZeroTail_norm_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hA1 : 1 ≤ A := by linarith
  have he := actualResidual_sub_signedHead_eq hA1 (actualReducedZeroHeight A)
  have ha := actual_archimedean_two_sided hA1
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualReducedZeroHeight A))).trans (hbound A hA)
  have hb := abs_le.mp ht
  have hcoeff : 0 ≤ (18 * (162826 / 7623 : ℝ)) / (2 * A^2) := by positivity
  have hc : (18 * (162826 / 7623 : ℝ)) / (2 * A^2) =
      ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
  rw [hc]
  apply abs_le.mpr
  constructor <;> linarith [ha.1, ha.2, hb.1, hb.2]

/-- The smaller actual signed head still determines the original residual up to o(1). -/
theorem actualResidual_reducedHead_signed_error_tendsto :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2) atTop (𝓝 0) := by
  have ha := actual_archimedean_tendsto_zero_frequency
  have ht := (Complex.continuous_re.tendsto 0).comp actualReducedZeroTail_tendsto_zero
  have hlim := ((ha.sub_const (archimedeanMultiplier 0)).div_const 2).sub (ht.div_const 2)
  have hz : Tendsto (fun A : ℝ =>
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
      (actualZeroHeightTail A (actualReducedZeroHeight A)).re / 2) atTop (𝓝 0) := by
    simpa only [sub_self, zero_div, Complex.zero_re, Function.comp_apply] using hlim
  apply hz.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actualResidual_sub_signedHead_eq hA (actualReducedZeroHeight A)).symm

/-- Positivity of the genuine critical part leaves the reduced actual off-axis head as an upper cost. -/
theorem actualResidual_reducedOffAxisHead_upper :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      mertensResidual A ≤ (archimedeanMultiplier 0 -
        (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2 +
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_reducedHead_signed_error_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hh := (abs_le.mp (hbound A hA)).2
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualReducedZeroHeight A)
    (by linarith)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualReducedZeroHeight
```
