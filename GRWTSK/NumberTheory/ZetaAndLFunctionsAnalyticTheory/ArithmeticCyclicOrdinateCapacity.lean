/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticCyclicZetaResidualCriterion
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section

/-!
# Ordinate capacity of the actual finite cyclic operator

Small relative residual requires the full spectral parameter, hence the
zero ordinate, to fit inside the operator norm plus the residual allowance.
Increasing dimension alone is insufficient if hopping and potential sup
norm remain uniformly bounded. No analytic zero supplier is constructed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicOrdinateCapacity
open ArithmeticCyclicZetaResidualCriterion
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds

theorem parameter_norm_le_of_residual (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (z : ℂ) (ε : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hx : x ≠ 0)
    (hres : ‖hamiltonianOperator N t q x - z • x‖ ≤ ε * ‖x‖) :
    ‖z‖ ≤ 2 * |t| + ‖q‖ + ε := by
  have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx
  have he : z • x = hamiltonianOperator N t q x -
      (hamiltonianOperator N t q x - z • x) := by abel
  have hb : ‖z‖ * ‖x‖ ≤ (2 * |t| + ‖q‖ + ε) * ‖x‖ := by
    calc
      ‖z‖ * ‖x‖ = ‖z • x‖ := (norm_smul z x).symm
      _ ≤ ‖hamiltonianOperator N t q x‖ +
          ‖hamiltonianOperator N t q x - z • x‖ := by
        conv_lhs => rw [he]
        exact norm_sub_le _ _
      _ ≤ (‖hamiltonianOperator N t q‖ * ‖x‖) + ε * ‖x‖ :=
        add_le_add ((hamiltonianOperator N t q).le_opNorm x) hres
      _ ≤ (2 * |t| + ‖q‖) * ‖x‖ + ε * ‖x‖ :=
        add_le_add_right (mul_le_mul_of_nonneg_right
          (operator_norm_bound N t q) hn.le) _
      _ = (2 * |t| + ‖q‖ + ε) * ‖x‖ := by ring
  exact (mul_le_mul_right hn).mp hb

theorem ordinate_le_of_residual (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (s : ℂ) (ε : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hx : x ≠ 0)
    (hres : ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ ≤
      ε * ‖x‖) : |s.im| ≤ 2 * |t| + ‖q‖ + ε := by
  have hr : |s.im| ≤ ‖zetaSpectralParameter s‖ := by
    simpa only [zetaSpectralParameter_re] using
      Complex.abs_re_le_norm (zetaSpectralParameter s)
  exact hr.trans (parameter_norm_le_of_residual N t q _ ε x hx hres)

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicOrdinateCapacity
