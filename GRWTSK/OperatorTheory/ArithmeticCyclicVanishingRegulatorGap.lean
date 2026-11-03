/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicAsymmetricMixedEnergy
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# A literal arithmetic regulator family with closing vacuum-complement gap

At three sites choose hopping -epsilon/3 and potential 2epsilon/3.
The operator is epsilon times the projection onto the zero-sum plane.
The constant vacuum candidate has energy zero; every zero-sum vector has
energy epsilon*norm(x)^2. Taking epsilon=1/(n+1) gives a positive finite
gap at each n but no common strictly positive bound.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This is an explicit arithmetic surrogate and a uniformity obstruction,
not a physical gauge theory, continuum limit or Yang–Mills counterexample.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVanishingRegulatorGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
open DeterminantSectorCoercivity

def regulatorOperator (ε : ℝ) :
    EuclideanSpace ℂ (ZMod 3) →L[ℂ] EuclideanSpace ℂ (ZMod 3) :=
  hamiltonianOperator 3 (-ε / 3) (fun _ => 2 * ε / 3)

def vacuum : EuclideanSpace ℂ (ZMod 3) := WithLp.toLp 2 (fun _ => (1 : ℂ))
def excitation : EuclideanSpace ℂ (ZMod 3) :=
  WithLp.toLp 2 (fun i => if i = 0 then (1 : ℂ) else if i = 1 then -1 else 0)

theorem regulator_apply_coordinate (ε : ℝ) (x : EuclideanSpace ℂ (ZMod 3)) (i : ZMod 3) :
    regulatorOperator ε x i = (ε : ℂ) * x i -
      ((ε / 3 : ℝ) : ℂ) * (x 0 + x 1 + x 2) := by
  have h := congrFun (hamiltonianOperator_mulVec 3 (-ε / 3) (fun _ => 2 * ε / 3) x) i
  change regulatorOperator ε x i = _ at h
  rw [h, hamiltonian_mulVec]
  fin_cases i <;> norm_num <;> push_cast <;> ring

theorem regulator_vacuum (ε : ℝ) : regulatorOperator ε vacuum = 0 := by
  apply WithLp.ofLp_injective 2
  funext i
  change regulatorOperator ε vacuum i = 0
  rw [regulator_apply_coordinate]
  change (ε : ℂ) * 1 - ((ε / 3 : ℝ) : ℂ) * (1 + 1 + 1) = 0
  push_cast
  ring

theorem vacuum_inner_eq_coordinate_sum (x : EuclideanSpace ℂ (ZMod 3)) :
    inner ℂ vacuum x = x 0 + x 1 + x 2 := by
  have hu : (Finset.univ : Finset (ZMod 3)) = {0, 1, 2} := by decide
  norm_num [PiLp.inner_apply, vacuum, RCLike.inner_apply, hu] <;> ring

theorem regulator_zero_sum_eigen (ε : ℝ) (x : EuclideanSpace ℂ (ZMod 3))
    (hx : x 0 + x 1 + x 2 = 0) : regulatorOperator ε x = (ε : ℂ) • x := by
  apply WithLp.ofLp_injective 2
  funext i
  change regulatorOperator ε x i = (ε : ℂ) * x i
  rw [regulator_apply_coordinate, hx]
  ring

theorem zero_sum_energy (ε : ℝ) (x : EuclideanSpace ℂ (ZMod 3))
    (hx : x 0 + x 1 + x 2 = 0) :
    (inner ℂ x (regulatorOperator ε x)).re = ε * ‖x‖ ^ 2 := by
  rw [regulator_zero_sum_eigen ε x hx, inner_smul_right]
  simp [Complex.mul_re, inner_self_eq_norm_sq]

theorem positive_energy_on_zero_sum (ε : ℝ) (hε : 0 < ε)
    (x : EuclideanSpace ℂ (ZMod 3)) (hx : x 0 + x 1 + x 2 = 0) (hne : x ≠ 0) :
    0 < (inner ℂ x (regulatorOperator ε x)).re := by
  rw [zero_sum_energy ε x hx]
  exact mul_pos hε (sq_pos_of_pos (norm_pos_iff.mpr hne))

theorem positive_energy_on_vacuum_complement (ε : ℝ) (hε : 0 < ε)
    (x : EuclideanSpace ℂ (ZMod 3)) (hx : inner ℂ vacuum x = 0) (hne : x ≠ 0) :
    0 < (inner ℂ x (regulatorOperator ε x)).re := by
  rw [vacuum_inner_eq_coordinate_sum] at hx
  exact positive_energy_on_zero_sum ε hε x hx hne

theorem excitation_zero_sum : excitation 0 + excitation 1 + excitation 2 = 0 := by
  norm_num [excitation]

theorem excitation_ne_zero : excitation ≠ 0 := by
  intro h
  have h0 := congrArg (fun x : EuclideanSpace ℂ (ZMod 3) => x 0) h
  norm_num [excitation] at h0

/-- Pointwise positive regulator gaps cannot be promoted to a common gap. -/
theorem no_uniform_positive_gap (δ : ℝ) (hδ : 0 < δ) :
    ¬ (∀ n : ℕ, δ * ‖excitation‖ ^ 2 ≤
      (inner ℂ excitation (regulatorOperator (1 / (n + 1 : ℝ)) excitation)).re) := by
  intro h
  obtain ⟨n, hn⟩ := exists_nat_one_div_lt hδ
  have he := h n
  rw [zero_sum_energy _ _ excitation_zero_sum] at he
  have hp : 0 < ‖excitation‖ ^ 2 := sq_pos_of_pos (norm_pos_iff.mpr excitation_ne_zero)
  have hc := mul_lt_mul_of_pos_right hn hp
  linarith

/-- The diagonal is an exact Mangoldt specialization of the same signed operator. -/
theorem regulator_potential_is_arithmetic (ε : ℝ) (level : ℕ)
    (χ : DirichletCharacter ℂ level) :
    arithmeticPotential 3 level χ (fun _ => 2) ((2 * ε / 3) / Real.log 2) 0 0 =
      (fun _ => 2 * ε / 3) := by
  have hlog : Real.log (2 : ℝ) ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  funext i
  simp [arithmeticPotential, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two, hlog]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVanishingRegulatorGap
