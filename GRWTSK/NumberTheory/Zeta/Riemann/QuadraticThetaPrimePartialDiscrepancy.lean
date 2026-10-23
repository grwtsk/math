/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Partial-prime discrepancy form of the short-interval theta target

The remaining X^(3/4) power saving can be written as a finite partial-prime-sum
discrepancy.

For integers A <= B define

  P(A,B) = sum_{A < p <= B, p prime} log p.

Then

  P(A,B) = theta(B) - theta(A),

and therefore

  thetaError(B) - thetaError(A)
    = P(A,B) - (B-A).

Specializing A=2X and B=m with 2X <= m <= 4X gives the exact arithmetic
short-interval object needed by the 7/8 -> 3/4 uniformization.

For a real y in [2X,4X], theta(y) equals theta(floor y), while
0 <= y-floor y < 1. Thus passage from integer-grid discrepancy to real points
has only an additive rounding error below one. Absorbing that additive error
into the eventual power-log majorant is recorded as a separate interface.

No X^(3/4) estimate is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PARTIAL_PRIME_DISCREPANCY_EXACT / THREE_QUARTER_POWER_SAVING_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Logarithmic prime mass on the integer interval (A,B]. -/
def primeIntervalLogMass (A B : ℕ) : ℝ :=
  ∑ p ∈ Finset.Ioc A B with p.Prime, Real.log p

/-- Exact finite-prime identity for Chebyshev theta increments. -/
theorem primeIntervalLogMass_eq_theta_sub
    {A B : ℕ} (hAB : A ≤ B) :
    primeIntervalLogMass A B =
      θ (B : ℝ) - θ (A : ℝ) := by
  unfold primeIntervalLogMass Chebyshev.theta
  simp only [floor_natCast]
  have h0A : 0 ≤ A := Nat.zero_le A
  have hunion :
      (Finset.Ioc 0 A).filter Nat.Prime ∪
          (Finset.Ioc A B).filter Nat.Prime =
        (Finset.Ioc 0 B).filter Nat.Prime := by
    rw [← Finset.filter_union,
      Finset.Ioc_union_Ioc_eq_Ioc h0A hAB]
  have hdisjoint :
      Disjoint
        ((Finset.Ioc 0 A).filter Nat.Prime)
        ((Finset.Ioc A B).filter Nat.Prime) := by
    exact
      (Finset.Ioc_disjoint_Ioc_of_le
        (a := 0) (d := B) le_rfl).mono
        (Finset.filter_subset _ _)
        (Finset.filter_subset _ _)
  have hsum :
      (∑ p ∈ (Finset.Ioc 0 A).filter Nat.Prime, Real.log p) +
          (∑ p ∈ (Finset.Ioc A B).filter Nat.Prime, Real.log p) =
        ∑ p ∈ (Finset.Ioc 0 B).filter Nat.Prime, Real.log p := by
    rw [← Finset.sum_union hdisjoint, hunion]
  linarith

/-- Exact theta-error increment equals prime mass minus interval length. -/
theorem thetaError_nat_sub_eq_primeIntervalDiscrepancy
    {A B : ℕ} (hAB : A ≤ B) :
    thetaError (B : ℝ) - thetaError (A : ℝ) =
      primeIntervalLogMass A B - ((B : ℝ) - (A : ℝ)) := by
  rw [primeIntervalLogMass_eq_theta_sub hAB]
  unfold thetaError
  ring

/-- The nonlinear uniformization target written purely as finite partial prime
sums on integer endpoints. -/
def DyadicPrimePartialDiscrepancyLogSqAt (ρ : ℝ) : Prop :=
  ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ m : ℕ,
        2 * dyadicScale j ≤ m →
        m ≤ 4 * dyadicScale j →
        |primeIntervalLogMass (2 * dyadicScale j) m -
            ((m : ℝ) - ((2 * dyadicScale j : ℕ) : ℝ))| ≤
          S *
            Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ) *
            (Real.log (dyadicScale j : ℝ))^2

/-- At integer endpoints, the partial-prime discrepancy is exactly the
theta-error oscillation from 2X. -/
theorem primePartialDiscrepancy_eq_thetaErrorOscillation
    {X m : ℕ}
    (hXm : 2 * X ≤ m) :
    primeIntervalLogMass (2 * X) m -
        ((m : ℝ) - ((2 * X : ℕ) : ℝ)) =
      thetaError (m : ℝ) -
        thetaError ((2 * X : ℕ) : ℝ) := by
  symm
  exact thetaError_nat_sub_eq_primeIntervalDiscrepancy hXm

/-- The integer-grid prime supplier is exactly an integer-grid theta-error
supplier. -/
def DyadicIntegerThetaErrorLogSqOscillationAt (ρ : ℝ) : Prop :=
  ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ m : ℕ,
        2 * dyadicScale j ≤ m →
        m ≤ 4 * dyadicScale j →
        |thetaError (m : ℝ) -
            thetaError ((2 * dyadicScale j : ℕ) : ℝ)| ≤
          S *
            Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ) *
            (Real.log (dyadicScale j : ℝ))^2

theorem primePartialDiscrepancy_iff_integerThetaOscillation
    (ρ : ℝ) :
    DyadicPrimePartialDiscrepancyLogSqAt ρ ↔
      DyadicIntegerThetaErrorLogSqOscillationAt ρ := by
  constructor
  · rintro ⟨S, hS, j₀, h⟩
    refine ⟨S, hS, j₀, ?_⟩
    intro j hj m hm0 hm1
    rw [← primePartialDiscrepancy_eq_thetaErrorOscillation hm0]
    exact h j hj m hm0 hm1
  · rintro ⟨S, hS, j₀, h⟩
    refine ⟨S, hS, j₀, ?_⟩
    intro j hj m hm0 hm1
    rw [primePartialDiscrepancy_eq_thetaErrorOscillation hm0]
    exact h j hj m hm0 hm1

/-- Theta is unchanged when a nonnegative real argument is replaced by its
natural floor. -/
theorem theta_eq_theta_floor_nat
    {y : ℝ} (hy : 0 ≤ y) :
    θ y = θ ((⌊y⌋₊ : ℕ) : ℝ) := by
  unfold Chebyshev.theta
  simp

/-- Real-to-integer rounding changes thetaError by less than one. -/
theorem thetaError_sub_floor_abs_lt_one
    {y : ℝ} (hy : 0 ≤ y) :
    |thetaError y - thetaError ((⌊y⌋₊ : ℕ) : ℝ)| < 1 := by
  rw [theta_eq_theta_floor_nat hy]
  unfold thetaError
  have hfloor :
      ((⌊y⌋₊ : ℕ) : ℝ) ≤ y :=
    Nat.floor_le hy
  have hlt :
      y < ((⌊y⌋₊ : ℕ) : ℝ) + 1 := by
    exact_mod_cast Nat.lt_floor_add_one y
  have hnonneg :
      0 ≤ y - ((⌊y⌋₊ : ℕ) : ℝ) := by linarith
  have hless :
      y - ((⌊y⌋₊ : ℕ) : ℝ) < 1 := by linarith
  rw [show
      θ ((⌊y⌋₊ : ℕ) : ℝ) - y -
          (θ ((⌊y⌋₊ : ℕ) : ℝ) -
            ((⌊y⌋₊ : ℕ) : ℝ)) =
        -(y - ((⌊y⌋₊ : ℕ) : ℝ)) by ring]
  rw [abs_neg, abs_of_nonneg hnonneg]
  exact hless

/-- Explicit harmless final adapter: absorb the additive floor-rounding error
into the eventual power-log majorant and pass from integer-grid control to real
octave control. -/
def PrimePartialRoundingUniformizationAt (ρ : ℝ) : Prop :=
  DyadicIntegerThetaErrorLogSqOscillationAt ρ →
    DyadicThetaErrorLogSqOscillationAt ρ

/-- Once rounding uniformization is supplied, the finite partial-prime theorem
feeds the existing logarithmic-loss maximal adapter. -/
theorem primePartialDiscrepancy_rounding_to_oscillation
    {ρ : ℝ}
    (hprime : DyadicPrimePartialDiscrepancyLogSqAt ρ)
    (hround : PrimePartialRoundingUniformizationAt ρ) :
    DyadicThetaErrorOscillationAt ρ := by
  apply logSqOscillation_to_oscillation
  exact hround
    ((primePartialDiscrepancy_iff_integerThetaOscillation ρ).1 hprime)

/-- First-step arithmetic target. -/
def SevenEighthsPrimePartialDiscrepancy : Prop :=
  DyadicPrimePartialDiscrepancyLogSqAt ((7 : ℝ) / 8)

end GRWTSK.RiemannHypothesis
