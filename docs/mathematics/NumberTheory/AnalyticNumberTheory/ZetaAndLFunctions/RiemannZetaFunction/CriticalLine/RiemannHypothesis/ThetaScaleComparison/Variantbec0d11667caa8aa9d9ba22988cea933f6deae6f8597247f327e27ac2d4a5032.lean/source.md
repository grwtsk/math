# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaScaleComparison.Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18e108e9b8d49a0a7e84b120f4decead12fd5af2` · SHA-256 `bec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation

set_option autoImplicit false

namespace ThetaScaleComparisonScratch

open FormalResearch.RiemannHypothesis.SourceComparison
open RealThetaKernel RealThetaDerivative KernelVariation

/-- The actual kernel derivative controls finite multiplicative rescaling;
primality alone does not make this absolute error have a better decay exponent. -/
theorem thetaRemainder_scale_difference_abs_le (A : ℝ) (p q : ℕ)
    (hA : 1 ≤ A) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A q - ThetaRemainder.thetaRemainder A (p * q)| ≤
      (2 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt (q : ℝ)) *
          (1 - 1 / Real.sqrt (p : ℝ)) := by
  have hpr : (1 : ℝ) ≤ p := by exact_mod_cast hp
  have hqr : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hsqrt : (1 : ℝ) ≤ Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hpr
  have hs := composed_abs_sub_le (realThetaRemainder A) (q : ℝ)
    (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3) 1 (Real.sqrt (p : ℝ)) hqr le_rfl hsqrt
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans_le hx)).continuousAt.continuousWithinAt)
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans hx)).differentiableAt)
    (fun x hx ↦ realThetaRemainder_derivative_abs_le A x hA hx.le)
  rw [one_pow, mul_one, Real.sq_sqrt (Nat.cast_nonneg p), div_one,
    ← Nat.cast_mul, Nat.mul_comm q p,
    realThetaRemainder_eq_nat A q hq,
    realThetaRemainder_eq_nat A (p * q) (Nat.mul_pos hp hq)] at hs
  exact hs

end ThetaScaleComparisonScratch

#print axioms ThetaScaleComparisonScratch.thetaRemainder_scale_difference_abs_le
```
