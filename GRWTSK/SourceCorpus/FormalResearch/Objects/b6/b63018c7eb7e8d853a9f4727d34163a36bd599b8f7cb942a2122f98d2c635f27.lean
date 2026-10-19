import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# CA-03 F1b scratch audit: Poincare curve integrals

This file records kernel-checked positive adapters and the remaining blockers.
It is not imported by the canonical build and does not inhabit the CA-03
single-hole statement.
-/

open scoped unitInterval Interval Pointwise Topology
open AffineMap Filter Function MeasureTheory Set Complex

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopyPoincare

noncomputable section

#check ContinuousLinearMap.lsmul
#check ContinuousLinearMap.smulRight
#check curveIntegral_segment
#check curveIntegral_trans
#check curveIntegral_symm
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt

/-- The complex one-form corresponding to the classical integrand `f(z) dz`. -/
def complexOneForm (f : ℂ → ℂ) : ℂ → ℂ →L[ℂ] ℂ :=
  fun z ↦ (ContinuousLinearMap.lsmul ℂ ℂ) (f z)

@[simp]
theorem complexOneForm_apply (f : ℂ → ℂ) (z v : ℂ) :
    complexOneForm f z v = f z * v := by
  simp [complexOneForm]

/-- Curve integration of `f(z) dz` along a straight segment is exactly its
unit-interval affine parameter integral. -/
theorem curveIntegral_segment_complexOneForm
    (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (complexOneForm f) (Path.segment a b) =
      ∫ t : ℝ in 0..1, f (lineMap a b t) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro t ht
  simp [complexOneForm]

/-! ## Missing normalization and geometry bridges

The segment adapter above is positive evidence that the raw rectangle edges
can be converted one at a time after proving elementary affine-substitution
lemmas.  Pinned mathlib does not currently package that conversion, does not
identify `circleIntegral` with a `curveIntegral` along a circle path, and does
not provide reparameterization invariance for `curveIntegral`.

More importantly, the Poincare theorem requires the extended homotopy map to
be globally `C²` on the closed parameter square.  A single loop obtained by
concatenating four line segments has four parameter corners, so the direct
whole-rectangle-to-circle homotopy cannot meet that hypothesis.  A possible
unbounded development would split the region into four smooth strips, prove
four homotopy identities, and cancel their transverse seams.  That requires
new circle-arc, reparameterization, affine edge, seam cancellation, and range
lemmas and is outside the bounded CA-03 branch.
-/

#check_failure rectangleBoundaryIntegral_eq_curveIntegral
#check_failure circleIntegral_eq_curveIntegral_circlePath
#check_failure curveIntegral_reparam
#check_failure Path.curveIntegral_reparam

#print axioms curveIntegral_segment_complexOneForm

end


end Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopyPoincare
