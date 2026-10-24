# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDerivativeAlgebra.Variante2584902647957173a9df2bb0bbdfc363dff0fc2275fd608b8e0e3c607f72ef1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91ccc4423e811c7193e3e35f76f896d02ee6a603` · SHA-256 `e2584902647957173a9df2bb0bbdfc363dff0fc2275fd608b8e0e3c607f72ef1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDerivativeCoefficientBound
example {A : ℝ} (hA : 0 < A) :
    sourceNormalization A = normPolynomial ((A ^ 2)⁻¹) := by
  unfold sourceNormalization normPolynomial
  field_simp
  ring
example {A : ℝ} (hA : 0 < A) :
    A ^ 2 * ((A ^ 6)⁻¹ * (65536 / 77 : ℝ) +
      (2 * A ^ 4)⁻¹ * (196608 / 5005 : ℝ) +
      (1 / 16) * (A ^ 2)⁻¹ * (131072 / 45045 : ℝ)) =
        derivativePolynomial ((A ^ 2)⁻¹) := by
  unfold derivativePolynomial
  field_simp
  ring
```
