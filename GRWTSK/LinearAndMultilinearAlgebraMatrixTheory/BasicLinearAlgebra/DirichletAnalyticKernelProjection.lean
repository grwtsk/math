/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib matrix and operator facts retain upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section

/-!
# Actual analytic-row projection with a complete cyclic residual budget

Subtract the full row value divided by one nonzero row coefficient at
that coordinate. This gives an exact analytic-kernel vector, with an
explicit correction norm, nonvanishing test and full cyclic residual cost.
It fixes vectors already in the kernel and thus does not by itself improve
the obstructed character seed. A global small-residual seed, conditioning
and analytic zero identification remain missing. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticKernelProjection
open DirichletSourceVectorConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds

variable (level : ℕ) [NeZero level]

def rowValue (s : ℂ) (x : EuclideanSpace ℂ (ZMod level)) : ℂ :=
  (analyticRow level s).mulVec (WithLp.ofLp x) 0

def kernelProjection (s : ℂ) (j : ZMod level) (x : EuclideanSpace ℂ (ZMod level)) :=
  x - PiLp.single 2 j (rowValue level s x / analyticRow level s 0 j)

theorem projected_row_zero (s : ℂ) (j : ZMod level)
    (hj : analyticRow level s 0 j ≠ 0) (x : EuclideanSpace ℂ (ZMod level)) :
    rowValue level s (kernelProjection level s j x) = 0 := by
  unfold kernelProjection rowValue
  simp only [WithLp.ofLp_sub, PiLp.ofLp_single, Matrix.sub_mulVec,
    Matrix.mulVec_single, Pi.sub_apply]
  field_simp [hj]
  ring

theorem projection_fixes_kernel (s : ℂ) (j : ZMod level)
    (x : EuclideanSpace ℂ (ZMod level)) (hx : rowValue level s x = 0) :
    kernelProjection level s j x = x := by
  simp [kernelProjection, hx]

theorem projection_distance (s : ℂ) (j : ZMod level)
    (x : EuclideanSpace ℂ (ZMod level)) :
    ‖kernelProjection level s j x - x‖ =
      ‖rowValue level s x‖ / ‖analyticRow level s 0 j‖ := by
  have he : kernelProjection level s j x - x =
      -PiLp.single 2 j (rowValue level s x / analyticRow level s 0 j) := by
    unfold kernelProjection
    abel
  rw [he, norm_neg, PiLp.norm_single, norm_div]

theorem projected_vector_ne_zero (s : ℂ) (j : ZMod level)
    (x : EuclideanSpace ℂ (ZMod level))
    (hsmall : ‖rowValue level s x‖ / ‖analyticRow level s 0 j‖ < ‖x‖) :
    kernelProjection level s j x ≠ 0 := by
  intro h
  have he := projection_distance level s j x
  rw [h, zero_sub, norm_neg] at he
  linarith

theorem full_projected_residual_bound (s z : ℂ) (j : ZMod level)
    (t : ℝ) (q : ZMod level → ℝ) (x : EuclideanSpace ℂ (ZMod level)) :
    ‖hamiltonianOperator level t q (kernelProjection level s j x) -
        z • kernelProjection level s j x‖ ≤
      ‖hamiltonianOperator level t q x - z • x‖ +
        (2 * |t| + ‖q‖ + ‖z‖) *
          (‖rowValue level s x‖ / ‖analyticRow level s 0 j‖) := by
  let d := PiLp.single 2 j (rowValue level s x / analyticRow level s 0 j)
  have he : hamiltonianOperator level t q (kernelProjection level s j x) -
      z • kernelProjection level s j x =
      (hamiltonianOperator level t q x - z • x) -
        (hamiltonianOperator level t q d - z • d) := by
    change hamiltonianOperator level t q (x - d) - z • (x - d) = _
    rw [map_sub, smul_sub]
    abel
  have hd : ‖hamiltonianOperator level t q d - z • d‖ ≤
      (2 * |t| + ‖q‖ + ‖z‖) * ‖d‖ := by
    calc
      _ ≤ ‖hamiltonianOperator level t q d‖ + ‖z • d‖ := norm_sub_le _ _
      _ ≤ ‖hamiltonianOperator level t q‖ * ‖d‖ + ‖z‖ * ‖d‖ := by
        rw [norm_smul]
        exact add_le_add_right ((hamiltonianOperator level t q).le_opNorm d) _
      _ ≤ (2 * |t| + ‖q‖) * ‖d‖ + ‖z‖ * ‖d‖ :=
        add_le_add_right (mul_le_mul_of_nonneg_right
          (operator_norm_bound level t q) (norm_nonneg d)) _
      _ = _ := by ring
  rw [he]
  have hn : ‖d‖ = ‖rowValue level s x‖ / ‖analyticRow level s 0 j‖ := by
    simp [d, PiLp.norm_single, norm_div]
  exact (norm_sub_le _ _).trans (by rw [← hn]; exact add_le_add_left hd _)

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticKernelProjection
