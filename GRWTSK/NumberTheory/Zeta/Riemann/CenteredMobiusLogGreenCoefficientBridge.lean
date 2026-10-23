/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Authenticated Green definitions:
historical commit f047ec7814a03bf2b6175fc3b96a465ff2b86804
DyadicDiscrepancy blob faaef84a44f9c5e052bb76050453c2c2ce89317d
DyadicGreenArithmeticFourierCoordinate blob
8e46e5f442647f0840793f48b44d03f65982fe05.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogFinitePacket
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Minimal authenticated dyadic window. -/
def centeredGreenWindow (X : ℕ) : Finset ℕ := Finset.Ioc X (2 * X)

/-- Minimal authenticated location coordinate. -/
def centeredGreenLocation (X n : ℕ) : ℝ := (n : ℝ) / (X : ℝ) - 1

/-- Literal Green arithmetic coefficient. -/
def centeredGreenArithmeticCoefficient (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / (n : ℝ)

/-- Centered contribution to the same coefficient. -/
def centeredGreenCenteredCoefficient (n : ℕ) : ℝ :=
  centeredVonMangoldtAtom n / (n : ℝ)

/-- Discrete harmonic correction created by replacing Lambda with Lambda-1. -/
def centeredGreenHarmonicCorrectionCoefficient (n : ℕ) : ℝ :=
  1 / (n : ℝ)

theorem greenArithmeticCoefficient_eq_centered_add_harmonic
    {n : ℕ} (hn : 1 ≤ n) :
    centeredGreenArithmeticCoefficient n =
      centeredGreenCenteredCoefficient n +
        centeredGreenHarmonicCorrectionCoefficient n := by
  unfold centeredGreenArithmeticCoefficient centeredGreenCenteredCoefficient
    centeredGreenHarmonicCorrectionCoefficient centeredVonMangoldtAtom
  have hn0 : (n : ℝ) ≠ 0 := by positivity
  field_simp
  ring

/-- Finite arithmetic coordinate against an arbitrary complex test function. -/
def centeredGreenPrimeCoordinate
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (centeredGreenArithmeticCoefficient n : ℂ) *
      φ (centeredGreenLocation X n)

/-- Weighted centered Lambda-1 packet contribution. -/
def centeredGreenCenteredCoordinate
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (centeredGreenCenteredCoefficient n : ℂ) *
      φ (centeredGreenLocation X n)

/-- Explicit finite 1/n correction. -/
def centeredGreenHarmonicCorrection
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (centeredGreenHarmonicCorrectionCoefficient n : ℂ) *
      φ (centeredGreenLocation X n)

theorem centeredGreenPrimeCoordinate_decomposition
    {X : ℕ} (hX : 1 ≤ X) (φ : ℝ → ℂ) :
    centeredGreenPrimeCoordinate X φ =
      centeredGreenCenteredCoordinate X φ +
        centeredGreenHarmonicCorrection X φ := by
  unfold centeredGreenPrimeCoordinate centeredGreenCenteredCoordinate
    centeredGreenHarmonicCorrection
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  have hnI := Finset.mem_Ioc.mp hn
  rw [greenArithmeticCoefficient_eq_centered_add_harmonic (by omega)]
  push_cast
  ring

/-- Green coordinate with continuum background kept explicit. -/
def centeredGreenCoordinateWithBackground
    (X : ℕ) (φ : ℝ → ℂ) (background : ℂ) : ℂ :=
  background - centeredGreenPrimeCoordinate X φ

/-- Exact bridge: the Green coordinate is background minus the weighted
centered Lambda-1 packet minus the discrete harmonic correction. -/
theorem centeredGreenCoordinateWithBackground_decomposition
    {X : ℕ} (hX : 1 ≤ X) (φ : ℝ → ℂ) (background : ℂ) :
    centeredGreenCoordinateWithBackground X φ background =
      background -
        centeredGreenCenteredCoordinate X φ -
        centeredGreenHarmonicCorrection X φ := by
  unfold centeredGreenCoordinateWithBackground
  rw [centeredGreenPrimeCoordinate_decomposition hX]
  ring

/-- Substitute the authenticated centered Möbius-log finite packet exactly. -/
theorem centeredGreenCenteredCoordinate_eq_mobiusLogPacket
    (X : ℕ) (φ : ℝ → ℂ) :
    centeredGreenCenteredCoordinate X φ =
      ∑ n ∈ centeredGreenWindow X,
        ((centeredMobiusLogDivisorIndexSum n / (n : ℝ) : ℝ) : ℂ) *
          φ (centeredGreenLocation X n) := by
  unfold centeredGreenCenteredCoordinate centeredGreenCenteredCoefficient
  apply Finset.sum_congr rfl
  intro n _
  rw [centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt]

end GRWTSK.RiemannHypothesis
