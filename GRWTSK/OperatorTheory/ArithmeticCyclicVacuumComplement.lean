/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.VacuumRelativeSectorCoercivity

set_option autoImplicit false
noncomputable section

/-!
# Actual eigen-vacuum complement geometry

For the existing self-adjoint cyclic operator, an actual real-energy
eigenvector has invariant orthogonal complement and zero mixed energy
with that complement. These are derived from the operator, not supplied
as independent sector assumptions. A physical vacuum and positive gap
on its complement are still unsupplied. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVacuumComplement
open DeterminantSectorCoercivity VacuumRelativeSectorCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

theorem vacuum_complement_invariant (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (ω x : EuclideanSpace ℂ (ZMod N))
    (hω : hamiltonianOperator N t q ω = (E0 : ℂ) • ω)
    (hx : inner ℂ ω x = 0) : inner ℂ ω (hamiltonianOperator N t q x) = 0 := by
  have hs := (hamiltonianOperator_isSelfAdjoint N t q).isSymmetric ω x
  rw [hω, inner_smul_left, hx, mul_zero] at hs
  exact hs.symm

theorem vacuum_mixed_energy_zero (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (ω x : EuclideanSpace ℂ (ZMod N))
    (hω : hamiltonianOperator N t q ω = (E0 : ℂ) • ω)
    (hx : inner ℂ ω x = 0) : mixedEnergy N t q ω x = 0 := by
  have hrev : inner ℂ x ω = 0 := inner_eq_zero_symm.mp hx
  unfold mixedEnergy
  rw [vacuum_complement_invariant N t q E0 ω x hω hx, hω,
    inner_smul_right, hrev, mul_zero]
  simp

theorem vacuum_relative_energy_zero (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (ω : EuclideanSpace ℂ (ZMod N))
    (hω : hamiltonianOperator N t q ω = (E0 : ℂ) • ω) :
    relativeEnergy N t q E0 ω = 0 := by
  simp [relativeEnergy, hamiltonianEnergy, hω, inner_smul_right,
    inner_self_eq_norm_sq_to_K]

theorem relative_energy_vacuum_split (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (ω x : EuclideanSpace ℂ (ZMod N))
    (hω : hamiltonianOperator N t q ω = (E0 : ℂ) • ω)
    (hx : inner ℂ ω x = 0) :
    relativeEnergy N t q E0 (ω + x) = relativeEnergy N t q E0 x := by
  have hn := norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero ω x hx
  rw [relative_energy_add N t q E0 ω x hn,
    vacuum_relative_energy_zero N t q E0 ω hω,
    vacuum_mixed_energy_zero N t q E0 ω x hω hx]
  ring

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVacuumComplement
