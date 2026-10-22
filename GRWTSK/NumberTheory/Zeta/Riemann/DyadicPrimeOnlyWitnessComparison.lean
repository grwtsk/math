/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFullResidual
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Prime-only arithmetic witness and finite-stage comparison

The complete recovered witness splits exactly into:

* a prime-only core, carrying the continuum background;
* a higher-prime-power correction.

The higher-prime-power correction is already controlled independently by K/X.

This module defines the prime-only endpoint moments and Fourier coordinates,
proves the exact componentwise splits, and derives the finite-stage comparison

  fullStage <= 2 * primeStage + 2 * higherPowerResidual,
  primeStage <= 2 * fullStage + 2 * higherPowerResidual.

No asymptotic theorem is used in these comparison inequalities.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ONLY_WITNESS_FINITE_COMPARISON_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Prime-only first endpoint moment; the continuum target remains in the hard
prime core. -/
def primeOnlyMass0 (X : ℕ) : ℝ :=
  (∑ n ∈ (window X).filter Nat.Prime, coefficient n) - Real.log 2

/-- Prime-only second endpoint moment. -/
def primeOnlyMass1 (X : ℕ) : ℝ :=
  (∑ n ∈ (window X).filter Nat.Prime,
      coefficient n * location X n) -
    (1 - Real.log 2)

/-- Full first moment = prime core + higher-prime-power correction. -/
theorem mass0_eq_primeOnly_add_higherPrimePower
    (X : ℕ) :
    mass0 X =
      primeOnlyMass0 X +
        higherPrimePowerMass0Contribution X := by
  unfold mass0 primeOnlyMass0
    higherPrimePowerMass0Contribution
    higherPrimePowerWindowMass
  have hsplit :=
    (Finset.sum_filter_add_sum_filter_not
      (window X) Nat.Prime coefficient).symm
  rw [hsplit]
  ring

/-- Full second moment = prime core + higher-prime-power correction. -/
theorem mass1_eq_primeOnly_add_higherPrimePower
    (X : ℕ) :
    mass1 X =
      primeOnlyMass1 X +
        higherPrimePowerMass1Contribution X := by
  unfold mass1 primeOnlyMass1
    higherPrimePowerMass1Contribution
  have hsplit :=
    (Finset.sum_filter_add_sum_filter_not
      (window X) Nat.Prime
      (fun n => coefficient n * location X n)).symm
  rw [hsplit]
  ring

/-- Prime-only complete arithmetic Fourier coordinate. -/
def greenPrimeOnlyArithmeticFourierCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  if hk : k = 0 then
    0
  else
    greenFourierBackgroundCoordinate k -
      greenPrimeOnlyFourierPrimeCoordinate X k

/-- Totalized higher-prime-power coordinate correction. -/
def greenHigherPrimePowerArithmeticCorrection
    (X : ℕ) (k : ℤ) : ℂ :=
  if hk : k = 0 then
    0
  else
    greenHigherPrimePowerFourierPrimeCoordinate X k

@[simp]
theorem greenPrimeOnlyArithmeticFourierCoordinate_zero
    (X : ℕ) :
    greenPrimeOnlyArithmeticFourierCoordinate X 0 = 0 := by
  simp [greenPrimeOnlyArithmeticFourierCoordinate]

@[simp]
theorem greenHigherPrimePowerArithmeticCorrection_zero
    (X : ℕ) :
    greenHigherPrimePowerArithmeticCorrection X 0 = 0 := by
  simp [greenHigherPrimePowerArithmeticCorrection]

/-- Exact all-mode split: full centered coordinate = prime core - higher-power
correction. -/
theorem greenArithmeticFourierCoordinate_eq_primeOnly_sub_higherPrimePower
    (X : ℕ) (k : ℤ) :
    greenArithmeticFourierCoordinate X k =
      greenPrimeOnlyArithmeticFourierCoordinate X k -
        greenHigherPrimePowerArithmeticCorrection X k := by
  by_cases hk : k = 0
  · subst k
    simp
  · rw [greenPrimeOnlyArithmeticFourierCoordinate,
      dif_neg hk,
      greenHigherPrimePowerArithmeticCorrection,
      dif_neg hk]
    unfold greenArithmeticFourierCoordinate
    rw [greenFourierPrimeCoordinate_split hk X]
    ring

/-- The higher-power mode energy is exactly the squared norm of the totalized
correction coordinate. -/
theorem higherPrimePowerFourierModeEnergy_eq_correction
    (X : ℕ) (k : ℤ) :
    higherPrimePowerFourierModeEnergy X k =
      ‖greenHigherPrimePowerArithmeticCorrection X k‖^2 := by
  by_cases hk : k = 0
  · subst k
    simp [higherPrimePowerFourierModeEnergy]
  · rw [higherPrimePowerFourierModeEnergy, if_neg hk,
      greenHigherPrimePowerArithmeticCorrection, dif_neg hk]

/-- Prime-only Fourier mode energy. -/
def greenPrimeOnlyFourierModeEnergy
    (X : ℕ) (k : ℤ) : ℝ :=
  ‖greenPrimeOnlyArithmeticFourierCoordinate X k‖^2

theorem greenPrimeOnlyFourierModeEnergy_nonnegative
    (X : ℕ) (k : ℤ) :
    0 ≤ greenPrimeOnlyFourierModeEnergy X k := by
  unfold greenPrimeOnlyFourierModeEnergy
  positivity

private theorem real_add_sq_le_two
    (a b : ℝ) :
    (a + b)^2 ≤ 2 * a^2 + 2 * b^2 := by
  nlinarith [sq_nonneg (a - b)]

private theorem real_sub_sq_le_two
    (a b : ℝ) :
    (a - b)^2 ≤ 2 * a^2 + 2 * b^2 := by
  nlinarith [sq_nonneg (a + b)]

private theorem complex_norm_add_sq_le_two
    (a b : ℂ) :
    ‖a + b‖^2 ≤ 2 * ‖a‖^2 + 2 * ‖b‖^2 := by
  have hnorm : ‖a + b‖ ≤ ‖a‖ + ‖b‖ := norm_add_le a b
  have hsquare :
      ‖a + b‖^2 ≤ (‖a‖ + ‖b‖)^2 :=
    (sq_le_sq₀ (norm_nonneg _)
      (add_nonneg (norm_nonneg _) (norm_nonneg _))).2 hnorm
  nlinarith [sq_nonneg (‖a‖ - ‖b‖)]

private theorem complex_norm_sub_sq_le_two
    (a b : ℂ) :
    ‖a - b‖^2 ≤ 2 * ‖a‖^2 + 2 * ‖b‖^2 := by
  have hnorm : ‖a - b‖ ≤ ‖a‖ + ‖b‖ := norm_sub_le a b
  have hsquare :
      ‖a - b‖^2 ≤ (‖a‖ + ‖b‖)^2 :=
    (sq_le_sq₀ (norm_nonneg _)
      (add_nonneg (norm_nonneg _) (norm_nonneg _))).2 hnorm
  nlinarith [sq_nonneg (‖a‖ - ‖b‖)]

/-- Full Fourier mode is controlled by prime core plus higher-power residual. -/
theorem fullModeEnergy_le_primeOnly_add_higherPower
    (X : ℕ) (k : ℤ) :
    ‖greenArithmeticFourierCoordinate X k‖^2 ≤
      2 * greenPrimeOnlyFourierModeEnergy X k +
        2 * higherPrimePowerFourierModeEnergy X k := by
  rw [greenArithmeticFourierCoordinate_eq_primeOnly_sub_higherPrimePower]
  unfold greenPrimeOnlyFourierModeEnergy
  rw [higherPrimePowerFourierModeEnergy_eq_correction]
  exact complex_norm_sub_sq_le_two _ _

/-- Prime core mode is controlled by full coordinate plus the same residual. -/
theorem primeOnlyModeEnergy_le_full_add_higherPower
    (X : ℕ) (k : ℤ) :
    greenPrimeOnlyFourierModeEnergy X k ≤
      2 * ‖greenArithmeticFourierCoordinate X k‖^2 +
        2 * higherPrimePowerFourierModeEnergy X k := by
  have hsplit :=
    greenArithmeticFourierCoordinate_eq_primeOnly_sub_higherPrimePower X k
  have hprime :
      greenPrimeOnlyArithmeticFourierCoordinate X k =
        greenArithmeticFourierCoordinate X k +
          greenHigherPrimePowerArithmeticCorrection X k := by
    rw [hsplit]
    ring
  unfold greenPrimeOnlyFourierModeEnergy
  rw [hprime, higherPrimePowerFourierModeEnergy_eq_correction]
  exact complex_norm_add_sq_le_two _ _

/-- Prime-only symmetric shell. -/
def greenPrimeOnlyFourierShellEnergy
    (X : ℕ) (n : ℕ) : ℝ :=
  greenPrimeOnlyFourierModeEnergy X (n : ℤ) +
    greenPrimeOnlyFourierModeEnergy X (-((n : ℤ) + 1))

def greenPrimeOnlyFourierHead
    (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    greenPrimeOnlyFourierShellEnergy X n

theorem greenPrimeOnlyFourierHead_nonnegative
    (X N : ℕ) :
    0 ≤ greenPrimeOnlyFourierHead X N := by
  unfold greenPrimeOnlyFourierHead greenPrimeOnlyFourierShellEnergy
  exact Finset.sum_nonneg (fun n hn => by
    exact add_nonneg
      (greenPrimeOnlyFourierModeEnergy_nonnegative X _)
      (greenPrimeOnlyFourierModeEnergy_nonnegative X _))

/-- Finite higher-power symmetric shell/head. -/
def higherPrimePowerFourierShellEnergy
    (X : ℕ) (n : ℕ) : ℝ :=
  higherPrimePowerFourierModeEnergy X (n : ℤ) +
    higherPrimePowerFourierModeEnergy X (-((n : ℤ) + 1))

def higherPrimePowerFourierHead
    (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    higherPrimePowerFourierShellEnergy X n

theorem higherPrimePowerFourierShellEnergy_nonnegative
    (X n : ℕ) :
    0 ≤ higherPrimePowerFourierShellEnergy X n := by
  unfold higherPrimePowerFourierShellEnergy
  exact add_nonneg
    (higherPrimePowerFourierModeEnergy_nonnegative X _)
    (higherPrimePowerFourierModeEnergy_nonnegative X _)

theorem higherPrimePowerFourierHead_nonnegative
    (X N : ℕ) :
    0 ≤ higherPrimePowerFourierHead X N := by
  unfold higherPrimePowerFourierHead
  exact Finset.sum_nonneg
    (fun n hn => higherPrimePowerFourierShellEnergy_nonnegative X n)

/-- Finite higher-power Fourier heads are bounded by the complete summable
higher-power Fourier energy. -/
theorem higherPrimePowerFourierHead_le_tsum
    (X N : ℕ) :
    higherPrimePowerFourierHead X N ≤
      ∑' k : ℤ, higherPrimePowerFourierModeEnergy X k := by
  have hMode := higherPrimePowerFourierModeEnergy_summable X
  have hShell :
      HasSum (higherPrimePowerFourierShellEnergy X)
        (∑' k : ℤ, higherPrimePowerFourierModeEnergy X k) := by
    simpa [higherPrimePowerFourierShellEnergy] using
      hMode.hasSum.nat_add_neg_add_one
  have hSummable := hShell.summable
  have hle := hSummable.sum_le_tsum
    (Finset.range N)
    (fun n hn => higherPrimePowerFourierShellEnergy_nonnegative X n)
  rw [hShell.tsum_eq] at hle
  exact hle

/-- Full Fourier head <= twice prime-only head plus twice finite higher-power
head. -/
theorem fullFourierShell_le_primeOnly_add_higherPower
    (X n : ℕ) :
    greenArithmeticFourierShellEnergy X n ≤
      2 * greenPrimeOnlyFourierShellEnergy X n +
        2 * higherPrimePowerFourierShellEnergy X n := by
  unfold greenArithmeticFourierShellEnergy
    greenPrimeOnlyFourierShellEnergy
    higherPrimePowerFourierShellEnergy
  nlinarith [
    fullModeEnergy_le_primeOnly_add_higherPower X (n : ℤ),
    fullModeEnergy_le_primeOnly_add_higherPower X (-((n : ℤ) + 1))]

theorem fullFourierHead_le_primeOnly_add_higherPower
    (X N : ℕ) :
    greenArithmeticFourierHead X N ≤
      2 * greenPrimeOnlyFourierHead X N +
        2 * higherPrimePowerFourierHead X N := by
  unfold greenArithmeticFourierHead
    greenPrimeOnlyFourierHead
    higherPrimePowerFourierHead
  calc
    (∑ n ∈ Finset.range N, greenArithmeticFourierShellEnergy X n)
        ≤ ∑ n ∈ Finset.range N,
            (2 * greenPrimeOnlyFourierShellEnergy X n +
              2 * higherPrimePowerFourierShellEnergy X n) := by
      apply Finset.sum_le_sum
      intro n hn
      exact fullFourierShell_le_primeOnly_add_higherPower X n
    _ = 2 * (∑ n ∈ Finset.range N, greenPrimeOnlyFourierShellEnergy X n) +
        2 * (∑ n ∈ Finset.range N, higherPrimePowerFourierShellEnergy X n) := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]

/-- Reverse Fourier-head comparison. -/
theorem primeOnlyFourierShell_le_full_add_higherPower
    (X n : ℕ) :
    greenPrimeOnlyFourierShellEnergy X n ≤
      2 * greenArithmeticFourierShellEnergy X n +
        2 * higherPrimePowerFourierShellEnergy X n := by
  unfold greenArithmeticFourierShellEnergy
    greenPrimeOnlyFourierShellEnergy
    higherPrimePowerFourierShellEnergy
  nlinarith [
    primeOnlyModeEnergy_le_full_add_higherPower X (n : ℤ),
    primeOnlyModeEnergy_le_full_add_higherPower X (-((n : ℤ) + 1))]

theorem primeOnlyFourierHead_le_full_add_higherPower
    (X N : ℕ) :
    greenPrimeOnlyFourierHead X N ≤
      2 * greenArithmeticFourierHead X N +
        2 * higherPrimePowerFourierHead X N := by
  unfold greenArithmeticFourierHead
    greenPrimeOnlyFourierHead
    higherPrimePowerFourierHead
  calc
    (∑ n ∈ Finset.range N, greenPrimeOnlyFourierShellEnergy X n)
        ≤ ∑ n ∈ Finset.range N,
            (2 * greenArithmeticFourierShellEnergy X n +
              2 * higherPrimePowerFourierShellEnergy X n) := by
      apply Finset.sum_le_sum
      intro n hn
      exact primeOnlyFourierShell_le_full_add_higherPower X n
    _ = 2 * (∑ n ∈ Finset.range N, greenArithmeticFourierShellEnergy X n) +
        2 * (∑ n ∈ Finset.range N, higherPrimePowerFourierShellEnergy X n) := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]

/-- Prime-only finite witness stage. -/
def fullGreenPrimeOnlyCoordinateStage
    (X N : ℕ) : ℝ :=
  (primeOnlyMass0 X)^2 +
    (primeOnlyMass1 X)^2 +
    greenPrimeOnlyFourierHead X N

theorem fullGreenPrimeOnlyCoordinateStage_nonnegative
    (X N : ℕ) :
    0 ≤ fullGreenPrimeOnlyCoordinateStage X N := by
  unfold fullGreenPrimeOnlyCoordinateStage
  positivity [greenPrimeOnlyFourierHead_nonnegative X N]

/-- Finite higher-power residual stage. -/
def higherPrimePowerFiniteWitnessEnergy
    (X N : ℕ) : ℝ :=
  (higherPrimePowerMass0Contribution X)^2 +
    (higherPrimePowerMass1Contribution X)^2 +
    higherPrimePowerFourierHead X N

theorem higherPrimePowerFiniteWitnessEnergy_nonnegative
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    0 ≤ higherPrimePowerFiniteWitnessEnergy X N := by
  unfold higherPrimePowerFiniteWitnessEnergy
  positivity [
    higherPrimePowerFourierHead_nonnegative X N,
    higherPrimePowerMass0Contribution_nonnegative X,
    higherPrimePowerMass1Contribution_nonnegative hX]

theorem higherPrimePowerFiniteWitnessEnergy_le_full
    (X N : ℕ) :
    higherPrimePowerFiniteWitnessEnergy X N ≤
      higherPrimePowerFullWitnessEnergy X := by
  unfold higherPrimePowerFiniteWitnessEnergy
    higherPrimePowerFullWitnessEnergy
  exact add_le_add_left
    (higherPrimePowerFourierHead_le_tsum X N)
    ((higherPrimePowerMass0Contribution X)^2 +
      (higherPrimePowerMass1Contribution X)^2)

/-- Full finite witness is stable under deleting higher prime powers. -/
theorem fullStage_le_two_primeOnly_add_residual
    (X N : ℕ) :
    fullGreenArithmeticCoordinateStage X N ≤
      2 * fullGreenPrimeOnlyCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X := by
  have h0 :
      (mass0 X)^2 ≤
        2 * (primeOnlyMass0 X)^2 +
          2 * (higherPrimePowerMass0Contribution X)^2 := by
    rw [mass0_eq_primeOnly_add_higherPrimePower]
    exact real_add_sq_le_two _ _
  have h1 :
      (mass1 X)^2 ≤
        2 * (primeOnlyMass1 X)^2 +
          2 * (higherPrimePowerMass1Contribution X)^2 := by
    rw [mass1_eq_primeOnly_add_higherPrimePower]
    exact real_add_sq_le_two _ _
  have hF :=
    fullFourierHead_le_primeOnly_add_higherPower X N
  have hR := higherPrimePowerFourierHead_le_tsum X N
  unfold fullGreenArithmeticCoordinateStage
    fullGreenPrimeOnlyCoordinateStage
    higherPrimePowerFullWitnessEnergy
  nlinarith

/-- Reverse finite-stage stability. -/
theorem primeOnlyStage_le_two_full_add_residual
    (X N : ℕ) :
    fullGreenPrimeOnlyCoordinateStage X N ≤
      2 * fullGreenArithmeticCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X := by
  have h0 :
      (primeOnlyMass0 X)^2 ≤
        2 * (mass0 X)^2 +
          2 * (higherPrimePowerMass0Contribution X)^2 := by
    have hsplit := mass0_eq_primeOnly_add_higherPrimePower X
    have hid :
        primeOnlyMass0 X =
          mass0 X - higherPrimePowerMass0Contribution X := by
      rw [hsplit]
      ring
    rw [hid]
    exact real_sub_sq_le_two _ _
  have h1 :
      (primeOnlyMass1 X)^2 ≤
        2 * (mass1 X)^2 +
          2 * (higherPrimePowerMass1Contribution X)^2 := by
    have hsplit := mass1_eq_primeOnly_add_higherPrimePower X
    have hid :
        primeOnlyMass1 X =
          mass1 X - higherPrimePowerMass1Contribution X := by
      rw [hsplit]
      ring
    rw [hid]
    exact real_sub_sq_le_two _ _
  have hF :=
    primeOnlyFourierHead_le_full_add_higherPower X N
  have hR := higherPrimePowerFourierHead_le_tsum X N
  unfold fullGreenArithmeticCoordinateStage
    fullGreenPrimeOnlyCoordinateStage
    higherPrimePowerFullWitnessEnergy
  nlinarith

end GRWTSK.RiemannHypothesis
