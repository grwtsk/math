import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Original damped-integrator memory and impulse algebra

Batch 39, `oscillator-primary-audit.md`, section 3--4. These are exact free
propagation, neutral-memory, reset and impulse identities. No positive
restoring stiffness, cancellation estimate, or arithmetic energy cap is added.
The realization as the actual Möbius recording and its distribution equation
remain separate analytic obligations. Human direction: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchOscillatorMemory

/-- The state in this module, with the following exact parameterization.

abbrev State := ℝ × ℝ
-/
abbrev State := ℝ × ℝ
/-- The free in this module, with the following exact parameterization.

def free (h : ℝ) (s : State) : State := (s.1 + 2 * (1 - Real.exp (-h / 2)) * s.2, Real.exp (-h
/ 2) * s.2)
-/
def free (h : ℝ) (s : State) : State :=
  (s.1 + 2 * (1 - Real.exp (-h / 2)) * s.2, Real.exp (-h / 2) * s.2)
/-- The memory in this module, with the following exact parameterization.

def memory (s : State) : ℝ := s.1 + 2 * s.2
-/
def memory (s : State) : ℝ := s.1 + 2 * s.2
/-- The impulse in this module, with the following exact parameterization.

def impulse (c : ℝ) (s : State) : State := (s.1, s.2 + c)
-/
def impulse (c : ℝ) (s : State) : State := (s.1, s.2 + c)
/-- The velocity energy in this module, with the following exact parameterization.

def velocityEnergy (s : State) : ℝ := s.2 ^ 2
-/
def velocityEnergy (s : State) : ℝ := s.2 ^ 2

theorem free_zero (s : State) : free 0 s = s := by simp [free]

theorem free_memory (h : ℝ) (s : State) : memory (free h s) = memory s := by
  simp only [free, memory]
  ring

theorem free_semigroup (h k : ℝ) (s : State) : free h (free k s) = free (h + k) s := by
  have he : Real.exp (-(h + k) / 2) = Real.exp (-h / 2) * Real.exp (-k / 2) := by
    rw [show -(h + k) / 2 = -h / 2 + -k / 2 by ring, Real.exp_add]
  ext <;> simp only [free, he] <;> ring

theorem zero_velocity_survives (h x : ℝ) : free h (x, 0) = (x, 0) := by simp [free]

theorem pure_velocity_displacement (h v : ℝ) :
    (free h (0, v)).1 = 2 * (1 - Real.exp (-h / 2)) * v := by simp [free]

theorem impulse_preserves_position (c : ℝ) (s : State) : (impulse c s).1 = s.1 := rfl

theorem impulse_memory (c : ℝ) (s : State) : memory (impulse c s) = memory s + 2 * c := by
  simp only [memory, impulse]
  ring

theorem impulse_energy (c : ℝ) (s : State) :
    velocityEnergy (impulse c s) - velocityEnergy s = 2 * c * s.2 + c ^ 2 := by
  simp only [velocityEnergy, impulse]
  ring

theorem arithmetic_impulse_energy (n μ M : ℝ) (hn : 0 < n) :
    ((M + μ) / Real.sqrt n) ^ 2 - (M / Real.sqrt n) ^ 2 = (2 * μ * M + μ ^ 2) / n := by
  have hs := Real.sq_sqrt hn.le
  have hz : Real.sqrt n ≠ 0 := by positivity
  field_simp
  nlinarith

theorem reset_keeps_memory (x v reset : ℝ) : memory (x - reset, v) = memory (x, v) - reset := by
  simp only [memory]
  ring

/-- Exact scalar closed-prefix decoder, conditional only on the displayed
endpoint identity. In particular the lower reset is not dropped. -/
theorem endpoint_neutral_memory (P V completedPrefix reset : ℝ)
    (hP : P = 2 * completedPrefix - 2 * V - reset) :
    memory (P, V) = 2 * completedPrefix - reset := by
  rw [memory, hP]
  ring

theorem plateau_candidate (x v : ℝ) (hv : v = 0) : memory (x, v) = x := by
  simp [memory, hv]

theorem boundary_candidate_keeps_flux (x v : ℝ) : x = memory (x, v) - 2 * v := by
  simp only [memory]
  ring

/-- A nonzero neutral initial coordinate persists under every free evolution.
Damping of velocity alone cannot imply decay of all retained information. -/
theorem memory_not_forced_to_zero (h : ℝ) : ∃ s : State, memory (free h s) = 1 := by
  exact ⟨(1, 0), by simp [free, memory]⟩

end FormalResearch.RiemannHypothesis.Conversation.BranchOscillatorMemory
