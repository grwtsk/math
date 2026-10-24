# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ControllerPoleConstraint.Variantb8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `284f4e852d2c13a74e634cbe6b138bbbc34612a9` · SHA-256 `b8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential

/-!
A controller whose own Laplace evaluation vanishes at the removed source pole
cannot track the reference. This rules out that particular over-cancellation,
not all controllers and not the source resolvent limit.
-/
set_option autoImplicit false
namespace ControllerPoleConstraintScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
noncomputable section

/-- The source preserves an input's vanishing exponential evaluation. -/
theorem source_residual_evaluation_of_input_zero (z : ℂ) (hz : 0 < z.re)
    (q : H) (hq : inner ℂ (exponentialVector z hz) q = 0) :
    inner ℂ (exponentialVector z hz) (referenceVector - sourceOperator q) =
      1 / (z + 1) := by
  rw [inner_sub_right, exponential_inner_sourceOperator, hq, mul_zero,
    sub_zero, inner_exponential_reference]

/-- Vanishing of the controller evaluation at one half forces a full residual floor. -/
theorem source_residual_sq_ge_of_input_half_zero (q : H)
    (hq : inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 := by
  have he := source_residual_evaluation_of_input_zero (1 / 2) (by norm_num) q hq
  have hn := norm_inner_le_norm (𝕜 := ℂ)
    (exponentialVector (1 / 2) (by norm_num)) (referenceVector - sourceOperator q)
  have hs := exponentialVector_norm_sq (1 / 2) (by norm_num)
  have hv : ‖exponentialVector (1 / 2) (by norm_num)‖ = 1 := by
    norm_num at hs
    rcases hs with hs | hs
    · exact hs
    · exfalso
      nlinarith [norm_nonneg (exponentialVector (1 / 2) (by norm_num))]
  rw [he, hv, one_mul] at hn
  norm_num at hn
  nlinarith [norm_nonneg (referenceVector - sourceOperator q)]

/-- The same obstruction remains after adding the nonnegative full input cost. -/
theorem source_full_energy_ge_of_input_half_zero (α : ℝ) (hα : 0 ≤ α) (q : H)
    (hq : inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 := by
  have h := source_residual_sq_ge_of_input_half_zero q hq
  have hc := mul_nonneg hα (sq_nonneg ‖q‖)
  linarith

end
end ControllerPoleConstraintScratch
```
