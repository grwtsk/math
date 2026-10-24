# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareAsymptotic.Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a8b8b4a81886c96e80f458cf924ca09ab79ef9a` · SHA-256 `ca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource

/-!
# Exact-normalization prime-square asymptotic for the arithmetic source

The genuine theta remainder moment controls the correlation-derivative error
by an explicit constant divided by A squared. Finite Abel summation and the
proved strict square-index reindexing then identify the original prime-square
sector. The final signed statement includes the original minus-two coefficient.
No estimate for the remaining first-prime sector or the full source below
Laplace rate one follows from this sector calculation.
-/

namespace PrimeSquareAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation

open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource

open scoped Classical

noncomputable section

/-- The actual finite Abel remainder, with a separately proved genuine integral. -/
def primeSquareError (A : ℝ) : ℝ :=
  ∫ u in 0..A, thetaRemainder u *
    deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u

/-- An explicit finite arithmetic constant from the proved theta remainder moment. -/
def primeSquareErrorBudget : ℝ :=
  (260 / 3) * ∫ u in Ioi 0, u * |thetaRemainder u|

theorem primeSquareErrorBudget_nonneg : 0 ≤ primeSquareErrorBudget := by
  unfold primeSquareErrorBudget
  apply mul_nonneg (by norm_num)
  exact setIntegral_nonneg measurableSet_Ioi (fun u hu => mul_nonneg hu.le (abs_nonneg _))

theorem remainder_derivative_norm_bound (A u : ℝ) (hA : 1 ≤ A) (hu : 0 ≤ u) :
    |thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u| ≤
        (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|) := by
  rw [abs_mul]
  calc
    _ ≤ |thetaRemainder u| * ((260 / (3 * A ^ 2)) * u) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_double_derivative_abs_le A u hA hu)
        (abs_nonneg _)
    _ = _ := by ring

theorem remainder_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) (Ioi 0) := by
  have hC : ContDiff ℝ 1 (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) :=
    (sourceCorrelation_contDiff A (by linarith)).comp (contDiff_const.mul contDiff_id)
  have hm : AEStronglyMeasurable (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u)
      (volume.restrict (Ioi 0)) :=
    (thetaRemainder_measurable.mul hC.continuous_deriv_one.measurable).aestronglyMeasurable
  apply (thetaRemainder_first_moment_integrable.const_mul (260 / (3 * A ^ 2))).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  simpa only [Real.norm_eq_abs] using remainder_derivative_norm_bound A u hA hu.le

theorem remainder_derivative_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) volume 0 A :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : 0 ≤ A)).mpr
    ((remainder_derivative_integrable A hA).mono_set Ioc_subset_Ioi_self)

theorem primeSquareError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareError A| ≤ primeSquareErrorBudget / A ^ 2 := by
  have hA0 : 0 ≤ A := by linarith
  have hC0 : 0 ≤ (260 : ℝ) / (3 * A ^ 2) := by positivity
  have hf := (remainder_derivative_integrable A hA).mono_set
    (show Ioc (0 : ℝ) A ⊆ Ioi 0 from fun _ h => h.1)
  have hglobal : IntegrableOn (fun u => (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|))
      (Ioi 0) := thetaRemainder_first_moment_integrable.const_mul (260 / (3 * A ^ 2))
  have hg := hglobal.mono_set
    (show Ioc (0 : ℝ) A ⊆ Ioi 0 from fun _ h => h.1)
  have hp : (∫ u in Ioc 0 A, u * |thetaRemainder u|) ≤ ∫ u in Ioi 0, u * |thetaRemainder u| := by
    apply setIntegral_mono_set thetaRemainder_first_moment_integrable
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact mul_nonneg hu.le (abs_nonneg _)
    · exact Filter.Eventually.of_forall (fun _ h => h.1)
  unfold primeSquareError
  rw [intervalIntegral.integral_of_le hA0]
  calc
    _ ≤ ∫ u in Ioc 0 A, |thetaRemainder u *
        deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (f := fun u => thetaRemainder u *
          deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u)
        (μ := volume.restrict (Ioc 0 A))
    _ ≤ ∫ u in Ioc 0 A, (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|) := by
      refine setIntegral_mono_on ?_ hg measurableSet_Ioc ?_
      · simpa only [Real.norm_eq_abs, IntegrableOn] using hf.norm
      · intro u hu
        exact remainder_derivative_norm_bound A u hA hu.1.le
    _ = (260 / (3 * A ^ 2)) * ∫ u in Ioc 0 A, u * |thetaRemainder u| :=
      integral_const_mul _ _
    _ ≤ (260 / (3 * A ^ 2)) * ∫ u in Ioi 0, u * |thetaRemainder u| :=
      mul_le_mul_of_nonneg_left hp hC0
    _ = primeSquareErrorBudget / A ^ 2 := by unfold primeSquareErrorBudget; ring

theorem primeSquareContribution_eq_main_sub_error (A : ℝ) (hA : 1 ≤ A) :
    primeSquareContribution A =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant - primeSquareError A := by
  rw [primeSquareContribution_eq_closed]
  change (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) = _
  rw [primeSquare_weighted_abel A hA, sourceCorrelation_double_integral A hA]
  rfl
  exact hA

theorem primeSquareContribution_asymptotic_bound (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant)| ≤
        primeSquareErrorBudget / A ^ 2 := by
  rw [primeSquareContribution_eq_main_sub_error A hA]
  have he : (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant -
      primeSquareError A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant) =
        -primeSquareError A := by ring
  rw [he, abs_neg]
  exact primeSquareError_abs_le A hA

theorem actual_primeSquare_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsPrimeSquare,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * primeSquareErrorBudget, mul_nonneg (by norm_num) primeSquareErrorBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * primeSquareContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant| ≤ _
  have he : -2 * primeSquareContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant =
        -2 * (primeSquareContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (primeSquareErrorBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (primeSquareContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

end
end PrimeSquareAsymptoticScratch
```
