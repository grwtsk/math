/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicAsymmetricMixedEnergy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact negative even-sector control for the unrestricted arithmetic family

At four sites, hopping 1 and potential 0, the full alternating vector is
reflection-even for a=0 and has eigenvalue -2. The potential is a literal
arithmetic specialization with all three coefficients zero. Thus arbitrary
source-family membership, reflection parity and zero leakage cannot supply
a nonnegative sector lower bound. Actual sector estimates and any physical
energy normalization require independent mathematics.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This refutes an unrestricted finite-family positivity premise; it says
nothing against the continuum Yang–Mills mass-gap conjecture.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicNegativeSectorControl
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicReflection ArithmeticCyclicOperatorStability
open ArithmeticCyclicReflectionGeometry DeterminantSectorCoercivity

def alternating : EuclideanSpace ℂ (ZMod 4) :=
  WithLp.toLp 2 (fun i => if i = 0 ∨ i = 2 then (1 : ℂ) else -1)

theorem alternating_ne_zero : alternating ≠ 0 := by
  intro h
  have h0 := congrArg (fun x : EuclideanSpace ℂ (ZMod 4) => x 0) h
  norm_num [alternating] at h0

theorem alternating_reflection_even : reflectionVector 4 0 alternating = alternating := by
  apply WithLp.ofLp_injective 2
  funext i
  fin_cases i <;> norm_num [reflectionVector, reflection, alternating]

theorem alternating_eigen :
    hamiltonianOperator 4 1 (fun _ => 0) alternating = (-2 : ℂ) • alternating := by
  apply WithLp.ofLp_injective 2
  rw [hamiltonianOperator_mulVec]
  funext i
  rw [hamiltonian_mulVec]
  fin_cases i <;> norm_num [alternating]

theorem alternating_energy :
    hamiltonianEnergy 4 1 (fun _ => 0) alternating = -2 * ‖alternating‖ ^ 2 := by
  unfold hamiltonianEnergy
  rw [alternating_eigen, inner_smul_right]
  simp [Complex.mul_re, inner_self_eq_norm_sq]

theorem alternating_energy_negative :
    hamiltonianEnergy 4 1 (fun _ => 0) alternating < 0 := by
  rw [alternating_energy]
  have hn := norm_pos_iff.mpr alternating_ne_zero
  nlinarith [sq_pos_of_pos hn]

theorem no_nonnegative_even_sector_bound (α : ℝ) (hα : 0 ≤ α) :
    ¬ (∀ x : EuclideanSpace ℂ (ZMod 4), reflectionVector 4 0 x = x →
      α * ‖x‖ ^ 2 ≤ hamiltonianEnergy 4 1 (fun _ => 0) x) := by
  intro h
  have hx := h alternating alternating_reflection_even
  have hn := alternating_energy_negative
  have hp := mul_nonneg hα (sq_nonneg ‖alternating‖)
  linarith

theorem zero_potential_is_arithmetic (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod 4 → ℕ) : arithmeticPotential 4 level χ m 0 0 0 = (fun _ => 0) := by
  funext i
  simp [arithmeticPotential]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicNegativeSectorControl
