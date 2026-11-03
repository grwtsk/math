/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ArithmeticCyclicZetaResidualBudget

set_option autoImplicit false
noncomputable section

/-!
# Cost of lifting the Dirichlet analytic row to the cyclic operator

An arbitrary linear lift of the analytic row vanishes on the genuine full
character vector at an analytic zero. Any identification with the shifted
cyclic operator must therefore pay its entire residual on that vector.
This is a necessary error lower bound, not a construction of the bridge.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletRowBridgeObstruction
open DirichletSourceVectorConstruction DirichletAnalyticObservationError
open ArithmeticCyclicZetaResidualCriterion ArithmeticCyclicZetaResidualBudget
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

/-- The defect is measured on the same full source vector; no coordinate is dropped. -/
def bridgeDefect (χ : DirichletCharacter ℂ level) (s : ℂ)
    (t : ℝ) (q : ZMod level → ℝ)
    (lift : (Fin 1 → ℂ) →ₗ[ℂ] EuclideanSpace ℂ (ZMod level)) :=
  hamiltonianOperator level t q (sourceVector level χ) -
    zetaSpectralParameter s • sourceVector level χ -
    lift ((analyticRow level s).mulVec (WithLp.ofLp (sourceVector level χ)))

theorem defect_at_zero (χ : DirichletCharacter ℂ level) (s : ℂ)
    (hz : DirichletStripZero level χ s) (t : ℝ) (q : ZMod level → ℝ)
    (lift : (Fin 1 → ℂ) →ₗ[ℂ] EuclideanSpace ℂ (ZMod level)) :
    bridgeDefect level χ s t q lift =
      hamiltonianOperator level t q (sourceVector level χ) -
        zetaSpectralParameter s • sourceVector level χ := by
  unfold bridgeDefect
  rw [(source_vector_kernel_at_strip_zero level χ s hz).2, map_zero, sub_zero]

theorem defect_lower_bound (χ : DirichletCharacter ℂ level) (s : ℂ)
    (hz : DirichletStripZero level χ s) (t : ℝ) (q : ZMod level → ℝ)
    (lift : (Fin 1 → ℂ) →ₗ[ℂ] EuclideanSpace ℂ (ZMod level)) :
    |s.re - 1 / 2| * ‖sourceVector level χ‖ ≤
      ‖bridgeDefect level χ s t q lift‖ := by
  rw [defect_at_zero level χ s hz t q lift]
  exact critical_distance_mul_norm_le_residual level t q s (sourceVector level χ)

/-- Exact lifting on this source vector would already force the critical line. -/
theorem critical_line_of_zero_defect (χ : DirichletCharacter ℂ level) (s : ℂ)
    (hz : DirichletStripZero level χ s) (t : ℝ) (q : ZMod level → ℝ)
    (lift : (Fin 1 → ℂ) →ₗ[ℂ] EuclideanSpace ℂ (ZMod level))
    (h : bridgeDefect level χ s t q lift = 0) : s.re = 1 / 2 := by
  have hn := norm_pos_iff.mpr (sourceVector_ne_zero level χ)
  have hb := defect_lower_bound level χ s hz t q lift
  rw [h, norm_zero] at hb
  have ha : |s.re - 1 / 2| = 0 := by
    nlinarith [abs_nonneg (s.re - 1 / 2)]
  exact sub_eq_zero.mp (abs_eq_zero.mp ha)

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletRowBridgeObstruction
