/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroSumMeanRow

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact finite optimality among common scalar row shifts.
This does not supply an accurate source vector or an analytic-zero
Hamiltonian realization. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletMeanRowOptimality
open DirichletZeroSumMeanRow
variable (N : ℕ) [NeZero N]

def constantRow (c : ℂ) : EuclideanSpace ℂ (ZMod N) := WithLp.toLp 2 (fun _ => c)
def shiftedRow (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    EuclideanSpace ℂ (ZMod N) := WithLp.toLp 2 (fun j => u j-c)

theorem constantRow_norm_sq (c : ℂ) : ‖constantRow N c‖^2 = (N : ℝ)*‖c‖^2 := by
  rw [PiLp.norm_sq_eq_of_L2]
  simp [constantRow, nsmul_eq_mul]

theorem constantRow_inner_subtractMean (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    inner ℂ (constantRow N c) (subtractMean N u) = 0 := by
  rw [PiLp.inner_apply]
  change (∑ j : ZMod N, inner ℂ c (subtractMean N u j)) = 0
  simp_rw [RCLike.inner_apply]
  rw [← Finset.mul_sum, subtractMean_sum_zero, mul_zero]

theorem shiftedRow_decomposition (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    shiftedRow N u c = constantRow N (rowMean N u-c) + subtractMean N u := by
  apply WithLp.ofLp_injective 2
  funext j
  change u j-c = (rowMean N u-c)+(u j-rowMean N u)
  ring

theorem shiftedRow_norm_sq (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    ‖shiftedRow N u c‖^2 = ‖subtractMean N u‖^2 +
      (N : ℝ)*‖rowMean N u-c‖^2 := by
  rw [shiftedRow_decomposition,
    norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _
      (constantRow_inner_subtractMean N u _), constantRow_norm_sq]
  ring

theorem meanRow_minimal_norm (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    ‖subtractMean N u‖ ≤ ‖shiftedRow N u c‖ := by
  have h := shiftedRow_norm_sq N u c
  have hp : 0 ≤ (N : ℝ)*‖rowMean N u-c‖^2 := by positivity
  nlinarith [norm_nonneg (subtractMean N u), norm_nonneg (shiftedRow N u c)]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletMeanRowOptimality
