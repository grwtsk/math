/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib character definitions retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFullPatchStencil

set_option autoImplicit false
noncomputable section

/-!
# A genuine modulus-nine character obstruction

The actual principal Dirichlet character modulo nine is zero at three
and one at two and four. Patching residue zero cannot remove the residual
2t at residue three, for any potential, patch value or spectral parameter.
This is a finite diagnostic of this vector construction, not a statement
about analytic zeros or a counterexample to GRH.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletPrincipalNinePatchObstruction
open DirichletFullPatchStencil DirichletBoundaryRepairCost
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

theorem principal_nine_samples :
    (1 : DirichletCharacter ℂ 9) (3 : ZMod 9) = 0 ∧
    (1 : DirichletCharacter ℂ 9) (2 : ZMod 9) = 1 ∧
    (1 : DirichletCharacter ℂ 9) (4 : ZMod 9) = 1 := by
  refine ⟨MulChar.map_nonunit _ ?_, MulChar.one_apply ?_, MulChar.one_apply ?_⟩ <;>
    norm_num [ZMod.isUnit_iff_coprime]

theorem principal_nine_patched_residual_at_three
    (c z : ℂ) (t : ℝ) (q : ZMod 9 → ℝ) :
    WithLp.ofLp (hamiltonianOperator 9 t q
      (patchedVector 9 (1 : DirichletCharacter ℂ 9) c) -
        z • patchedVector 9 (1 : DirichletCharacter ℂ 9) c) (3 : ZMod 9) =
      2 * (t : ℂ) := by
  have h := remote_character_zero_residual 9 (1 : DirichletCharacter ℂ 9)
    c z t q (3 : ZMod 9) (by norm_num) (by norm_num) (by norm_num)
    principal_nine_samples.1
  norm_num at h ⊢
  rw [principal_nine_samples.2.1, principal_nine_samples.2.2] at h
  linear_combination h

theorem principal_nine_patch_not_eigenvector
    (c z : ℂ) (t : ℝ) (ht : t ≠ 0) (q : ZMod 9 → ℝ) :
    hamiltonianOperator 9 t q (patchedVector 9 (1 : DirichletCharacter ℂ 9) c) ≠
      z • patchedVector 9 (1 : DirichletCharacter ℂ 9) c := by
  intro h
  have he := principal_nine_patched_residual_at_three c z t q
  rw [h, sub_self] at he
  have ht' : (t : ℂ) ≠ 0 := by exact_mod_cast ht
  exact (mul_ne_zero (by norm_num : (2 : ℂ) ≠ 0) ht') he.symm

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletPrincipalNinePatchObstruction
