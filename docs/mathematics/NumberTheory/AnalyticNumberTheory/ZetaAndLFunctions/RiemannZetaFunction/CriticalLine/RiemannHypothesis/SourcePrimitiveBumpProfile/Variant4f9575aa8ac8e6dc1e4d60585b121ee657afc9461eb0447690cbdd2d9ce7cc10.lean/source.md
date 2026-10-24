# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitiveBumpProfile.Variant4f9575aa8ac8e6dc1e4d60585b121ee657afc9461eb0447690cbdd2d9ce7cc10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `815755461d3bd20bd68c21708a5beb7e7e162eba` · SHA-256 `4f9575aa8ac8e6dc1e4d60585b121ee657afc9461eb0447690cbdd2d9ce7cc10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

/-!
# Exact normalized primitive overlap

The native polynomial overlap is transported to the existing primitive source
with its literal normalization. The shifted derivative correlations and signed
arithmetic readout require their own adapters.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile

open MeasureTheory Set
open SourcePairing SourceCausalEnergy SourcePrimitivePrimeInteraction SourceBumpAutocorrelation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization

/-- The exact compact bump product has an integrability proof on the half-support. -/
theorem sourceBump_overlap_integrable {u : ℝ} (hu : 0 ≤ u) :
    Integrable (fun x : ℝ => sourceBump x * sourceBump (x-u)) := by
  rw [sourceBump_overlap_eq_indicator hu]
  apply integrable_zeroExtension
  unfold unitBump
  fun_prop

/-- The existing primitive correlation equals the factored profile divided by actual Z_A. -/
theorem primitiveCorrelationZero_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    primitiveCorrelationZero A t = overlapProfile (t/A) / sourceNormalization A := by
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  have he : (fun x : ℝ =>
      normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x-t)) =
      (fun x => (scaledBump A x * scaledBump A (x-t)) / sourceNormalization A) := by
    funext x
    dsimp only [normalizedPrimitiveBump]
    rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hZ.le]
  rw [primitiveCorrelationZero, he, integral_div,
    scaledBump_autocorrelation_eq_profile hA ht0 ht2]

end FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
```
