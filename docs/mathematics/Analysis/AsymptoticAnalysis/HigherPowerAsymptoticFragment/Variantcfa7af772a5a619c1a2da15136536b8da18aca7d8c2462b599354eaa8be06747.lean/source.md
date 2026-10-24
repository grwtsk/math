# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerAsymptoticFragment.Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a46e24541bd04f69583776ef796aa3539a4ba64` · SHA-256 `cfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Summable higher-prime-power deviation from the arithmetic constant

The original prime/exponent index retains every prime and every exponent at
least three. Genuine weight and logarithmic-moment summability precede the
sum subtraction and the absolute error estimate. This sector estimate does
not control the remaining first-prime contribution.
-/
namespace HigherPowerAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open HigherPowerMomentScratch CorrelationDeviationScratch
noncomputable section

/-- The genuine unmodified higher-prime-power arithmetic constant. -/
def higherPowerConstant : ℝ :=
  ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)

/-- The genuine higher-prime-power correlation series. -/
def higherPowerSum (A : ℝ) : ℝ :=
  ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))

/-- An explicit finite second-moment budget, independent of A. -/
def higherPowerBudget : ℝ :=
  (65 / 6) * ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
      ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2

theorem higherPowerBudget_nonneg : 0 ≤ higherPowerBudget := by
  unfold higherPowerBudget
  exact mul_nonneg (by norm_num) (tsum_nonneg (fun q => by positivity))

theorem higherPower_correlation_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))) := by
  apply primeHigherWeight_summable.of_norm_bounded
  intro q
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (by positivity : 0 ≤
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2))]
  exact mul_le_of_le_one_right (by positivity)
    (EstimateCorrelation.actual_correlation_abs_le_one A _ hA)

theorem higherPowerSum_le_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A ≤ higherPowerConstant := by
  unfold higherPowerSum higherPowerConstant
  apply Summable.tsum_le_tsum _ (higherPower_correlation_summable A hA)
    primeHigherWeight_summable
  intro q
  exact mul_le_of_le_one_right (by positivity)
    (le_trans (le_abs_self _) (EstimateCorrelation.actual_correlation_abs_le_one A _ hA))

theorem higherPower_deviation_term_bound (A : ℝ) (p k : ℕ) (hA : 1 ≤ A) :
    |Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      (sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) - 1)| ≤
        (65 / (6 * A ^ 2)) * higherMoment p k := by
  have hw : 0 ≤ Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by positivity
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2)) *
        (65 * ((k : ℝ) * Real.log (p : ℝ)) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A _ hA) hw
    _ = _ := by unfold higherMoment; ring

theorem higherPower_deviation_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖) := by
  apply Summable.of_nonneg_of_le (fun _ => norm_nonneg _) _
    (primeHigherMoment_summable.mul_left (65 / (6 * A ^ 2)))
  intro q
  simpa only [Real.norm_eq_abs, higherMoment] using
    higherPower_deviation_term_bound A q.1.val q.2.val hA

theorem higherPower_deviation_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)) :=
  (higherPower_deviation_norm_summable A hA).of_norm

theorem higherPowerSum_sub_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A - higherPowerConstant =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1) := by
  rw [higherPowerSum, higherPowerConstant, ← Summable.tsum_sub (higherPower_correlation_summable A hA)
    primeHigherWeight_summable]
  apply tsum_congr
  intro q
  ring

theorem higherPowerSum_deviation_bound (A : ℝ) (hA : 1 ≤ A) :
    |higherPowerSum A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 := by
  rw [higherPowerSum_sub_constant A hA]
  calc
    _ ≤ ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖ := by
      simpa only [Real.norm_eq_abs] using
        norm_tsum_le_tsum_norm (higherPower_deviation_norm_summable A hA)
    _ ≤ ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        (65 / (6 * A ^ 2)) * higherMoment q.1.val q.2.val := by
      apply Summable.tsum_le_tsum _ (higherPower_deviation_norm_summable A hA)
        (primeHigherMoment_summable.mul_left (65 / (6 * A ^ 2)))
      intro q
      simpa only [Real.norm_eq_abs, higherMoment] using higherPower_deviation_term_bound A q.1.val q.2.val hA
    _ = higherPowerBudget / A ^ 2 := by
      rw [tsum_mul_left]
      unfold higherPowerBudget higherMoment
      ring

open HigherPowerSourceScratch HigherPowerTsumScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped Classical

theorem actualHigherPower_deviation_bound (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerContribution A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 := by
  rw [higherPrimePowerContribution_eq_tsum A hA]
  exact higherPowerSum_deviation_bound A hA

theorem actualHigherPower_le_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A ≤ higherPowerConstant := by
  rw [higherPrimePowerContribution_eq_tsum A hA]
  exact higherPowerSum_le_constant A hA

theorem actual_higherPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsHigherPrimePower,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) + 2 * higherPowerConstant| ≤
        C / A ^ 2 := by
  refine ⟨2 * higherPowerBudget, mul_nonneg (by norm_num) higherPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * higherPrimePowerContribution A + 2 * higherPowerConstant| ≤ _
  have he : -2 * higherPrimePowerContribution A + 2 * higherPowerConstant =
      -2 * (higherPrimePowerContribution A - higherPowerConstant) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (higherPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualHigherPower_deviation_bound A hA) (by norm_num)
    _ = _ := by ring

end
end HigherPowerAsymptoticScratch
```
