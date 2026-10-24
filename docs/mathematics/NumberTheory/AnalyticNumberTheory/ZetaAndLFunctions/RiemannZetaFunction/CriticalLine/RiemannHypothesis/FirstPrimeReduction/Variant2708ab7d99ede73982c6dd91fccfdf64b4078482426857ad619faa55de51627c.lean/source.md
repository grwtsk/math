# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FirstPrimeReduction.Variant2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62fbcdf2c6d7f1f5f7782badfe48bd9ca52e68df` · SHA-256 `2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic
import FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate

namespace FirstPrimeReductionScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPowerAsymptotic FirstPrimeAbel PrimeHarmonicRemainder
noncomputable section

theorem sourceQuadraticValue_eq_centered_firstPrime (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A + 2 * firstPrimeDecayingMain A +
        2 * (firstPrimeRemainder A - (256 / 315) ^ 2 * A / (64 * sourceNormalization A)) -
        2 * (thetaConstant + properPowerConstant) + sourcePowerRemainder A := by
  rw [sourceQuadraticValue_exact_prime_remainder A hA, primeContribution_eq_remainder A hA]
  ring

theorem source_lower_comparison (A : ℝ) (hA : 1 ≤ A) :
    2 * (firstPrimeRemainder A - (256 / 315) ^ 2 * A / (64 * sourceNormalization A)) +
      archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant) -
        (2 * properPowerBudget) / A ^ 2 ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hd := (abs_le.mp (firstPrimeDecayingMain_abs_le A hA)).1
  have hr := (abs_le.mp (sourcePowerRemainder_abs_le A hA)).1
  rw [sourceQuadraticValue_eq_centered_firstPrime A hA]
  linarith

theorem source_negativePart_comparison (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      2 * max ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) -
        firstPrimeRemainder A) 0 +
      |archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant)| +
        (2 * properPowerBudget) / A ^ 2 := by
  have h := source_lower_comparison A hA
  have hm := le_max_left
    ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) - firstPrimeRemainder A) 0
  have hc := neg_le_abs
    (archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant))
  apply max_le
  · linarith
  · exact add_nonneg
      (add_nonneg (mul_nonneg (by norm_num) (le_max_right _ _)) (abs_nonneg _))
      (div_nonneg (mul_nonneg (by norm_num) properPowerBudget_nonneg) (sq_nonneg A))

end
end FirstPrimeReductionScratch
```
