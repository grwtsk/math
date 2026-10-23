/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Authenticated historical owners:
DyadicGreenFourierReadout blob 66f? (definitions authenticated at f047ec...)
DyadicGreenArithmeticFourierCoordinate blob 8e46e5f442647f0840793f48b44d03f65982fe05.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCoefficientBridge
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

/-- Original historical body, moved thinly. -/
def fourierModePrimitive (k : ℤ) (t : ℝ) : ℂ :=
  (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
    fourier (-k) (t : AddCircle (1 : ℝ))

/-- Original historical body, moved thinly. -/
def fourierModeValue (k : ℤ) (t : ℝ) : ℂ :=
  fourierModePrimitive k t - fourierModePrimitive k 0

/-- Original historical continuum background coordinate. -/
def greenFourierBackgroundCoordinate (k : ℤ) : ℂ :=
  ∫ t in (0 : ℝ)..1,
    fourierModeValue k t / (1 + (t : ℂ))

/-- Thin exact historical Green arithmetic coordinate formula. -/
def thinGreenArithmeticFourierCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  greenFourierBackgroundCoordinate k -
    centeredGreenPrimeCoordinate X (fourierModeValue k)

/-- Weighted centered Möbius-log Fourier contribution. -/
def centeredMobiusLogFourierCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  centeredGreenCenteredCoordinate X (fourierModeValue k)

/-- Discrete harmonic Fourier correction. -/
def greenDiscreteHarmonicFourierCorrection
    (X : ℕ) (k : ℤ) : ℂ :=
  centeredGreenHarmonicCorrection X (fourierModeValue k)

/-- Exact instantiated bridge with both residual pieces explicit. -/
theorem thinGreenArithmeticFourierCoordinate_decomposition
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        centeredMobiusLogFourierCoordinate X k -
        greenDiscreteHarmonicFourierCorrection X k := by
  unfold thinGreenArithmeticFourierCoordinate
    centeredMobiusLogFourierCoordinate
    greenDiscreteHarmonicFourierCorrection
  exact centeredGreenCoordinateWithBackground_decomposition
    hX (fourierModeValue k) (greenFourierBackgroundCoordinate k)

/-- Residual left after extracting the centered Möbius-log Fourier packet. -/
def greenCenteringResidual (X : ℕ) (k : ℤ) : ℂ :=
  greenFourierBackgroundCoordinate k -
    greenDiscreteHarmonicFourierCorrection X k

theorem thinGreenArithmeticFourierCoordinate_eq_residual_sub_centered
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      greenCenteringResidual X k -
        centeredMobiusLogFourierCoordinate X k := by
  rw [thinGreenArithmeticFourierCoordinate_decomposition hX]
  unfold greenCenteringResidual
  ring

end GRWTSK.RiemannHypothesis
