/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.Linarith

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform

/-- The scalar value of a real potential, with angular phase and integer sites. -/
def sampledPotential (v : ℝ → ℝ) (α θ : ℝ) (n : ℤ) : ℝ :=
  v (θ + 2 * Real.pi * α * n)
def transfer (E V : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![E-V, -1; 1, 0]

theorem transfer_det (E V : ℝ) : (transfer E V).det = 1 := by
  simp [transfer, Matrix.det_fin_two]
theorem transfer_trace (E V : ℝ) : Matrix.trace (transfer E V) = E - V := by
  simp [transfer, Matrix.trace, Fin.sum_univ_two]
theorem transfer_unbounded_trace (K : ℝ) :
    ∃ E V, (transfer E V).det = 1 ∧ K < Matrix.trace (transfer E V) := by
  exact ⟨K+1,0,transfer_det _ _,by rw [transfer_trace]; linarith⟩


end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
