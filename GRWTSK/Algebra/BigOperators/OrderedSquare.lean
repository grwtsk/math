/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
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

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators FourierTransform
open MeasureTheory

/-- Completed finite square, retaining all ordered off-diagonal terms. -/
theorem finite_ordered_energy {ι : Type*} [DecidableEq ι]
    (S : Finset ι) (x : ι → ℝ) :
    (∑ i ∈ S, x i)^2 = (∑ i ∈ S, (x i)^2) +
      ∑ i ∈ S, ∑ j ∈ S, if i ≠ j then x i * x j else 0 := by
  rw [pow_two, Finset.sum_mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have hd : x i ^ 2 = ∑ j ∈ S, if i = j then x i * x j else 0 := by simp [hi,pow_two]
  rw [hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i=j <;> simp [h]


end GRWTSK.Analysis.Waveform
