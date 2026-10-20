/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

An invariant rational expression on the EXISTING guarded boundary unit pairs.
The Frey application must independently identify this expression with the
j-invariant of the OLD curve. Chart invariance is not an isomorphism over Q,
a geometric open cover, a conductor theorem, or a radical-height estimate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant

open RationalBoundaryCycle

/-- Constructed from the actual ratios; elliptic interpretation is a separate theorem. -/
def invariant (q : UnitPair) : ℚ :=
  256 * (1 - q.left * q.right)^3 / (q.left^2 * q.right^2)

@[simp] theorem mirror_invariant (q : UnitPair) :
    invariant (mirror q) = invariant q := by
  simp only [invariant, mirror, mul_comm]

@[simp] theorem cycle_invariant (q : UnitPair) :
    invariant (cycle q) = invariant q := by
  have hv : q.right = 1 - q.left := by linarith [q.sum_one]
  have hv0 : 1 - q.left ≠ 0 := by rw [← hv]; exact q.right_ne
  dsimp [invariant, cycle]
  rw [hv]
  field_simp [q.left_ne, hv0] <;> ring

/-- All six labels preserve the expression; they need not give six distinct values. -/
theorem chart_invariant (q : UnitPair) (j : Fin 3) (reflected : Bool) :
    invariant (chart q j reflected) = invariant q := by
  cases reflected <;> fin_cases j <;>
    simp [chart, rotate, mirror_invariant, cycle_invariant]

/-- The exact square identity is about this rational function, not an unrelated SOS. -/
theorem invariant_sub_1728 (q : UnitPair) :
    invariant q - 1728 =
      64 * ((q.left-q.right)*(1+q.left)*(1+q.right))^2 /
        (q.left^2*q.right^2) := by
  have hv : q.right = 1 - q.left := by linarith [q.sum_one]
  have hv0 : 1 - q.left ≠ 0 := by rw [← hv]; exact q.right_ne
  unfold invariant
  rw [hv]
  field_simp [q.left_ne, hv0] <;> ring

/-- An archimedean VALUE lower bound, not a bound on rational height from above. -/
theorem invariant_ge_1728 (q : UnitPair) : (1728 : ℚ) ≤ invariant q := by
  rw [← sub_nonneg, invariant_sub_1728]
  positivity

/-- The same expression satisfies a degree-six equation in the actual first ratio. -/
theorem degree_six_equation (q : UnitPair) :
    256 * (q.left^2-q.left+1)^3 -
      invariant q * q.left^2 * (1-q.left)^2 = 0 := by
  have hv : q.right = 1 - q.left := by linarith [q.sum_one]
  have hv0 : 1 - q.left ≠ 0 := by rw [← hv]; exact q.right_ne
  unfold invariant
  rw [hv]
  field_simp [q.left_ne, hv0] <;> ring

end GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant
