/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStageMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRootProjection

/-!
# Whole-line weighted translation bounds returned to the literal primes

The source remains `LowSchur.primeWeight`, `OddSineForm.primeEnergy`, and
`OddRootProjection.pairedPrimeResponse`. No unpaired character has been
made real by erasing its phase. The pair theorem uses the established
native averaging identity and the actual bound for `pairedPrimeWeight`.

For the physical test f=sigma*u, a proved envelope
|sigma(t)*sigma(t+r)| <= s bounds the correlation by s*||u||_2^2.
The proof integrates Young's two-square inequality on the entire line and
uses Lebesgue translation invariance. No finite spatial sample replaces
the pointwise envelope. Multiplication by the actual nonnegative von
Mangoldt weight and finite summation give the literal supported source.
An entire summable majorant then pays every omitted prime power.

The envelope and its total bound are inputs, not asserted theta facts.
The supplied interval checker must still be refined into these hypotheses
for sigma(t)^2=phi(t)/(2*cosh(t/2)). This module does not turn its rational
output into a source inequality by definition. Results here are for real
tests; the complex self-adjoint operator realization is not formalized.

Elaboration, compilation, fresh kernel replay, transitive axiom audit,
and independent analytical review: NOT_RUN. These standard comparison
arguments do not establish RH/GRH or an all-accuracy lower family.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open LowSchur OddRootProjection OddSineForm

/-- The physical input retains its spatial multiplier. -/
def physicalTest (sigma u : ℝ → ℝ) (t : ℝ) : ℝ := sigma t * u t

/-- Whole-line correlation, not a finite sample or a periodic translation. -/
def weightedCorrelation (sigma u : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, physicalTest sigma u t * physicalTest sigma u (t + r)

theorem abs_weightedCorrelation_le {sigma u : ℝ → ℝ} (r s : ℝ)
    (hu : MemLp u 2 volume) (hs : 0 ≤ s)
    (henv : ∀ t : ℝ, |sigma t * sigma (t + r)| ≤ s) :
    |weightedCorrelation sigma u r| ≤ s * coordinateMass u := by
  have hu2 := hu.integrable_sq
  have ht : Integrable (fun t : ℝ => u (t + r) ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hu2
  have hmajor := ((hu2.add ht).div_const 2).const_mul s
  have hpoint (t : ℝ) :
      ‖physicalTest sigma u t * physicalTest sigma u (t + r)‖ ≤
        s * ((u t ^ 2 + u (t + r) ^ 2) / 2) := by
    have hy : |u t * u (t + r)| ≤ (u t ^ 2 + u (t + r) ^ 2) / 2 := by
      rw [abs_mul]
      nlinarith [sq_nonneg (|u t| - |u (t + r)|), sq_abs (u t), sq_abs (u (t + r))]
    have heq : physicalTest sigma u t * physicalTest sigma u (t + r) =
        (sigma t * sigma (t + r)) * (u t * u (t + r)) := by
      unfold physicalTest
      ring
    rw [heq, Real.norm_eq_abs, abs_mul]
    exact mul_le_mul (henv t) hy (abs_nonneg _) hs
  have h := norm_integral_le_of_norm_le hmajor (Filter.Eventually.of_forall hpoint)
  simp only [Real.norm_eq_abs, Pi.add_apply] at h
  rw [integral_const_mul, integral_div, integral_add hu2 ht,
    integral_add_right_eq_self (fun t : ℝ => u t ^ 2) r] at h
  change |weightedCorrelation sigma u r| ≤ s * ((coordinateMass u + coordinateMass u) / 2) at h
  convert h using 1 <;> ring

/-- Signed finite coefficients are bounded only AFTER source assembly. -/
theorem abs_finite_weightedPrime_le (I : Finset ℕ) (a e : ℕ → ℝ)
    {sigma u : ℝ → ℝ} (hu : MemLp u 2 volume)
    (he : ∀ n ∈ I, 0 ≤ e n)
    (ha : ∀ n ∈ I, |a n| ≤ primeWeight n)
    (henv : ∀ n ∈ I, ∀ t : ℝ,
      |sigma t * sigma (t + Real.log (n : ℝ))| ≤ e n) :
    |2 * ∑ n ∈ I, a n * weightedCorrelation sigma u (Real.log (n : ℝ))| ≤
      (2 * ∑ n ∈ I, primeWeight n * e n) * coordinateMass u := by
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ I, |a n * weightedCorrelation sigma u (Real.log (n : ℝ))| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ I, (primeWeight n * e n) * coordinateMass u := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      rw [abs_mul]
      have h := mul_le_mul (ha n hn)
        (abs_weightedCorrelation_le (Real.log (n : ℝ)) (e n) hu (he n hn) (henv n hn))
        (abs_nonneg _) (primeWeight_nonneg n)
      simpa only [mul_assoc] using h
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- Every supported zeta source uses the original prime inventory. -/
theorem abs_primeEnergy_physicalTest_le (T : ℝ) (e : ℕ → ℝ)
    {sigma u : ℝ → ℝ} (hu : MemLp u 2 volume)
    (he : ∀ n ∈ activePrimePowers T, 0 ≤ e n)
    (henv : ∀ n ∈ activePrimePowers T, ∀ t : ℝ,
      |sigma t * sigma (t + Real.log (n : ℝ))| ≤ e n) :
    |primeEnergy T (physicalTest sigma u)| ≤
      (2 * ∑ n ∈ activePrimePowers T, primeWeight n * e n) * coordinateMass u := by
  simpa only [primeEnergy, weightedCorrelation] using
    abs_finite_weightedPrime_le (activePrimePowers T) primeWeight e hu he
      (fun n _ => by rw [abs_of_nonneg (primeWeight_nonneg n)]) henv

/-- Return to BOTH native character responses. No extra zeta pole occurs. -/
theorem abs_pairedPrimeResponse_physicalTest_le {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (e : ℕ → ℝ)
    {sigma u : ℝ → ℝ} (hu : MemLp u 2 volume)
    (he : ∀ n ∈ activePrimePowers T, 0 ≤ e n)
    (henv : ∀ n ∈ activePrimePowers T, ∀ t : ℝ,
      |sigma t * sigma (t + Real.log (n : ℝ))| ≤ e n) :
    |pairedPrimeResponse chi T
      (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ))| ≤
      (2 * ∑ n ∈ activePrimePowers T, primeWeight n * e n) * coordinateMass u := by
  rw [pairedPrimeResponse_native]
  simp only [Complex.ofReal_re]
  exact abs_finite_weightedPrime_le (activePrimePowers T) (pairedPrimeWeight chi) e hu he
    (fun n _ => abs_pairedPrimeWeight_le chi n) henv

/-- The all-natural-number majorant retains every prime power. Zero
von Mangoldt weights are not relabelled as missing primes. -/
def completePrimeAllowance (e : ℕ → ℝ) : ℝ := 2 * ∑' n : ℕ, primeWeight n * e n

theorem finitePrimeAllowance_le_complete (I : Finset ℕ) (e : ℕ → ℝ)
    (he : ∀ n, 0 ≤ e n) (hs : Summable (fun n => primeWeight n * e n)) :
    (2 : ℝ) * ∑ n ∈ I, primeWeight n * e n ≤ completePrimeAllowance e := by
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  exact hs.sum_le_tsum I (fun n _ => mul_nonneg (primeWeight_nonneg n) (he n))

/-- A literal complete remainder; no finite prefix is declared exhaustive. -/
def unobservedPrimeAllowance (I : Finset ℕ) (e : ℕ → ℝ) : ℝ :=
  completePrimeAllowance e - 2 * ∑ n ∈ I, primeWeight n * e n

theorem completePrimeAllowance_eq_prefix_add_tail (I : Finset ℕ) (e : ℕ → ℝ) :
    completePrimeAllowance e =
      (2 * ∑ n ∈ I, primeWeight n * e n) + unobservedPrimeAllowance I e := by
  unfold unobservedPrimeAllowance
  ring

theorem unobservedPrimeAllowance_nonneg (I : Finset ℕ) (e : ℕ → ℝ)
    (he : ∀ n, 0 ≤ e n) (hs : Summable (fun n => primeWeight n * e n)) :
    0 ≤ unobservedPrimeAllowance I e :=
  sub_nonneg.mpr (finitePrimeAllowance_le_complete I e he hs)

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
