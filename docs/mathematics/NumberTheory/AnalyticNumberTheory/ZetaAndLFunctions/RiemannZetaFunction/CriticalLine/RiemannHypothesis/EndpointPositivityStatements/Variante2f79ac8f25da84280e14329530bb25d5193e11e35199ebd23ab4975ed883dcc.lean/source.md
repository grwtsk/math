# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivityStatements.Variante2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `286b617f3282e08d4432d8f8e2eb4571952b6406` · SHA-256 `e2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.mertens.EndpointPositivity
set_option autoImplicit false
namespace EndpointPositivityExactStatements
open Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A) (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x :=
  EndpointPositivityScratch.normalizedTest_endpoint_pos A x hA hx

example (A t : ℝ) (hA : 3 ≤ A) (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t :=
  EndpointPositivityScratch.sourceCorrelation_endpoint_pos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q :=
  EndpointPositivityScratch.sourceSamplingKernel_upper_pos A q hA hq

end
end EndpointPositivityExactStatements
```
