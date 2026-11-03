/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib character and operator definitions retain upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletAnalyticNullPatch
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletPrincipalNinePatchObstruction
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicResidualLocality

set_option autoImplicit false
noncomputable section

/-!
# Analytic-preserving two-site repair still misses a genuine remote defect

The null patch is supported only at zero and one. At residue three modulo
nine it cannot alter the source residual 2t, regardless of the actual
Hurwitz-row coefficients. Analytic kernel preservation and one solved
boundary equation therefore do not give a full eigenvector.
No analytic zero is asserted to exist; this is not a GRH counterexample.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletNullPatchRemoteObstruction
open DirichletAnalyticNullPatch DirichletSourceVectorConstruction DirichletBoundaryRepairCost
open DirichletPrincipalNinePatchObstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicResidualLocality

theorem principal_nine_nullPatch_residual (s u z : ℂ) (t : ℝ) (q : ZMod 9 → ℝ) :
    WithLp.ofLp (hamiltonianOperator 9 t q
      (repairedVector 9 (1 : DirichletCharacter ℂ 9) s u) -
        z • repairedVector 9 (1 : DirichletCharacter ℂ 9) s u) (3 : ZMod 9) =
      2 * (t : ℂ) := by
  unfold repairedVector
  rw [residual_coordinate_unchanged 9 t q z _ (nullPatch 9 s u) (3 : ZMod 9)
    (by norm_num [nullPatch, PiLp.single_apply])
    (by norm_num [nullPatch, PiLp.single_apply])
    (by norm_num [nullPatch, PiLp.single_apply])]
  have h := principal_nine_patched_residual_at_three 0 z t q
  simpa [patchedVector] using h

theorem principal_nine_nullPatch_not_eigenvector (s u z : ℂ)
    (t : ℝ) (ht : t ≠ 0) (q : ZMod 9 → ℝ) :
    hamiltonianOperator 9 t q (repairedVector 9 (1 : DirichletCharacter ℂ 9) s u) ≠
      z • repairedVector 9 (1 : DirichletCharacter ℂ 9) s u := by
  intro h
  have he := principal_nine_nullPatch_residual s u z t q
  rw [h, sub_self] at he
  have ht' : (t : ℂ) ≠ 0 := by exact_mod_cast ht
  exact (mul_ne_zero (by norm_num : (2 : ℂ) ≠ 0) ht') he.symm

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletNullPatchRemoteObstruction
