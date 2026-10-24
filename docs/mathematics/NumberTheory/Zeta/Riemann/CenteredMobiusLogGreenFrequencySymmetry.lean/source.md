# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencySymmetry

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `790879fa0c646d0dc87ccdd38a1069d3ab1f3f78` · SHA-256 `a4264bab57e342cfacfa6606f31c6dfd1f8c94cbb3595e9d905fa1b4b1e4d9aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencyClassification
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

/-- Fourier character conjugation under frequency reversal. -/
theorem fourier_neg_frequency_conj
    (k : ℤ) (t : ℝ) :
    fourier k (t : AddCircle (1 : ℝ)) =
      conj (fourier (-k) (t : AddCircle (1 : ℝ))) := by
  rw [map_neg, map_neg]
  simp [map_inv₀]

/-- The historical primitive changes by minus conjugation under k -> -k. -/
theorem fourierModePrimitive_neg
    (k : ℤ) (t : ℝ) :
    fourierModePrimitive (-k) t =
      -conj (fourierModePrimitive k t) := by
  unfold fourierModePrimitive
  simp_rw [neg_neg]
  rw [fourier_neg_frequency_conj]
  simp [map_mul, map_div₀, map_inv₀]
  ring

theorem fourierModeValue_neg
    (k : ℤ) (t : ℝ) :
    fourierModeValue (-k) t =
      -conj (fourierModeValue k t) := by
  unfold fourierModeValue
  rw [fourierModePrimitive_neg, fourierModePrimitive_neg]
  map_tac
  ring

/-- The continuum Green background inherits the same minus-conjugation law. -/
theorem greenFourierBackgroundCoordinate_neg
    (k : ℤ) :
    greenFourierBackgroundCoordinate (-k) =
      -conj (greenFourierBackgroundCoordinate k) := by
  unfold greenFourierBackgroundCoordinate
  rw [← intervalIntegral.integral_conj]
  apply intervalIntegral.integral_congr
  intro t ht
  rw [fourierModeValue_neg]
  simp
  ring

/-- The discrete harmonic correction has the same law. -/
theorem greenDiscreteHarmonicFourierCorrection_neg
    (X : ℕ) (k : ℤ) :
    greenDiscreteHarmonicFourierCorrection X (-k) =
      -conj (greenDiscreteHarmonicFourierCorrection X k) := by
  unfold greenDiscreteHarmonicFourierCorrection
    centeredGreenHarmonicCorrection
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [fourierModeValue_neg]
  simp
  ring

/-- Hence the deterministic centering residual is minus its conjugate at the
opposite frequency. -/
theorem greenCenteringResidual_neg
    (X : ℕ) (k : ℤ) :
    greenCenteringResidual X (-k) =
      -conj (greenCenteringResidual X k) := by
  unfold greenCenteringResidual
  rw [greenFourierBackgroundCoordinate_neg,
    greenDiscreteHarmonicFourierCorrection_neg]
  map_tac
  ring

theorem norm_greenCenteringResidual_neg
    (X : ℕ) (k : ℤ) :
    ‖greenCenteringResidual X (-k)‖ =
      ‖greenCenteringResidual X k‖ := by
  rw [greenCenteringResidual_neg]
  simp

theorem sq_norm_greenCenteringResidual_neg
    (X : ℕ) (k : ℤ) :
    ‖greenCenteringResidual X (-k)‖^2 =
      ‖greenCenteringResidual X k‖^2 := by
  rw [norm_greenCenteringResidual_neg]

end GRWTSK.RiemannHypothesis
```
