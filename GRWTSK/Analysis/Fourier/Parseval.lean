/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FunProp
import Mathlib.Analysis.Fourier.LpSpace

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators FourierTransform
open MeasureTheory

/-- Native L² Fourier normalization is an isometry; angular rescaling is not implicit. -/
theorem l2_parseval (f : Lp (α := ℝ) ℂ 2) : ‖𝓕 f‖^2 = ‖f‖^2 := by
  rw [MeasureTheory.Lp.norm_fourier_eq]
theorem l2_cross_parseval (f g : Lp (α := ℝ) ℂ 2) :
    inner ℂ (𝓕 f) (𝓕 g) = inner ℂ f g := MeasureTheory.Lp.inner_fourier_eq _ _


end GRWTSK.Analysis.Waveform
