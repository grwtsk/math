# Complete source: GRWTSK.Analysis.MeasureTheory.BridgeMultiplier.Variantd536653635478a58fc80d2ad3cf531d000dc6ac0ef050d84f36b1cdc2d8fe34b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95e0a870733845166d2ea4e4073ad0d4f0aec395` · SHA-256 `d536653635478a58fc80d2ad3cf531d000dc6ac0ef050d84f36b1cdc2d8fe34b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

/-!
# Exact conditional multiplier reduction for bridge admission

The actual digamma multiplier is measurable. The recovered source's explicit
two-sided multiplier estimate, if proved, bounds the actual archimedean
integrand by the already integrable unweighted and logarithmic Fourier energies.
The estimate remains an explicit premise; this module does not prove B3.1.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

noncomputable section

/-- The source multiplier is measurable using actual meromorphic digamma, without a surrogate. -/
theorem archimedeanMultiplier_measurable : Measurable archimedeanMultiplier := by
  have hd : Measurable Complex.digamma := Complex.meromorphic_digamma.measurable
  have hp : Measurable (fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := by
    fun_prop
  exact (Complex.measurable_re.comp (hd.comp hp)).sub measurable_const

/-- The source's two-sided estimate supplies a concrete absolute-value majorant. -/
theorem multiplier_abs_le_of_estimate (hestimate : MultiplierEstimateObligation) (ξ : ℝ) :
    |archimedeanMultiplier ξ| ≤ |archimedeanConstant| + 4 +
      Real.log (1 + 4 * ξ ^ 2) / 2 := by
  have hlo := (hestimate ξ).1
  have hhi := (hestimate ξ).2
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  have hc₁ := le_abs_self archimedeanConstant
  have hc₂ := neg_abs_le archimedeanConstant
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- This is genuine integrability of the actual archimedean integrand, conditional only on
its explicitly named source estimate. Both Fourier-energy majorants were proved independently. -/
theorem actual_archimedean_integrable_of_multiplier_estimate
    (hestimate : MultiplierEstimateObligation) (A : ℝ) (hA : 1 ≤ A) :
    Integrable (archimedeanIntegrand explicitSecondDerivative A) volume := by
  have hpos : 0 < A := by linarith
  have hc := BridgeFourier.sourceFourier_continuous (normalizedTest_integrable A hpos)
  have hm : AEStronglyMeasurable (archimedeanIntegrand explicitSecondDerivative A) volume :=
    (archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := ((BridgeFourier.actual_fourier_square_integrable A hA).const_mul
    (|archimedeanConstant| + 4)).add
      ((BridgeFourier.actual_logarithmic_fourier_integrable A hA).div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  dsimp only [archimedeanIntegrand]
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) ≤
      (|archimedeanConstant| + 4 + Real.log (1 + 4 * ξ ^ 2) / 2) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) :=
      mul_le_mul_of_nonneg_right (multiplier_abs_le_of_estimate hestimate ξ)
        (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

/-- Proving the actual source multiplier estimate would discharge the remaining B3.1 gate.
The estimate is retained in the theorem type; no inhabitant of it is supplied here. -/
theorem normalization_admissibility_of_multiplier_estimate
    (hestimate : MultiplierEstimateObligation) : NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr
    (actual_archimedean_integrable_of_multiplier_estimate hestimate)

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier
```
