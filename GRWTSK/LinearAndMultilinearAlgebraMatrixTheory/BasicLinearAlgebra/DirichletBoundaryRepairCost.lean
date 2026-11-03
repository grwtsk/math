/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCyclicBoundaryObstruction

set_option autoImplicit false
noncomputable section

/-!
# A boundary repair and its analytic cost

Adding c at residue zero changes the obstructed cyclic equation by
(q(0)-z)c, but changes the actual Hurwitz row by c times its zero column.
Thus fixing one coordinate does not preserve the analytic kernel for free.
Other cyclic coordinates and the complete analytic error remain uncontrolled.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletBoundaryRepairCost
open DirichletSourceVectorConstruction DirichletAnalyticObservationError
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

def patchedVector (χ : DirichletCharacter ℂ level) (c : ℂ) :
    EuclideanSpace ℂ (ZMod level) := sourceVector level χ + PiLp.single 2 0 c

theorem patch_norm (χ : DirichletCharacter ℂ level) (c : ℂ) :
    ‖patchedVector level χ c - sourceVector level χ‖ = ‖c‖ := by
  simp [patchedVector, PiLp.norm_single]

theorem patched_boundary_residual (χ : DirichletCharacter ℂ level) (hl : level ≠ 1)
    (c z : ℂ) (t : ℝ) (q : ZMod level → ℝ) :
    WithLp.ofLp (hamiltonianOperator level t q (patchedVector level χ c) -
      z • patchedVector level χ c) 0 =
      (t : ℂ) * (1 + χ (-1)) + ((q 0 : ℂ) - z) * c := by
  haveI : Nontrivial (ZMod level) := ZMod.nontrivial_iff.mpr hl
  rw [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec,
    hamiltonian_mulVec]
  simp [patchedVector, sourceVector, χ.map_zero' hl, PiLp.single_apply]
  ring

theorem patched_analytic_row (χ : DirichletCharacter ℂ level) (s c : ℂ) :
    (analyticRow level s).mulVec (WithLp.ofLp (patchedVector level χ c)) 0 =
      DirichletCharacter.LFunction χ s + analyticRow level s 0 0 * c := by
  simp only [patchedVector, WithLp.ofLp_add, PiLp.ofLp_single, Matrix.mulVec_add]
  rw [source_row_eq_LFunction]
  simp [Matrix.mulVec_single]

theorem patched_row_at_zero (χ : DirichletCharacter ℂ level) (s c : ℂ)
    (hz : DirichletStripZero level χ s) :
    (analyticRow level s).mulVec (WithLp.ofLp (patchedVector level χ c)) 0 =
      analyticRow level s 0 0 * c := by
  rw [patched_analytic_row, hz.1, zero_add]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletBoundaryRepairCost
