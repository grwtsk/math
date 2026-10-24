# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScaleComparisonStatements.Variant4b5600d8a6902f42adab3bae4f2f89d653dab0478c16658edf36088dc9f26297

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f946d836bff2f325ed85ca91d70e56c921bda16` · SHA-256 `4b5600d8a6902f42adab3bae4f2f89d653dab0478c16658edf36088dc9f26297`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.mertens.ScaleComparison

set_option autoImplicit false
namespace ScaleComparisonExactStatements
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open RealThetaKernel ScaleComparisonScratch
noncomputable section

example (A : ℝ) : scaleComparisonCoefficient A =
    32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3 := rfl

example (A : ℝ) (hA : 1 ≤ A) : 0 ≤ scaleComparisonCoefficient A :=
  scaleComparisonCoefficient_nonneg A hA

example (A q : ℝ) : sqrtWeightedRemainder A q =
    Real.sqrt q * realThetaRemainder A q := rfl

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (sqrtWeightedRemainder A)
      ((q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2) /
        Real.sqrt q) q :=
  sqrtWeightedRemainder_hasDerivAt A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (sqrtWeightedRemainder A) q| ≤ scaleComparisonCoefficient A / q :=
  sqrtWeightedRemainder_derivative_abs_le A q hA hq

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable (deriv (sqrtWeightedRemainder A)) volume a b :=
  sqrtWeightedRemainder_derivative_intervalIntegrable A a b hA ha hab

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    (∫ q in a..b, deriv (sqrtWeightedRemainder A) q) =
      sqrtWeightedRemainder A b - sqrtWeightedRemainder A a :=
  sqrtWeightedRemainder_integral_derivative A a b hA ha hab

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    |sqrtWeightedRemainder A b - sqrtWeightedRemainder A a| ≤
      scaleComparisonCoefficient A * Real.log (b / a) :=
  sqrtWeightedRemainder_abs_sub_le_log_ratio A a b hA ha hab

example (A q r : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) (hr : 1 ≤ r) :
    |Real.sqrt r * realThetaRemainder A (r * q) - realThetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log r / Real.sqrt q :=
  real_remainder_scale_comparison A q r hA hq hr

example (A : ℝ) (q p : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) (hp : 1 ≤ p) :
    |Real.sqrt (p : ℝ) * ThetaRemainder.thetaRemainder A (p * q) -
      ThetaRemainder.thetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log (p : ℝ) / Real.sqrt (q : ℝ) :=
  theta_remainder_scale_comparison A q p hA hq hp

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A (2 * q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt 2 * Real.sqrt (q : ℝ)) :=
  theta_remainder_two_difference_abs_le A q hA hq

end
end ScaleComparisonExactStatements
```
