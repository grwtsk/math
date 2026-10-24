# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelScaleComparisonClassExample.Variant2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d532cfffc9c33730690b50d4ae048a72d324c48a` · SHA-256 `2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.KernelScaleComparison

set_option autoImplicit false
namespace KernelScaleComparisonClassExample
open FormalResearch.RiemannHypothesis.SourceComparison
open KernelScaleComparison
noncomputable section

example (A : ℝ) (h g : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2) -
      Real.sqrt 2 * ThetaRemainder.thetaRemainder A (2 * (h * g ^ 2))| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt (h : ℝ) * (g : ℝ)) := by
  have hq : 1 ≤ h * g ^ 2 := by nlinarith
  have hbound := theta_remainder_scale_comparison A (h * g ^ 2) 2 hA hq (by norm_num)
  have hroot : Real.sqrt ((h * g ^ 2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
    push_cast
    rw [Real.sqrt_mul (Nat.cast_nonneg h), Real.sqrt_sq (Nat.cast_nonneg g)]
  simpa only [Nat.cast_ofNat, hroot, abs_sub_comm] using hbound

end
end KernelScaleComparisonClassExample
```
