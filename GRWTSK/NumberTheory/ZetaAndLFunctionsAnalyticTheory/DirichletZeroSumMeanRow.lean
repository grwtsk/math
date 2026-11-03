/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCenteredRowL2Error

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Mean removal preserves the actual analytic functional on zero-sum errors.
No source accuracy or cyclic eigenvector construction is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletZeroSumMeanRow
open DirichletCenteredRowL2Error
variable (N : ℕ) [NeZero N]

def rowMean (u : EuclideanSpace ℂ (ZMod N)) : ℂ := (∑ j, u j) / (N : ℂ)

def subtractMean (u : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun j => u j - rowMean N u)

theorem subtractMean_sum_zero (u : EuclideanSpace ℂ (ZMod N)) :
    (∑ j : ZMod N, subtractMean N u j) = 0 := by
  change (∑ j : ZMod N, (u j - rowMean N u)) = 0
  rw [Finset.sum_sub_distrib]
  simp [rowMean, nsmul_eq_mul, NeZero.ne (N : ℂ)]

theorem subtractMean_inner_zeroSum (u v : EuclideanSpace ℂ (ZMod N))
    (hv : (∑ j, v j) = 0) :
    inner ℂ (subtractMean N u) v = inner ℂ u v := by
  rw [PiLp.inner_apply, PiLp.inner_apply]
  change (∑ j : ZMod N, inner ℂ (u j - rowMean N u) (v j)) = _
  simp_rw [inner_sub_left, RCLike.inner_apply]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hv, mul_zero, sub_zero]

theorem analytic_mean_row_error (χ : DirichletCharacter ℂ N)
    (r : ZMod N → ℂ) (base : ZMod N) (s : ℂ)
    (hχ : (∑ j : ZMod N, χ j) = 0) (hr : (∑ j : ZMod N, r j) = 0) :
    ‖DirichletCharacter.LFunction χ s - ZMod.LFunction r s‖ ≤
      ‖subtractMean N (centeredRowVector N base s)‖ *
        ‖(WithLp.toLp 2 (fun j => χ j - r j) : EuclideanSpace ℂ (ZMod N))‖ := by
  have hv : (∑ j : ZMod N, (χ j-r j)) = 0 := by
    rw [Finset.sum_sub_distrib, hχ, hr, sub_zero]
  rw [centered_analytic_difference_inner N χ r base s hχ hr,
    ← subtractMean_inner_zeroSum N (centeredRowVector N base s)
      (WithLp.toLp 2 (fun j => χ j-r j)) hv]
  exact norm_inner_le_norm _ _

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletZeroSumMeanRow
