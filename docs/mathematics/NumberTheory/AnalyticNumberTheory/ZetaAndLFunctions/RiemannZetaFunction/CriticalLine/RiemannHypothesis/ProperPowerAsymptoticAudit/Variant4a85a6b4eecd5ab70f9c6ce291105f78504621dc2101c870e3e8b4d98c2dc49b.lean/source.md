# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProperPowerAsymptoticAudit.Variant4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64570b07ab80226bfef1f9c514a2e2a242f0c369` · SHA-256 `4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic
import FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic

/-!
# All proper prime powers and the exact remaining source expression

The square and higher sectors have genuine arithmetic constants and uniform
inverse-square errors. Their exact source split gives one proper-power
asymptotic, preserving the strict cutoff and prime-two contributions. The
resulting full quadratic identity leaves the original archimedean and
first-prime expressions explicit; it does not estimate their cancellation.
-/
namespace ProperPowerAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareAsymptotic HigherPowerAsymptotic
open PrimeSquareSource HigherPowerSource ProperPrimePowers
noncomputable section

/-- The sum of the genuine prime-square centering and higher-power arithmetic constant. -/
def properPowerConstant : ℝ := thetaConstant + higherPowerConstant

/-- A finite uniform budget supplied by the two checked arithmetic moment bounds. -/
def properPowerBudget : ℝ := primeSquareErrorBudget + higherPowerBudget

/-- The exact signed deviation of the full proper-power contribution. -/
def properPowerError (A : ℝ) : ℝ :=
  -primeSquareError A + (higherPrimePowerContribution A - higherPowerConstant)

/-- The proper-power error with its original coefficient in the quadratic source. -/
def sourcePowerRemainder (A : ℝ) : ℝ := -2 * properPowerError A

theorem properPowerBudget_nonneg : 0 ≤ properPowerBudget :=
  add_nonneg primeSquareErrorBudget_nonneg higherPowerBudget_nonneg

theorem properPowerError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |properPowerError A| ≤ properPowerBudget / A ^ 2 := by
  unfold properPowerError
  calc
    _ ≤ |-primeSquareError A| + |higherPrimePowerContribution A - higherPowerConstant| :=
      abs_add_le _ _
    _ ≤ primeSquareErrorBudget / A ^ 2 + higherPowerBudget / A ^ 2 := by
      rw [abs_neg]
      exact add_le_add (primeSquareError_abs_le A hA) (actualHigherPower_deviation_bound A hA)
    _ = _ := by unfold properPowerBudget; ring

theorem properPrimePowerContribution_eq_main_add_error (A : ℝ) (hA : 1 ≤ A) :
    properPrimePowerContribution A =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
        properPowerError A := by
  rw [properPrimePowerContribution_eq_square_add_higher,
    primeSquareContribution_eq_main_sub_error A hA]
  unfold properPowerConstant properPowerError
  ring

theorem properPrimePowerContribution_asymptotic_bound (A : ℝ) (hA : 1 ≤ A) :
    |properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)| ≤
        properPowerBudget / A ^ 2 := by
  rw [properPrimePowerContribution_eq_main_add_error A hA]
  have he : (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
      properPowerError A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant) =
        properPowerError A := by ring
  rw [he]
  exact properPowerError_abs_le A hA

theorem actual_properPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter (fun n => ¬n.Prime),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * properPowerBudget, mul_nonneg (by norm_num) properPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤ _
  have he : -2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant =
        -2 * (properPrimePowerContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPrimePowerContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

theorem sourcePowerRemainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourcePowerRemainder A| ≤ (2 * properPowerBudget) / A ^ 2 := by
  rw [sourcePowerRemainder, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPowerError_abs_le A hA) (by norm_num)
    _ = _ := by ring

theorem sourceQuadraticValue_exact_prime_remainder (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
          sourcePowerRemainder A := by
  rw [sourceQuadraticValue, PrimeSector.prime_power_contribution_eq,
    properPrimePowerContribution_eq_main_add_error A hA]
  unfold sourcePowerRemainder
  ring

theorem sourceQuadraticValue_prime_remainder_bound (A : ℝ) (hA : 1 ≤ A) :
    |sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant)| ≤
          (2 * properPowerBudget) / A ^ 2 := by
  rw [sourceQuadraticValue_exact_prime_remainder A hA]
  have he : archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
        sourcePowerRemainder A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant) =
          sourcePowerRemainder A := by ring
  rw [he]
  exact sourcePowerRemainder_abs_le A hA

end
end ProperPowerAsymptoticScratch

#print ProperPowerAsymptoticScratch.properPowerConstant
#print axioms ProperPowerAsymptoticScratch.properPowerConstant
#print ProperPowerAsymptoticScratch.properPowerBudget
#print axioms ProperPowerAsymptoticScratch.properPowerBudget
#print ProperPowerAsymptoticScratch.properPowerError
#print axioms ProperPowerAsymptoticScratch.properPowerError
#print ProperPowerAsymptoticScratch.sourcePowerRemainder
#print axioms ProperPowerAsymptoticScratch.sourcePowerRemainder
#print ProperPowerAsymptoticScratch.properPowerBudget_nonneg
#print axioms ProperPowerAsymptoticScratch.properPowerBudget_nonneg
#print ProperPowerAsymptoticScratch.properPowerError_abs_le
#print axioms ProperPowerAsymptoticScratch.properPowerError_abs_le
#print ProperPowerAsymptoticScratch.properPrimePowerContribution_eq_main_add_error
#print axioms ProperPowerAsymptoticScratch.properPrimePowerContribution_eq_main_add_error
#print ProperPowerAsymptoticScratch.properPrimePowerContribution_asymptotic_bound
#print axioms ProperPowerAsymptoticScratch.properPrimePowerContribution_asymptotic_bound
#print ProperPowerAsymptoticScratch.actual_properPower_signed_asymptotic
#print axioms ProperPowerAsymptoticScratch.actual_properPower_signed_asymptotic
#print ProperPowerAsymptoticScratch.sourcePowerRemainder_abs_le
#print axioms ProperPowerAsymptoticScratch.sourcePowerRemainder_abs_le
#print ProperPowerAsymptoticScratch.sourceQuadraticValue_exact_prime_remainder
#print axioms ProperPowerAsymptoticScratch.sourceQuadraticValue_exact_prime_remainder
#print ProperPowerAsymptoticScratch.sourceQuadraticValue_prime_remainder_bound
#print axioms ProperPowerAsymptoticScratch.sourceQuadraticValue_prime_remainder_bound
```
