# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileFixtures.Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86b6dd2ee30895a8023b524108a35e1abcce2b44` · SHA-256 `1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
example : diagonalMainCoefficient 1 = (221 / 873180 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : diagonalMainCoefficient 1 ≠ (2431 / 8820 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : (∫ t in (0 : ℝ)..1, sourceCorrelation explicitSecondDerivative 1 (2 * t)) =
    (221 / 873180 : ℝ) := by
  rw [actual_source_half_integral 1 (by norm_num)]
  norm_num [sourceNormalization]
```
