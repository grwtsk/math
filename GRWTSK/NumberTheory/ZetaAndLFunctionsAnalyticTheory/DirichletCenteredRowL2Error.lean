/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.GeneralTopology.DirichletPoleCancelledObservation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual centered analytic row with full-vector L2 error conditioning.
The row norm is retained; quantitative series estimates are separate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletCenteredRowL2Error
open DirichletPoleCancelledObservation
variable (N : ℕ) [NeZero N]

def centeredRowVector (base : ZMod N) (s : ℂ) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun j => star ((N : ℂ) ^ (-s) * centeredHurwitz N j base s))

theorem centered_analytic_difference_inner (χ : DirichletCharacter ℂ N)
    (r : ZMod N → ℂ) (base : ZMod N) (s : ℂ)
    (hχ : (∑ j : ZMod N, χ j) = 0) (hr : (∑ j : ZMod N, r j) = 0) :
    DirichletCharacter.LFunction χ s - ZMod.LFunction r s =
      inner ℂ (centeredRowVector N base s) (WithLp.toLp 2 (fun j => χ j - r j)) := by
  rw [exact_centered_analytic_difference N χ r base s hχ hr, PiLp.inner_apply]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  change (N : ℂ) ^ (-s) * ((χ j - r j) * centeredHurwitz N j base s) =
    inner ℂ (star ((N : ℂ) ^ (-s) * centeredHurwitz N j base s)) (χ j - r j)
  rw [RCLike.inner_apply, star_star]
  ring

theorem centered_analytic_fullVector_error (χ : DirichletCharacter ℂ N)
    (r : ZMod N → ℂ) (base : ZMod N) (s : ℂ)
    (hχ : (∑ j : ZMod N, χ j) = 0) (hr : (∑ j : ZMod N, r j) = 0) :
    ‖DirichletCharacter.LFunction χ s - ZMod.LFunction r s‖ ≤
      ‖centeredRowVector N base s‖ *
        ‖(WithLp.toLp 2 (fun j => χ j - r j) : EuclideanSpace ℂ (ZMod N))‖ := by
  rw [centered_analytic_difference_inner N χ r base s hχ hr]
  exact norm_inner_le_norm _ _

theorem centeredRowVector_norm_sq (base : ZMod N) (s : ℂ) :
    ‖centeredRowVector N base s‖ ^ 2 =
      ∑ j : ZMod N, ‖(N : ℂ) ^ (-s) * centeredHurwitz N j base s‖ ^ 2 := by
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro j _
  change ‖star ((N : ℂ) ^ (-s) * centeredHurwitz N j base s)‖ ^ 2 = _
  rw [norm_star]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletCenteredRowL2Error
