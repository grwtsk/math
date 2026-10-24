# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompleteFiniteSignedEnergy.Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f87bba98a2517aabccc8292010f04163816c45ae` · SHA-256 `62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCompensatedBilinearConsumer
import SourceJointCountertermAlignment

/-!
Source-faithful recombination of the independently checked finite-box Fubini
and original counterterm alignment. All scale cutoffs, signed cells, lower
error boundary, centered deleted diagonal and independent main term are retained.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCompleteFiniteSignedEnergy

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourcePairing SourceJointMangoldtWork SourceStrictColumnInterior
open SourceVaughanHankel SourceCompensatedBilinearConsumer SourceDivisorCounterterms
open SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering Realization
open EstimatePlainKernel EstimateMertensAbel

noncomputable section

/-- One complete finite signed energy for the literal strict-column interior. -/
theorem strictColumnInterior_eq_complete_signed_energy (A : ℝ) (hA : 1 ≤ A) :
    let q := normalizedTest explicitSecondDerivative A
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      (∫ v : ℝ, timeRow A (deriv q) v * columnRow A (deriv q) v) -
      (1 / 4 : ℝ) * (∫ v : ℝ, timeRow A q v * columnRow A q v) -
      centeredDeletedDiagonal A - independentMainTerm A := by
  dsimp only
  rw [← SourceJointWorkConsumer.compensatedJointWork_eq_strictColumnInterior A hA,
    ← compensatedBilinearWork_eq_compensatedJointWork A hA]
  unfold compensatedBilinearWork actualBilinearWork
  ring

/-- Independent divisor counterterms reconstruct that same strict signed energy,
with its actual physical quotient endpoint still explicit. -/
theorem strictColumnInterior_eq_aligned_divisor_energy (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    strictColumnInterior A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d * divisorRemainder A d) - B K * R K := by
  have hd := jointSignedRemainder_eq_divisor_remainders A hA
  rw [jointSignedRemainder_eq_covariance A hA] at hd
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  dsimp only at he ⊢
  linarith

/-- Square completion retains both independent rows and both signed sectors;
no favorable sign is inferred. -/
theorem complete_density_square_completion (x1 y1 x0 y0 : ℝ) :
    -(x1 * y1 + (1 / 4 : ℝ) * (x0 * y0)) =
      (1 / 4 : ℝ) * (x1 - y1) ^ 2 + (1 / 16 : ℝ) * (x0 - y0) ^ 2 -
      ((1 / 4 : ℝ) * (x1 + y1) ^ 2 + (1 / 16 : ℝ) * (x0 + y0) ^ 2) := by
  ring

end
end FormalResearch.RiemannHypothesis.SourceCompleteFiniteSignedEnergy
```
