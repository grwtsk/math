# Complete source: GRWTSK.Topology.GeneralTopology.B57122664b502e7bSourceActualOffAxisReducedLimit.Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3379b6f734df11e373c0982602bd430eca5f52de` · SHA-256 `3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualReducedZeroHeight
import ActualCriticalZeroMagnitude

/-!
The actual critical contribution is uniformly O(A^-9) in every real finite
height. Together with the genuine reduced-height tail, this removes the critical
piece from the source-exact quadratic/residual reduction with a vanishing signed
error. The actual remaining off-axis head is neither replaced by norm squares nor
assumed bounded below. No unchanged EstimateObligation witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualOffAxisReducedLimit
open MeasureTheory Filter
open scoped Topology
open SourcePairing SourceActualCriticalZeroHead SourceActualSignedZeroHeadReduction
open SourceActualOffAxisResidualUpper SourceActualReducedZeroHeight
open ActualCriticalZeroMagnitude
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- Every real height recipe preserves the actual critical piece's uniformly vanishing magnitude. -/
theorem actualCriticalZeroHead_anyHeight_tendsto_zero (height : ℝ → ℝ) :
    Tendsto (fun A : ℝ => actualCriticalZeroHeightHead A (height A)) atTop (𝓝 0) := by
  obtain ⟨C,R0,hC,hR0,hbound⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  have hz : Tendsto (fun A : ℝ => C / A^9) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  apply squeeze_zero_norm' _ hz
  filter_upwards [eventually_ge_atTop R0] with A hA
  exact hbound A (height A) hA

/-- The original arithmetic quadratic value has a quantitative actual off-axis error. -/
theorem actualSourceQuadraticValue_reducedOffAxis_norm_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖ ≤
          C / A^9 + actualReducedZeroEnvelope A0 A := by
  obtain ⟨C,R0,hC,hR0,hcritical⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  obtain ⟨A0,hA0,htail⟩ := actualReducedZeroTail_norm_bound
  refine ⟨C,R0,A0,hC,hR0,hA0,fun A hA => ?_⟩
  have h200 := (le_max_left _ _).trans hA
  have hR := (le_max_right _ _).trans hA
  have hA1 : 1 ≤ A := by linarith
  have he : (sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualOffAxisZeroHeightHead A (actualReducedZeroHeight A) =
        SourceActualZeroTailBudget.actualZeroHeightTail A (actualReducedZeroHeight A) +
          actualCriticalZeroHeightHead A (actualReducedZeroHeight A) := by
    calc
      _ = ((sourceQuadraticValue explicitSecondDerivative A : ℂ) -
          SourceActualZeroTailBudget.actualZeroHeightHead A (actualReducedZeroHeight A)) +
            actualCriticalZeroHeightHead A (actualReducedZeroHeight A) := by
        rw [actualZeroHeightHead_eq_critical_add_offAxis]
        ring
      _ = _ := by rw [actualSourceQuadraticValue_sub_reducedHead A hA1]
  rw [he]
  exact (norm_add_le _ _).trans ((add_le_add (htail A h200)
    (hcritical A (actualReducedZeroHeight A) hR)).trans_eq (by ring))

/-- The original quadratic value differs from its actual reduced off-axis head by o(1). -/
theorem actualSourceQuadraticValue_reducedOffAxis_tendsto_zero :
    Tendsto (fun A : ℝ => (sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)) atTop (𝓝 0) := by
  have hh := actualReducedZeroTail_tendsto_zero.add
    (actualCriticalZeroHead_anyHeight_tendsto_zero actualReducedZeroHeight)
  have hz : Tendsto (fun A : ℝ =>
      SourceActualZeroTailBudget.actualZeroHeightTail A (actualReducedZeroHeight A) +
        actualCriticalZeroHeightHead A (actualReducedZeroHeight A)) atTop (𝓝 0) := by
    simpa only [zero_add] using hh
  apply hz.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have he := actualSourceQuadraticValue_sub_reducedHead A hA
  rw [actualZeroHeightHead_eq_critical_add_offAxis] at he
  linear_combination -he

/-- Both sides of the original residual retain the reduced actual off-axis head quantitatively. -/
theorem actualResidual_reducedOffAxis_signed_error_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
        (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2| ≤
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 + C / (2 * A^9) := by
  obtain ⟨C,R0,hC,hR0,hcritical⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  obtain ⟨A0,hA0,hhead⟩ := actualResidual_reducedHead_signed_error_bound
  refine ⟨C,R0,A0,hC,hR0,hA0,fun A hA => ?_⟩
  have h200 := (le_max_left _ _).trans hA
  have hR := (le_max_right _ _).trans hA
  have hh := abs_le.mp (hhead A h200)
  have hc := abs_le.mp ((Complex.abs_re_le_norm
    (actualCriticalZeroHeightHead A (actualReducedZeroHeight A))).trans
      (hcritical A (actualReducedZeroHeight A) hR))
  have he := actualZeroHeightHead_re_eq_critical_add_offAxis A (actualReducedZeroHeight A)
  have hd : C / (2 * A^9) = (C / A^9) / 2 := by ring
  rw [hd]
  apply abs_le.mpr
  constructor <;> linarith [hh.1, hh.2, hc.1, hc.2]

/-- The original residual's actual reduced off-axis signed correction tends to zero. -/
theorem actualResidual_reducedOffAxis_signed_error_tendsto :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2)
        atTop (𝓝 0) := by
  have hc := (Complex.continuous_re.tendsto 0).comp
    (actualCriticalZeroHead_anyHeight_tendsto_zero actualReducedZeroHeight)
  have hh := actualResidual_reducedHead_signed_error_tendsto.sub (hc.div_const 2)
  have hz : Tendsto (fun A : ℝ =>
      (mertensResidual A - (archimedeanMultiplier 0 -
        (SourceActualZeroTailBudget.actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2) -
          (actualCriticalZeroHeightHead A (actualReducedZeroHeight A)).re / 2)
            atTop (𝓝 0) := by
    simpa only [Complex.zero_re, zero_div, sub_zero, Function.comp_apply] using hh
  convert hz using 1
  ext A
  rw [actualZeroHeightHead_re_eq_critical_add_offAxis]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualOffAxisReducedLimit
```
