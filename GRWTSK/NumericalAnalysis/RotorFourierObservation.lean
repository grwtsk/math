/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Fintype.Basic

/-! # Exact normalized Fourier observation of the 64-sample rotor window -/

open scoped BigOperators

namespace GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath

/-- The actual 64-sample, 120 Hz discrete observation window. -/
abbrev SampleIndex := Fin 64
abbrev FrequencyIndex := Fin 33

/-- Finite Fourier phase, with the negative sign convention of the browser DFT. -/
noncomputable def fourierPhase (k : FrequencyIndex) (j : SampleIndex) : ℂ :=
  Complex.exp ((-Complex.I) *
    (↑(2 * Real.pi * (k.val : ℝ) * (j.val : ℝ) / 64) : ℂ))

/-- The exact complex 64-point DFT, restricted to the 33 nonnegative bins. -/
noncomputable def rotorDFT (samples : SampleIndex → ℂ)
    (k : FrequencyIndex) : ℂ :=
  (∑ j : SampleIndex, samples j * fourierPhase k j) / (64 : ℂ)

/-- Zero angular velocity has exactly zero Fourier response at every bin. -/
theorem rotorDFT_zero (k : FrequencyIndex) :
    rotorDFT (fun _ => 0) k = 0 := by
  simp [rotorDFT]

/-- Finite DFT is linear: no probabilistic or asymptotic Fourier premise. -/
theorem rotorDFT_add (a b : SampleIndex → ℂ) (k : FrequencyIndex) :
    rotorDFT (fun j => a j + b j) k = rotorDFT a k + rotorDFT b k := by
  simp [rotorDFT, add_mul, Finset.sum_add_distrib, add_div]

end GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath
