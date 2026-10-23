/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateNecessaryDecay
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Higher prime powers are a square-root-scale DFT remainder

Split the exact weighted von Mangoldt DFT source into prime and non-prime
parts. On primes, Lambda(p)=log p. The non-prime part is exactly the higher
prime-power channel because von Mangoldt vanishes off prime powers.

Pinned Mathlib proves

  psi(x) - theta(x) = sum of Lambda(n) over non-primes n <= x

and

  psi(x) - theta(x) <= C sqrt(x).

Since every n in the octave (X,2X] satisfies n>X, the weighted non-prime mass

  sum_{X<n<=2X, not prime n} Lambda(n)/n

is bounded by

  (psi(2X)-theta(2X))/X,

hence by a constant times sqrt(2X)/X.

For every fixed nonzero Fourier mode, the corresponding higher-prime-power DFT
coordinate is bounded by this mass times a fixed frequency denominator. Thus
higher prime powers already lie at square-root scale; the unresolved
RH-strength cancellation is concentrated in the prime-only coordinate and the
endpoint moments.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HIGHER_PRIME_POWER_DFT_REMAINDER_SQRT_SCALE.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem coefficient_nonnegative (n : ℕ) :
    0 ≤ coefficient n := by
  unfold coefficient mangoldt
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg _)

/-- Weighted higher-prime-power mass in one exact octave. -/
def higherPrimePowerWindowMass (X : ℕ) : ℝ :=
  ∑ n ∈ (window X).filter (fun n => ¬ n.Prime), coefficient n

theorem higherPrimePowerWindowMass_nonnegative (X : ℕ) :
    0 ≤ higherPrimePowerWindowMass X := by
  unfold higherPrimePowerWindowMass
  exact Finset.sum_nonneg (fun n hn => coefficient_nonnegative n)

/-- Unweighted non-prime von Mangoldt mass in the same octave. -/
def higherPrimePowerMangoldtWindowMass (X : ℕ) : ℝ :=
  ∑ n ∈ (window X).filter (fun n => ¬ n.Prime), mangoldt n

theorem higherPrimePowerMangoldtWindowMass_nonnegative (X : ℕ) :
    0 ≤ higherPrimePowerMangoldtWindowMass X := by
  unfold higherPrimePowerMangoldtWindowMass mangoldt
  exact Finset.sum_nonneg
    (fun n hn => ArithmeticFunction.vonMangoldt_nonneg)

/-- Weighting by 1/n costs at most 1/X on the octave. -/
theorem higherPrimePowerWindowMass_le_mangoldt_div
    {X : ℕ} (hX : 0 < X) :
    higherPrimePowerWindowMass X ≤
      higherPrimePowerMangoldtWindowMass X / (X : ℝ) := by
  unfold higherPrimePowerWindowMass higherPrimePowerMangoldtWindowMass
  calc
    (∑ n ∈ (window X).filter (fun n => ¬ n.Prime), coefficient n)
        ≤ ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
            mangoldt n / (X : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      have hmem := (Finset.mem_filter.mp hn).1
      unfold coefficient
      apply div_le_div_of_nonneg_left
        (by
          unfold mangoldt
          exact ArithmeticFunction.vonMangoldt_nonneg)
        (by exact_mod_cast hX)
      exact_mod_cast Nat.le_of_lt (window_lower hmem)
    _ = higherPrimePowerMangoldtWindowMass X / (X : ℝ) := by
      rw [Finset.sum_div]
      rfl

/-- The non-prime mass in one octave is at most the complete non-prime mass up
to 2X, which is psi(2X)-theta(2X). -/
theorem higherPrimePowerMangoldtWindowMass_le_psi_sub_theta
    (X : ℕ) :
    higherPrimePowerMangoldtWindowMass X ≤
      ψ ((2 * X : ℕ) : ℝ) - θ ((2 * X : ℕ) : ℝ) := by
  have hsub :
      (window X).filter (fun n => ¬ n.Prime) ⊆
        (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime) := by
    intro n hn
    have hwin := (Finset.mem_filter.mp hn).1
    have hnp := (Finset.mem_filter.mp hn).2
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr
        ⟨Nat.zero_lt_of_lt (window_lower hwin), window_upper hwin⟩,
        hnp⟩
  have hsum :
      higherPrimePowerMangoldtWindowMass X ≤
        ∑ n ∈ (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime),
          mangoldt n := by
    unfold higherPrimePowerMangoldtWindowMass
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun n hn hnot => by
        unfold mangoldt
        exact ArithmeticFunction.vonMangoldt_nonneg)
  calc
    higherPrimePowerMangoldtWindowMass X
        ≤ ∑ n ∈ (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime),
            mangoldt n := hsum
    _ = ψ ((2 * X : ℕ) : ℝ) - θ ((2 * X : ℕ) : ℝ) := by
      rw [Chebyshev.psi_sub_theta_eq_sum_not_prime]
      simp [mangoldt]

/-- Exact square-root source bound inherited from pinned Chebyshev. -/
theorem higherPrimePowerWindowMass_sqrt_bound :
    ∃ C : ℝ, ∀ X : ℕ, 0 < X →
      higherPrimePowerWindowMass X ≤
        C * Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ) := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  refine ⟨C, ?_⟩
  intro X hX
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  calc
    higherPrimePowerWindowMass X
        ≤ higherPrimePowerMangoldtWindowMass X / (X : ℝ) :=
      higherPrimePowerWindowMass_le_mangoldt_div hX
    _ ≤
        (ψ ((2 * X : ℕ) : ℝ) - θ ((2 * X : ℕ) : ℝ)) /
          (X : ℝ) := by
      exact div_le_div_of_nonneg_right
        (higherPrimePowerMangoldtWindowMass_le_psi_sub_theta X)
        hXr.le
    _ ≤
        (C * Real.sqrt (((2 * X : ℕ) : ℝ))) / (X : ℝ) := by
      exact div_le_div_of_nonneg_right
        (hC (((2 * X : ℕ) : ℝ)))
        hXr.le

/-- Prime-only weighted DFT phase sum. -/
def greenPrimeOnlyDFTPhaseSum
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ n ∈ (window X).filter Nat.Prime,
    (coefficient n : ℂ) * greenDFTPhase X k n

/-- Higher-prime-power weighted DFT phase sum. -/
def greenHigherPrimePowerDFTPhaseSum
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
    (coefficient n : ℂ) * greenDFTPhase X k n

def greenPrimeOnlyWindowMassComplex (X : ℕ) : ℂ :=
  ∑ n ∈ (window X).filter Nat.Prime, (coefficient n : ℂ)

def greenHigherPrimePowerWindowMassComplex (X : ℕ) : ℂ :=
  ∑ n ∈ (window X).filter (fun n => ¬ n.Prime), (coefficient n : ℂ)

/-- The literal full DFT source splits exactly into prime and higher-prime-power
channels. -/
theorem greenWeightedDFTPhaseSum_split
    (X : ℕ) (k : ℤ) :
    greenWeightedDFTPhaseSum X k =
      greenPrimeOnlyDFTPhaseSum X k +
        greenHigherPrimePowerDFTPhaseSum X k := by
  unfold greenWeightedDFTPhaseSum greenPrimeOnlyDFTPhaseSum
    greenHigherPrimePowerDFTPhaseSum
  simpa using
    (Finset.sum_filter_add_sum_filter_not
      (window X) Nat.Prime
      (fun n => (coefficient n : ℂ) * greenDFTPhase X k n)).symm

theorem greenWindowCoefficientMassComplex_split
    (X : ℕ) :
    greenWindowCoefficientMassComplex X =
      greenPrimeOnlyWindowMassComplex X +
        greenHigherPrimePowerWindowMassComplex X := by
  unfold greenWindowCoefficientMassComplex
    greenPrimeOnlyWindowMassComplex
    greenHigherPrimePowerWindowMassComplex
  simpa using
    (Finset.sum_filter_add_sum_filter_not
      (window X) Nat.Prime
      (fun n => (coefficient n : ℂ))).symm

/-- Prime-only version of the nonzero Fourier prime coordinate. -/
def greenPrimeOnlyFourierPrimeCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  (greenPrimeOnlyDFTPhaseSum X k -
      greenPrimeOnlyWindowMassComplex X) /
    (-2 * Real.pi * Complex.I * k)

/-- Higher-prime-power correction to the nonzero Fourier prime coordinate. -/
def greenHigherPrimePowerFourierPrimeCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  (greenHigherPrimePowerDFTPhaseSum X k -
      greenHigherPrimePowerWindowMassComplex X) /
    (-2 * Real.pi * Complex.I * k)

theorem greenFourierPrimeCoordinate_split
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    greenFourierPrimeCoordinate X k =
      greenPrimeOnlyFourierPrimeCoordinate X k +
        greenHigherPrimePowerFourierPrimeCoordinate X k := by
  rw [greenFourierPrimeCoordinate_eq_weightedDFT hk X]
  unfold greenPrimeOnlyFourierPrimeCoordinate
    greenHigherPrimePowerFourierPrimeCoordinate
  rw [greenWeightedDFTPhaseSum_split,
    greenWindowCoefficientMassComplex_split]
  ring

/-- Norm of the higher-prime-power phase sum is bounded by its total weighted
mass. -/
theorem greenHigherPrimePowerDFTPhaseSum_norm_le
    (X : ℕ) (k : ℤ) :
    ‖greenHigherPrimePowerDFTPhaseSum X k‖ ≤
      higherPrimePowerWindowMass X := by
  unfold greenHigherPrimePowerDFTPhaseSum
    higherPrimePowerWindowMass
  calc
    ‖∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
        (coefficient n : ℂ) * greenDFTPhase X k n‖
        ≤ ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
            ‖(coefficient n : ℂ) * greenDFTPhase X k n‖ :=
      norm_sum_le _ _
    _ = ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
          coefficient n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (coefficient_nonnegative n)]
      simp [greenDFTPhase]
    _ = higherPrimePowerWindowMass X := rfl

theorem greenHigherPrimePowerWindowMassComplex_norm
    (X : ℕ) :
    ‖greenHigherPrimePowerWindowMassComplex X‖ =
      higherPrimePowerWindowMass X := by
  unfold greenHigherPrimePowerWindowMassComplex
    higherPrimePowerWindowMass
  rw [← Complex.ofReal_sum]
  simp [abs_of_nonneg (higherPrimePowerWindowMass_nonnegative X)]

/-- Fixed-frequency correction bound. Combined with the previous square-root
mass theorem, this is O(X^(-1/2)) for every fixed nonzero k. -/
theorem greenHigherPrimePowerFourierPrimeCoordinate_norm_le
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖ ≤
      (2 * higherPrimePowerWindowMass X) /
        ‖(-2 * Real.pi * Complex.I * k : ℂ)‖ := by
  unfold greenHigherPrimePowerFourierPrimeCoordinate
  rw [norm_div]
  exact div_le_div_of_nonneg_right
    ((norm_sub_le _ _).trans
      (by
        rw [greenHigherPrimePowerWindowMassComplex_norm]
        nlinarith [greenHigherPrimePowerDFTPhaseSum_norm_le X k]))
    (norm_nonneg _)

end GRWTSK.RiemannHypothesis
