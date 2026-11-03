/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletBoundaryRepairCost

set_option autoImplicit false
noncomputable section

/-!
# Complete residual stencil for a character-vector boundary repair

All indices are actual cyclic residues. The indicators retain collisions
at small moduli rather than silently assuming distinct neighbors.
At a character-zero site outside the patch and its neighbors, the
potential and spectral parameter cannot cancel the hopping residual.
This is an obstruction to this specific repaired vector, not to GRH.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullPatchStencil
open DirichletBoundaryRepairCost DirichletSourceVectorConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

theorem patched_residual_coordinate (χ : DirichletCharacter ℂ level)
    (c z : ℂ) (t : ℝ) (q : ZMod level → ℝ) (j : ZMod level) :
    WithLp.ofLp (hamiltonianOperator level t q (patchedVector level χ c) -
      z • patchedVector level χ c) j =
      (t : ℂ) * (χ (j + 1) + χ (j - 1)) + ((q j : ℂ) - z) * χ j +
      (t : ℂ) * ((if j + 1 = 0 then c else 0) + (if j - 1 = 0 then c else 0)) +
      ((q j : ℂ) - z) * (if j = 0 then c else 0) := by
  rw [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec,
    hamiltonian_mulVec]
  simp only [patchedVector, sourceVector, WithLp.ofLp_add, WithLp.ofLp_toLp,
    Pi.add_apply, PiLp.single_apply, Pi.smul_apply, smul_eq_mul]
  ring

theorem remote_character_zero_residual (χ : DirichletCharacter ℂ level)
    (c z : ℂ) (t : ℝ) (q : ZMod level → ℝ) (j : ZMod level)
    (hj : j ≠ 0) (hplus : j + 1 ≠ 0) (hminus : j - 1 ≠ 0) (hχ : χ j = 0) :
    WithLp.ofLp (hamiltonianOperator level t q (patchedVector level χ c) -
      z • patchedVector level χ c) j = (t : ℂ) * (χ (j + 1) + χ (j - 1)) := by
  rw [patched_residual_coordinate]
  simp [hj, hplus, hminus, hχ]

theorem remote_zero_obstructs_patched_eigenvector (χ : DirichletCharacter ℂ level)
    (c z : ℂ) (t : ℝ) (ht : t ≠ 0) (q : ZMod level → ℝ) (j : ZMod level)
    (hj : j ≠ 0) (hplus : j + 1 ≠ 0) (hminus : j - 1 ≠ 0) (hχ : χ j = 0)
    (hsum : χ (j + 1) + χ (j - 1) ≠ 0) :
    hamiltonianOperator level t q (patchedVector level χ c) ≠ z • patchedVector level χ c := by
  intro h
  have he := remote_character_zero_residual level χ c z t q j hj hplus hminus hχ
  rw [h, sub_self] at he
  have ht' : (t : ℂ) ≠ 0 := by exact_mod_cast ht
  exact (mul_ne_zero ht' hsum) he.symm

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullPatchStencil
