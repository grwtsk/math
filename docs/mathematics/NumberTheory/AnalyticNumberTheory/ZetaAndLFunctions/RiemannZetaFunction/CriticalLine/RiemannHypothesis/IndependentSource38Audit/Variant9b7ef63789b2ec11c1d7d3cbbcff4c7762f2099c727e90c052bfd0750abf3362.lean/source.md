# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IndependentSource38Audit.Variant9b7ef63789b2ec11c1d7d3cbbcff4c7762f2099c727e90c052bfd0750abf3362

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80d8a56ac8dd8e554aa9b423122fcdafb4653ea6` · SHA-256 `9b7ef63789b2ec11c1d7d3cbbcff4c7762f2099c727e90c052bfd0750abf3362`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceMixedCurvatureCross

set_option autoImplicit false

open MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

example
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) :=
  actual_mixed_curvature_finite_cross_eq_neg_products s t a x b y hA

#check actual_mixed_curvature_finite_cross_eq_neg_products
#print axioms actual_mixed_curvature_finite_cross_eq_neg_products
```
