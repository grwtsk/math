/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletMeanRowOptimality

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Optimized actual Hurwitz observation is independent of centering base.
This is a finite identity at every s, not a critical-strip series argument.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletMeanRowBaseIndependence
open DirichletZeroSumMeanRow DirichletMeanRowOptimality
open DirichletCenteredRowL2Error DirichletPoleCancelledObservation
variable (N : ℕ) [NeZero N]

theorem rowMean_shiftedRow (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    rowMean N (shiftedRow N u c) = rowMean N u-c := by
  unfold rowMean
  change (∑ j : ZMod N, (u j-c))/(N : ℂ) = _
  rw [Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Finset.card_univ, ZMod.card, nsmul_eq_mul]
  push_cast
  field_simp [NeZero.ne (N : ℂ)]
  <;> ring

theorem subtractMean_shift_invariant (u : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    subtractMean N (shiftedRow N u c) = subtractMean N u := by
  apply WithLp.ofLp_injective 2
  funext j
  change (u j-c)-rowMean N (shiftedRow N u c) = u j-rowMean N u
  rw [rowMean_shiftedRow]
  ring

def rawHurwitzRow (s : ℂ) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun j => star ((N : ℂ)^(-s) *
    HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s))

theorem centeredRow_as_raw_shift (base : ZMod N) (s : ℂ) :
    centeredRowVector N base s = shiftedRow N (rawHurwitzRow N s)
      (star ((N : ℂ)^(-s) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle base) s)) := by
  apply WithLp.ofLp_injective 2
  funext j
  change star ((N : ℂ)^(-s) *
      (HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s -
        HurwitzZeta.hurwitzZeta (ZMod.toAddCircle base) s)) = _
  rw [mul_sub, star_sub]
  rfl

theorem optimizedRow_independent_of_base (base other : ZMod N) (s : ℂ) :
    subtractMean N (centeredRowVector N base s) =
      subtractMean N (centeredRowVector N other s) := by
  rw [centeredRow_as_raw_shift, centeredRow_as_raw_shift,
    subtractMean_shift_invariant, subtractMean_shift_invariant]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletMeanRowBaseIndependence
