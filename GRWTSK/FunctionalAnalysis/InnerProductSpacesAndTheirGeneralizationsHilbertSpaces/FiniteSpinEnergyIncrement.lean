/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Strategy reference (not copied or directly imported):
openai/math OAI.Combinatorics.HadwigerCounterexample.BiasedRotationBounds.spinning.
Upstream Mathlib and original source licenses remain unchanged. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite orthogonal spinning energy-increment obstruction

An iterative Hilbert-space state receives steps orthogonal to the
current state, each of squared norm at most one. It starts at zero.
Consequently the state after n steps has squared norm at most n.

If a nonexpansive observable grows at least n*eta, then
(n*eta)^2 <= n; a sustained gain n*eta^2 > 1 is impossible.

This abstracts the energy-increment and Cauchy step of the
HadwigerCounterexample.spinning theorem in openai/math, but
does NOT import its Knobs, Flit, flowZ, plume geometry, or
its exceptional-event probability conclusion.

For the actual Kakeya tube family, constructing the orthogonal
increments and proving a bad-spin signal gain remain independent
source obligations. The common rigid-spin dynamics already
provides a no-gain negative control.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FiniteSpinEnergyIncrement

universe u

variable {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Actual finite dynamics; no probabilistic independence assumption. -/
structure OrthogonalIncrementProcess
    (H : Type u) [NormedAddCommGroup H] [InnerProductSpace ℝ H] where
  state : ℕ → H
  increment : ℕ → H
  initial : state 0 = 0
  step : ∀ n, state (n + 1) = state n + increment n
  orthogonal : ∀ n,
    inner ℝ (state n) (increment n) = 0
  increment_energy_le : ∀ n, ‖increment n‖ ^ 2 ≤ 1

namespace OrthogonalIncrementProcess

variable (P : OrthogonalIncrementProcess H)

theorem energy_step (n : ℕ) :
    ‖P.state (n + 1)‖ ^ 2 =
      ‖P.state n‖ ^ 2 + ‖P.increment n‖ ^ 2 := by
  rw [P.step n, norm_add_sq_real, P.orthogonal n]
  ring

theorem energy_le_steps (n : ℕ) :
    ‖P.state n‖ ^ 2 ≤ (n : ℝ) := by
  induction n with
  | zero =>
      rw [P.initial]
      norm_num
  | succ n ih =>
      rw [P.energy_step]
      have hi := P.increment_energy_le n
      push_cast
      linarith

/-- Energy and true Cauchy-domination bound the total gain. -/
theorem signal_growth_square_le_steps
    (signal : H → ℝ)
    (hbounded : ∀ x : H, |signal x| ≤ ‖x‖)
    (eta : ℝ) (heta : 0 ≤ eta)
    (n : ℕ)
    (hprogress : (n : ℝ) * eta ≤ signal (P.state n)) :
    ((n : ℝ) * eta) ^ 2 ≤ (n : ℝ) := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hsignal : (n : ℝ) * eta ≤ ‖P.state n‖ := by
    calc
      (n : ℝ) * eta ≤ signal (P.state n) := hprogress
      _ ≤ |signal (P.state n)| := le_abs_self _
      _ ≤ ‖P.state n‖ := hbounded _
  have hnonneg : 0 ≤ (n : ℝ) * eta :=
    mul_nonneg hn heta
  have hnorm_nonneg : 0 ≤ ‖P.state n‖ := norm_nonneg _
  have hsq : ((n : ℝ) * eta) ^ 2 ≤
      ‖P.state n‖ ^ 2 := by nlinarith
  exact hsq.trans (P.energy_le_steps n)

/-- A strictly supercritical n-step gain contradicts the energy
budget; this does NOT bound a probability of bad rotations unless
the bad-event-to-increment selection is proved separately. -/
theorem cannot_exceed_inverse_square_threshold
    (signal : H → ℝ)
    (hbounded : ∀ x : H, |signal x| ≤ ‖x‖)
    (eta : ℝ) (heta : 0 ≤ eta)
    (n : ℕ) (hn : 0 < n)
    (hprogress : (n : ℝ) * eta ≤ signal (P.state n)) :
    ¬ (1 : ℝ) < (n : ℝ) * eta ^ 2 := by
  intro hlarge
  have hnpos : (0 : ℝ) < (n : ℝ) := Nat.cast_pos.mpr hn
  have henergy :=
    P.signal_growth_square_le_steps signal hbounded eta heta n hprogress
  have hstrict : (n : ℝ) <
      ((n : ℝ) * eta) ^ 2 := by
    calc
      (n : ℝ) = (n : ℝ) * 1 := (mul_one _).symm
      _ < (n : ℝ) * ((n : ℝ) * eta ^ 2) :=
        mul_lt_mul_of_pos_left hlarge hnpos
      _ = ((n : ℝ) * eta) ^ 2 := by ring
  exact (not_lt_of_ge henergy) hstrict

end OrthogonalIncrementProcess
end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FiniteSpinEnergyIncrement
