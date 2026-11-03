/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability

set_option autoImplicit false
noncomputable section

/-!
# Residue-zero obstruction for the unmodified full character vector

For modulus different from one, chi(0)=0. At residue zero the cyclic
stencil therefore leaves t*(1+chi(-1)), independent of potential and
spectral parameter. Even characters with nonzero hopping cannot be exact
eigenvectors in this unmodified representation. This does not exclude
other source-to-vector constructions or operators. No GRH conclusion.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletCyclicBoundaryObstruction
open DirichletSourceVectorConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

theorem residual_at_zero (χ : DirichletCharacter ℂ level) (hl : level ≠ 1)
    (t : ℝ) (q : ZMod level → ℝ) (z : ℂ) :
    WithLp.ofLp (hamiltonianOperator level t q (sourceVector level χ) -
      z • sourceVector level χ) 0 = (t : ℂ) * (1 + χ (-1)) := by
  rw [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec]
  rw [hamiltonian_mulVec]
  simp [sourceVector, χ.map_zero' hl]

theorem even_character_residual_lower (χ : DirichletCharacter ℂ level)
    (hl : level ≠ 1) (heven : χ (-1) = 1)
    (t : ℝ) (q : ZMod level → ℝ) (z : ℂ) :
    2 * |t| ≤ ‖hamiltonianOperator level t q (sourceVector level χ) -
      z • sourceVector level χ‖ := by
  have hc := PiLp.norm_apply_le
    (hamiltonianOperator level t q (sourceVector level χ) - z • sourceVector level χ)
    (0 : ZMod level)
  have he := residual_at_zero level χ hl t q z
  rw [heven] at he
  change ‖WithLp.ofLp (hamiltonianOperator level t q (sourceVector level χ) -
    z • sourceVector level χ) 0‖ ≤ _ at hc
  rw [he, norm_mul] at hc
  simpa [Complex.norm_real, Real.norm_eq_abs, mul_comm] using hc

theorem even_character_not_eigenvector (χ : DirichletCharacter ℂ level)
    (hl : level ≠ 1) (heven : χ (-1) = 1)
    (t : ℝ) (ht : t ≠ 0) (q : ZMod level → ℝ) (z : ℂ) :
    hamiltonianOperator level t q (sourceVector level χ) ≠ z • sourceVector level χ := by
  intro h
  have hb := even_character_residual_lower level χ hl heven t q z
  rw [h, sub_self, norm_zero] at hb
  have hp := abs_pos.mpr ht
  linarith

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletCyclicBoundaryObstruction
