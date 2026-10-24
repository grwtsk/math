# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerLogarithmicResidual.Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7bdf6e55cdc3590596a1a94904afe94d5f1cce2` · SHA-256 `ef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEulerLogarithmicPrimitive
import SourceActualEulerResidualApproximation

/-!
The complete original signed residual is transported to the independently
defined finite logarithmic-potential bulk, with all original closed prime
coefficients and both endpoint payments. The error vanishes without scaling.
No uniform upper bound for that signed bulk is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicResidual
open Complex Filter Topology
open SourceActualEulerLogarithmicPrimitive SourceActualEulerResidualApproximation
open SourceActualEulerSupportHead SourceActualBumpMovingHeight SourceActualRightBumpTail
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The complete endpoint constant has its genuine nonnegative arithmetic mass. -/
theorem actualEulerLogBoundaryConstant_nonneg (c : ℝ) :
    0 ≤ actualEulerLogBoundaryConstant c := by
  change 0 ≤ ((204288:ℝ)^2/(4096/109395)*(1+c^2)*(1+(c-1)^2)) *
    actualRightLineMass c / (Real.pi*Real.log 2)
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  positivity

/-- True unscaled error: original tails, exterior polynomial payment and both log endpoints. -/
theorem actualResidual_sub_logBulk_norm_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖(mertensResidual A:ℂ) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A) +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))) / A^9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualClosedPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_logBulk_add_boundary A c _ hA, add_sub_cancel_left]
  calc
    _ ≤ ‖(mertensResidual A:ℂ) -
          actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A))/A^9 +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualClosedPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The complete original residual-minus-logarithmic-bulk tends0 at every real scale. -/
theorem actualResidual_sub_logBulk_tendsto_zero (c d : ℝ) (hd : 1 < d) (hdc : d < c) :
    Tendsto (fun A : ℝ => (mertensResidual A:ℂ) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)) atTop (𝓝 0) := by
  have hp : Tendsto (fun A : ℝ => 2*(c-d)*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < 2*(c-d))
  have he : Tendsto (fun A : ℝ => Real.exp (-2*(c-d)*A)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hp using 1
    funext A
    congr 1
    ring
  have hq : Tendsto (fun A : ℝ => ((2*c-1)/5)*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < (2*c-1)/5)
  have hf : Tendsto (fun A : ℝ => Real.exp (-((2*c-1)*A/5))) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hq using 1
    funext A
    congr 1
    ring
  have hn : Tendsto (fun A : ℝ => actualBumpMovingTailConstant c +
      actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A) +
      actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5)))
      atTop (𝓝 (actualBumpMovingTailConstant c)) := by
    simpa using (tendsto_const_nhds.add
      (he.const_mul (actualClosedPrimeHeadErrorConstant c d))).add
        (hf.const_mul (actualEulerLogBoundaryConstant c))
  apply squeeze_zero_norm' _ (hn.div_atTop (tendsto_pow_atTop (by norm_num : (9:ℕ) ≠ 0)))
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  exact actualResidual_sub_logBulk_norm_le A c d hA hd hdc

end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicResidual
```
