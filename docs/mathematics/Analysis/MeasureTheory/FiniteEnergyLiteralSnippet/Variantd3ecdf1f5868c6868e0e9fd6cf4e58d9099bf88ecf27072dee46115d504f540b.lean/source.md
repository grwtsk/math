# Complete source: GRWTSK.Analysis.MeasureTheory.FiniteEnergyLiteralSnippet.Variantd3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71cad6639845eaa4deeb9551fac004c787fbde1c` · SHA-256 `d3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FiniteControllerEnergyScratch
noncomputable section
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    finiteController n a ha c = ∑ i, (c i : ℂ) • controller (a i) (ha i) := rfl
example (a b : ℝ) : sourceGram a b =
    ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0,
      fixedKernel u * fixedKernel v * overlap a b u v := rfl
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) :=
  finiteController_reference_re n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 = ∑ i, ∑ j, c i * c j / (a i + a j) :=
  finiteController_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) :=
  finiteController_response_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) (α : ℝ) :
    ‖referenceVector - sourceOperator (finiteController n a ha c)‖ ^ 2 +
      α * ‖finiteController n a ha c‖ ^ 2 =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) :=
  finiteController_energy n a ha c α
end
end FiniteControllerEnergyLiteral
```
