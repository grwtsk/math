# Complete source: GRWTSK.Analysis.AdmissionSource.Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e3800002908db91490cf3cd979c952ba7156501` · SHA-256 `831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.Analysis.DigammaSeries
import FormalResearch.Analysis.ReciprocalKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier

/-!
# Source-faithful admission from the actual digamma difference series

The real reciprocal kernel and its sum–integral comparisons are independently
proved. A genuine locally uniform Euler approximation proves the derivative
limit for the actual digamma. This closes B3.1 without an analytic premise.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.Analysis.DigammaSeries

noncomputable section

/-- The exact source series identity at the actual Fourier frequency and endpoint.
This is a proof obligation, not a new special function or an axiom. -/
def QuarterSeriesObligation : Prop :=
  ∀ ξ : ℝ, HasSum (fun n : ℕ ↦ kernel (ξ / 2) (n + 1 / 4))
    (archimedeanMultiplier ξ + archimedeanConstant)

/-- Reordering complex scalar factors preserves the source's quarter-line argument. -/
theorem actual_multiplier_difference (ξ : ℝ) :
    archimedeanMultiplier ξ + archimedeanConstant =
      (Complex.digamma ((1 / 4 : ℂ) + (ξ / 2 : ℝ) * Complex.I)).re -
        (Complex.digamma (1 / 4)).re := by
  have he : (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2 =
      (1 / 4 : ℂ) + (ξ / 2 : ℝ) * Complex.I := by push_cast; ring
  simp only [archimedeanMultiplier, archimedeanConstant, he]
  ring

/-- The actual Euler derivative limit supplies precisely the source series identity. -/
theorem quarter_series_of_derivative_limit (h : EulerDerivativeLimit) :
    QuarterSeriesObligation := by
  intro ξ
  rw [actual_multiplier_difference]
  convert hasSum_difference_of_derivative_limit h (by norm_num : (0 : ℝ) < 1 / 4)
    (ξ / 2) using 1 <;> simp [kernel, add_comm]

/-- The independently proved kernel comparison yields source equation (10),
provided the exact special-function identity is supplied. -/
theorem multiplier_estimate_of_series (h : QuarterSeriesObligation) :
    MultiplierEstimateObligation := by
  intro ξ
  have hs := (h ξ).tsum_eq
  rw [← hs]
  exact frequency_sum_bounds ξ

/-- Analytic admission follows from the source identity, not from its citation. -/
theorem archimedean_integrability_of_series (h : QuarterSeriesObligation) :
    ArchimedeanIntegrabilityObligation :=
  BridgeMultiplier.actual_archimedean_integrable_of_multiplier_estimate
    (multiplier_estimate_of_series h)

/-- Full B3.1 follows from the isolated Euler derivative limit. The premise is
explicit, so this conditional theorem does not by itself close B3.1. -/
theorem admission_of_derivative_limit (h : EulerDerivativeLimit) :
    NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr
    (archimedean_integrability_of_series (quarter_series_of_derivative_limit h))

/-- The actual quarter-line source identity is now proved from Euler convergence. -/
theorem quarter_series : QuarterSeriesObligation :=
  quarter_series_of_derivative_limit euler_derivative_limit

/-- RH-0002 equation (10), with the actual digamma and exact frequency scaling. -/
theorem multiplier_estimate : MultiplierEstimateObligation :=
  multiplier_estimate_of_series quarter_series

/-- Genuine integrability closes the exact analytic obstruction left by Run 3. -/
theorem archimedean_integrability : ArchimedeanIntegrabilityObligation :=
  archimedean_integrability_of_series quarter_series

/-- Full B3.1 admission is unconditional on the actual normalized test family.
This is analytic admission only, not the zero-side identity or an RH bridge. -/
theorem normalization_admissibility : NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr archimedean_integrability

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
```
