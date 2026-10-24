/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Necessary cancellation inside the prime-only RH-G01 witness

Because the prime-only stage is a sum of nonnegative squares, its all-scale
bound already forces square-root-scale cancellation in several classical prime
observables.

In particular:
* H_X - log 2, where H_X=sum log(p)/p on (X,2X];
* (theta(2X)-theta(X))/X - 1;
* the first positive and negative prime-only weighted DFT coordinates.

This module records these consequences only. It does not prove the prime-only
bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ONLY_CLASSICAL_CANCELLATION_NECESSARY.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem primeOnlyMass0_sq_le_stage
    (X N : ℕ) :
    (primeOnlyMass0 X)^2 ≤
      fullGreenPrimeOnlyCoordinateStage X N := by
  unfold fullGreenPrimeOnlyCoordinateStage
  nlinarith [
    sq_nonneg (primeOnlyMass1 X),
    greenPrimeOnlyFourierHead_nonnegative X N]

theorem primeOnlyMass1_sq_le_stage
    (X N : ℕ) :
    (primeOnlyMass1 X)^2 ≤
      fullGreenPrimeOnlyCoordinateStage X N := by
  unfold fullGreenPrimeOnlyCoordinateStage
  nlinarith [
    sq_nonneg (primeOnlyMass0 X),
    greenPrimeOnlyFourierHead_nonnegative X N]

/-- The normalized theta octave discrepancy is the sum of the two endpoint
moments, so its square is bounded by twice the endpoint energy. -/
theorem thetaOctaveDiscrepancy_sq_le_two_stage
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    (((θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ)) /
        (X : ℝ) - 1)^2) ≤
      2 * fullGreenPrimeOnlyCoordinateStage X N := by
  rw [← primeOnlyMass0_add_mass1_eq_theta_increment hX]
  have hs :
      (primeOnlyMass0 X + primeOnlyMass1 X)^2 ≤
        2 * (primeOnlyMass0 X)^2 +
          2 * (primeOnlyMass1 X)^2 := by
    nlinarith [sq_nonneg (primeOnlyMass0 X - primeOnlyMass1 X)]
  unfold fullGreenPrimeOnlyCoordinateStage
  have hhead := greenPrimeOnlyFourierHead_nonnegative X N
  nlinarith

/-- First negative prime-only Fourier mode is present in the first shell. -/
theorem primeOnly_negOne_sq_le_stage
    (X : ℕ) :
    ‖greenPrimeOnlyArithmeticFourierCoordinate X (-1)‖^2 ≤
      fullGreenPrimeOnlyCoordinateStage X 1 := by
  unfold fullGreenPrimeOnlyCoordinateStage
    greenPrimeOnlyFourierHead
    greenPrimeOnlyFourierShellEnergy
    greenPrimeOnlyFourierModeEnergy
  norm_num [Finset.sum_range_succ, greenPrimeOnlyArithmeticFourierCoordinate_zero]
  nlinarith [sq_nonneg (primeOnlyMass0 X), sq_nonneg (primeOnlyMass1 X),
    sq_nonneg ‖greenPrimeOnlyArithmeticFourierCoordinate X (-1)‖,
    sq_nonneg ‖greenPrimeOnlyArithmeticFourierCoordinate X (-2)‖]

/-- First positive prime-only Fourier mode is present in the second shell. -/
theorem primeOnly_one_sq_le_stage
    (X : ℕ) :
    ‖greenPrimeOnlyArithmeticFourierCoordinate X 1‖^2 ≤
      fullGreenPrimeOnlyCoordinateStage X 2 := by
  unfold fullGreenPrimeOnlyCoordinateStage
    greenPrimeOnlyFourierHead
    greenPrimeOnlyFourierShellEnergy
    greenPrimeOnlyFourierModeEnergy
  norm_num [Finset.sum_range_succ, greenPrimeOnlyArithmeticFourierCoordinate_zero]
  nlinarith [sq_nonneg (primeOnlyMass0 X), sq_nonneg (primeOnlyMass1 X),
    sq_nonneg ‖greenPrimeOnlyArithmeticFourierCoordinate X (-1)‖,
    sq_nonneg ‖greenPrimeOnlyArithmeticFourierCoordinate X (-2)‖]

theorem primeOnlyBound_forces_harmonicMass_decay
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (primeWindowHarmonicLogMass (dyadicScale j) -
          Real.log 2)^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hP η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  rw [← primeOnlyMass0_eq_harmonicLogMass]
  exact (primeOnlyMass0_sq_le_stage (dyadicScale j) 0).trans
    (hbound j hj 0)

theorem primeOnlyBound_forces_thetaOctave_decay
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (((θ (((2 * dyadicScale j : ℕ) : ℝ)) -
              θ ((dyadicScale j : ℕ) : ℝ)) /
            (dyadicScale j : ℝ) - 1)^2) ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hP η hη
  refine ⟨2 * C, by positivity, j₀, ?_⟩
  intro j hj
  have htheta :=
    thetaOctaveDiscrepancy_sq_le_two_stage
      (show 0 < dyadicScale j by unfold dyadicScale; positivity) 0
  have hstage := hbound j hj 0
  have hpow :
      0 ≤ Real.rpow (dyadicScale j : ℝ) (-1 + η) :=
    Real.rpow_nonneg (Nat.cast_nonneg _) _
  nlinarith

theorem primeOnlyBound_forces_negOne_decay
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ‖greenPrimeOnlyArithmeticFourierCoordinate
            (dyadicScale j) (-1)‖^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hP η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  exact (primeOnly_negOne_sq_le_stage (dyadicScale j)).trans
    (hbound j hj 1)

theorem primeOnlyBound_forces_one_decay
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ‖greenPrimeOnlyArithmeticFourierCoordinate
            (dyadicScale j) 1‖^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hP η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  exact (primeOnly_one_sq_le_stage (dyadicScale j)).trans
    (hbound j hj 2)

end GRWTSK.RiemannHypothesis
