/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Literal prime-only formulas for the recovered witness

On a prime p, the source coefficient is exactly log(p)/p. This module unfolds
the prime-only witness completely into classical prime sums.

The two endpoint moments satisfy the exact cancellation

  primeMass0(X) + primeMass1(X)
    = primeWindowLogMass(X)/X - 1.

Thus one endpoint direction is exactly the logarithmic prime mass discrepancy
of the octave.

For every nonzero Fourier mode the prime-only coordinate is a fixed continuum
background minus

  sum_{X<p<=2X} (log p/p) (exp(-2*pi*i*k*p/X)-1)
  --------------------------------------------------- .
                     -2*pi*i*k

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ONLY_WITNESS_LITERAL_FORMULAS_EXPOSED.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem coefficient_eq_log_div_of_prime
    {p : ℕ} (hp : p.Prime) :
    coefficient p = Real.log p / (p : ℝ) := by
  unfold coefficient mangoldt
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]

def primeWindowHarmonicLogMass (X : ℕ) : ℝ :=
  ∑ p ∈ (window X).filter Nat.Prime,
    Real.log p / (p : ℝ)

def primeWindowLogMass (X : ℕ) : ℝ :=
  ∑ p ∈ (window X).filter Nat.Prime, Real.log p

theorem primeOnlyMass0_eq_harmonicLogMass
    (X : ℕ) :
    primeOnlyMass0 X =
      primeWindowHarmonicLogMass X - Real.log 2 := by
  unfold primeOnlyMass0 primeWindowHarmonicLogMass
  congr 1
  apply Finset.sum_congr rfl
  intro p hpMem
  exact coefficient_eq_log_div_of_prime
    (Finset.mem_filter.mp hpMem).2

theorem primeOnlyMass1_eq_logMass_div_sub_harmonic
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass1 X =
      primeWindowLogMass X / (X : ℝ) -
        primeWindowHarmonicLogMass X -
        (1 - Real.log 2) := by
  unfold primeOnlyMass1 primeWindowLogMass
    primeWindowHarmonicLogMass
  have hsum :
      (∑ p ∈ (window X).filter Nat.Prime,
          coefficient p * location X p) =
        (∑ p ∈ (window X).filter Nat.Prime,
          Real.log p / (X : ℝ)) -
        (∑ p ∈ (window X).filter Nat.Prime,
          Real.log p / (p : ℝ)) := by
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hpMem
    have hp := (Finset.mem_filter.mp hpMem).2
    have hp0 : (p : ℝ) ≠ 0 := by
      exact_mod_cast hp.pos.ne'
    have hX0 : (X : ℝ) ≠ 0 := by
      exact_mod_cast (Nat.ne_of_gt hX)
    rw [coefficient_eq_log_div_of_prime hp]
    unfold location
    field_simp [hp0, hX0]
  rw [hsum, Finset.sum_div]

/-- Exact endpoint cancellation. -/
theorem primeOnlyMass0_add_mass1
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass0 X + primeOnlyMass1 X =
      primeWindowLogMass X / (X : ℝ) - 1 := by
  rw [primeOnlyMass0_eq_harmonicLogMass,
    primeOnlyMass1_eq_logMass_div_sub_harmonic hX]
  ring

/-- The octave logarithmic prime mass is the Chebyshev-theta increment. -/
theorem primeWindowLogMass_eq_theta_sub
    (X : ℕ) :
    primeWindowLogMass X =
      θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ) := by
  unfold primeWindowLogMass window
  simp only [Chebyshev.theta, Nat.floor_natCast]
  have hle₀X : 0 ≤ X := Nat.zero_le X
  have hleX2X : X ≤ 2 * X := by omega
  have hunion :
      (Finset.Ioc 0 X).filter Nat.Prime ∪
          (Finset.Ioc X (2 * X)).filter Nat.Prime =
        (Finset.Ioc 0 (2 * X)).filter Nat.Prime := by
    rw [← Finset.filter_union,
      Finset.Ioc_union_Ioc_eq_Ioc hle₀X hleX2X]
  have hdisjoint :
      Disjoint
        ((Finset.Ioc 0 X).filter Nat.Prime)
        ((Finset.Ioc X (2 * X)).filter Nat.Prime) := by
    exact (Finset.Ioc_disjoint_Ioc_of_le (a := 0) (d := 2 * X) le_rfl).mono
      (Finset.filter_subset _ _)
      (Finset.filter_subset _ _)
  have hsum :
      (∑ p ∈ (Finset.Ioc 0 X).filter Nat.Prime, Real.log p) +
        (∑ p ∈ (Finset.Ioc X (2 * X)).filter Nat.Prime, Real.log p) =
      ∑ p ∈ (Finset.Ioc 0 (2 * X)).filter Nat.Prime, Real.log p := by
    rw [← Finset.sum_union hdisjoint, hunion]
  linarith

/-- Endpoint sum is exactly the normalized theta increment discrepancy. -/
theorem primeOnlyMass0_add_mass1_eq_theta_increment
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass0 X + primeOnlyMass1 X =
      (θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ)) /
        (X : ℝ) - 1 := by
  rw [primeOnlyMass0_add_mass1 hX,
    primeWindowLogMass_eq_theta_sub]

/-- Prime-only weighted DFT with the coefficient written as log p / p. -/
def primeLogWeightedDFTPhaseSum
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ p ∈ (window X).filter Nat.Prime,
    ((Real.log p / (p : ℝ) : ℝ) : ℂ) *
      greenDFTPhase X k p

def primeLogWeightedMassComplex (X : ℕ) : ℂ :=
  ∑ p ∈ (window X).filter Nat.Prime,
    ((Real.log p / (p : ℝ) : ℝ) : ℂ)

theorem greenPrimeOnlyDFTPhaseSum_eq_logWeighted
    (X : ℕ) (k : ℤ) :
    greenPrimeOnlyDFTPhaseSum X k =
      primeLogWeightedDFTPhaseSum X k := by
  unfold greenPrimeOnlyDFTPhaseSum
    primeLogWeightedDFTPhaseSum
  apply Finset.sum_congr rfl
  intro p hpMem
  rw [coefficient_eq_log_div_of_prime
    (Finset.mem_filter.mp hpMem).2]

theorem greenPrimeOnlyWindowMassComplex_eq_logWeighted
    (X : ℕ) :
    greenPrimeOnlyWindowMassComplex X =
      primeLogWeightedMassComplex X := by
  unfold greenPrimeOnlyWindowMassComplex
    primeLogWeightedMassComplex
  apply Finset.sum_congr rfl
  intro p hpMem
  rw [coefficient_eq_log_div_of_prime
    (Finset.mem_filter.mp hpMem).2]

def primeLogWeightedDFTDiscrepancy
    (X : ℕ) (k : ℤ) : ℂ :=
  primeLogWeightedDFTPhaseSum X k -
    primeLogWeightedMassComplex X

theorem greenPrimeOnlyFourierPrimeCoordinate_eq_logWeightedDFT
    (X : ℕ) (k : ℤ) :
    greenPrimeOnlyFourierPrimeCoordinate X k =
      primeLogWeightedDFTDiscrepancy X k /
        (-2 * Real.pi * Complex.I * k) := by
  unfold greenPrimeOnlyFourierPrimeCoordinate
    primeLogWeightedDFTDiscrepancy
  rw [greenPrimeOnlyDFTPhaseSum_eq_logWeighted,
    greenPrimeOnlyWindowMassComplex_eq_logWeighted]

theorem greenPrimeOnlyArithmeticFourierCoordinate_eq_literal
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    greenPrimeOnlyArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        primeLogWeightedDFTDiscrepancy X k /
          (-2 * Real.pi * Complex.I * k) := by
  rw [greenPrimeOnlyArithmeticFourierCoordinate, if_neg hk]
  rw [greenPrimeOnlyFourierPrimeCoordinate_eq_logWeightedDFT]

end GRWTSK.RiemannHypothesis
