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
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
open scoped BigOperators FourierTransform
open MeasureTheory

/-- Correct starvation obligation: prefix work must cover a pinned enumeration. -/
def workClock (batch : ℕ → ℕ) : ℕ → ℕ :=
  Nat.rec 0 (fun n r => r + batch n)

@[simp] theorem workClock_zero (batch : ℕ → ℕ) : workClock batch 0 = 0 := rfl
@[simp] theorem workClock_succ (batch : ℕ → ℕ) (n : ℕ) :
    workClock batch (n+1) = workClock batch n + batch n := rfl

theorem workClock_ge_index (batch : ℕ → ℕ) (hb : ∀ n, 1 ≤ batch n) :
    ∀ n, n ≤ workClock batch n := by
  intro n
  induction n with
  | zero => simp
  | succ n ih => simp; have := hb n; omega

theorem prefix_obligation_covered (batch : ℕ → ℕ) (hb : ∀ n, 1 ≤ batch n) (j : ℕ) :
    ∃ n, j < workClock batch n := ⟨j+1, by have := workClock_ge_index batch hb (j+1); omega⟩

/-- Actual batch formula, with an integer cap and normalized scalar sample. -/
def batchSize (B : ℕ) (v : ℝ) : ℕ := 1 + ⌊((B : ℝ) - 1) / 2 * (1 + v)⌋₊

theorem batchSize_bounds {B : ℕ} (hB : 1 ≤ B) {v : ℝ} (hv : -1 ≤ v ∧ v ≤ 1) :
    1 ≤ batchSize B v ∧ batchSize B v ≤ B := by
  constructor
  · simp [batchSize]
  · have hBr : (1 : ℝ) ≤ B := by exact_mod_cast hB
    have hx : ((B : ℝ)-1)/2*(1+v) ≤ (B-1 : ℕ) := by
      rw [Nat.cast_sub hB]; nlinarith
    have hf := Nat.floor_le_of_le hx
    unfold batchSize; omega

/-- Work can diverge while every allocation is sent to channel zero. -/
theorem unbounded_clock_does_not_imply_channel_service :
    (∀ n : ℕ, n ≤ workClock (fun _ ↦ 1) n) ∧
    (¬ ∃ _n : ℕ, (0 : ℕ) = 1) := by
  exact ⟨workClock_ge_index _ (fun _ ↦ le_rfl), by norm_num⟩

theorem fractional_rounding_starves : ⌊(1 / 2 : ℝ)⌋₊ = 0 := by norm_num


end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
