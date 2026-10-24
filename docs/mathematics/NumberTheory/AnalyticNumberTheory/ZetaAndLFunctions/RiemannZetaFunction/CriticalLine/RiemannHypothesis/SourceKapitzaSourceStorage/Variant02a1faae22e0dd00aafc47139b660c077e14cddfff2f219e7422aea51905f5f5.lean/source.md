# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaSourceStorage.Variant02a1faae22e0dd00aafc47139b660c077e14cddfff2f219e7422aea51905f5f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d6d1af6cf4305aa097b52d219db40e9ae6c8c64` · SHA-256 `02a1faae22e0dd00aafc47139b660c077e14cddfff2f219e7422aea51905f5f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction
import FormalResearch.RiemannHypothesis.SourceKapitzaStorage

/-!
# Binding the explicit corrector and storage to the unchanged arithmetic source

RH16-KAPITZA-20261007. grwtsk contributors reports the originating Kapitza
proposal; original date unverified, recovery 7 October 2026. OpenAI Codex
contributed these specific source joins. No arithmetic signed cap is supplied.
Return: https://chatgpt.com/g/g-p-6abfd4d5cba0819187bc5ffdb6641342-riemann/c/6ac66887-fbd4-83e8-be38-1248b35f5e37
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage

open SourceKapitzaReconstruction SourceKapitzaStorage SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- The forcing obtained from the endpoint slope and the removed affine trend. -/
def sourceForcing (A s : ℝ) : ℝ := endpointSlope A - 1 - affineTrend A s

/-- The explicit exponential corrector combining source correlation, forcing, and endpoint slope. -/
def sourceCorrector (A s : ℝ) : ℝ :=
  Real.exp (s / 2) *
    (sourceCorrelation explicitSecondDerivative A s + 4 * sourceForcing A s +
      8 * endpointSlope A)

/-- The actual storage readout of the nonaffine arithmetic discrepancy and source corrector. -/
def sourceStorage (A s : ℝ) : ℝ :=
  storage (Real.exp (s / 2)) (nonaffineDiscrepancy A s) (sourceCorrector A s)

theorem sourceForcing_hasDerivAt (A s : ℝ) :
    HasDerivAt (sourceForcing A) (endpointSlope A) s := by
  have ht := (hasDerivAt_const s (endpointValue A)).add
    (((hasDerivAt_const s (2 * A)).sub (hasDerivAt_id s)).const_mul (endpointSlope A))
  have hc := (hasDerivAt_const s (endpointSlope A - 1)).sub ht
  convert hc using 1 <;> first | rfl | simp only [zero_sub, mul_neg, mul_one]; ring

theorem sourceCorrector_deriv_cancel (A s : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrector A) s - sourceCorrector A s =
      -Real.exp (s / 2) * (kapitzaKernel A s + 2 * sourceForcing A s) := by
  have hc : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) s) s :=
    ((sourceCorrelation_contDiff A (by linarith : 0 < A)).differentiable
      (by norm_num) s).hasDerivAt
  have h := hasDerivAt_corrector (hasDerivAt_weight s) hc (sourceForcing_hasDerivAt A s)
  change deriv (fun t => Real.exp (t / 2) *
    (sourceCorrelation explicitSecondDerivative A t + 4 * sourceForcing A t +
      8 * endpointSlope A)) s - _ = _
  rw [h.deriv]
  exact corrector_cancellation _ _ _ _ _

theorem sourceStorage_upper (A : ℝ) : sourceStorage A (2 * A) = 0 := by
  simp [sourceStorage, nonaffineDiscrepancy_upper, storage_endpoint]

theorem sourceStorage_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceStorage A 0 = initialStorage (affineTrend A 0) (endpointSlope A) := by
  simp only [sourceStorage, nonaffineDiscrepancy, normalizedPsiError_zero,
    sourceCorrector, sourceForcing, actual_correlation_at_zero A hA,
    zero_div, Real.exp_zero, one_mul]
  exact initialStorage_reconstruction _ _

theorem sourceStorage_zero_epsilon (A K epsilon : ℝ)
    (hK : 0 ≤ K) (hA : 1 ≤ A) (hKA : K ≤ A)
    (hepsilon : 0 < epsilon) (hR : 314 * K / epsilon ≤ A)
    (hL : |affineTrend A 0| ≤ 5 * (K / A))
    (hb : |endpointSlope A| ≤ 2 * (K / A)) :
    |sourceStorage A 0 - 4| ≤ epsilon := by
  rw [sourceStorage_zero A hA]
  exact initialStorage_epsilon hK hA hKA hepsilon hR hL hb

/-- The full source drift is already exponentially large under the priced trend inputs. -/
theorem sourceCorrector_forcing_lower (A s : ℝ) (hA : 1 ≤ A)
    (hl : |affineTrend A s| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 64) :
    (2035 / 1024 : ℝ) * Real.exp (s / 2) ≤ sourceCorrector A s * sourceForcing A s := by
  have h := obstruction_coefficients (actual_correlation_abs_le_one A s hA) hl hb
  exact obstruction_product (Real.exp_pos _).le h.1 h.2

end FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage
```
