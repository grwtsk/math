/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239FiniteSquareFiber

set_option autoImplicit false
noncomputable section

/-! Literal source affine fiber equivalence, including the ramified fiber.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def recordAffineSquareFiberEquiv {F : Type*} [Field F]
    (h2 : (2 : F) ≠ 0) (x : F) :
    {y : F // y^2+x*y=x^3-(A : F)*x+(B : F)} ≃
    {z : F // z^2=recordFiberDiscriminant x} := by
  have h4 : (4 : F) ≠ 0 := by
    convert mul_ne_zero h2 h2 using 1 <;> norm_num
  have hi (z : F) : 2*((z-x)/2)+x=z := by
    field_simp
    <;> ring
  refine
    { toFun := fun y => ⟨2*y.val+x, (record_square_fiber_iff h4 x y.val).mp y.property⟩
      invFun := fun z => ⟨(z.val-x)/2, ?_⟩
      left_inv := ?_
      right_inv := ?_ }
  · apply (record_square_fiber_iff h4 x _).mpr
    rw [hi]
    exact z.property
  · intro y
    apply Subtype.ext
    change (2*y.val+x-x)/2=y.val
    field_simp
    <;> ring
  · intro z
    apply Subtype.ext
    exact hi z.val

theorem record_affine_fiber_card {F : Type*} [Field F]
    (h2 : (2 : F) ≠ 0) (x : F) :
    Nat.card {y : F // y^2+x*y=x^3-(A : F)*x+(B : F)} =
      Nat.card {z : F // z^2=recordFiberDiscriminant x} := by
  exact Nat.card_congr (recordAffineSquareFiberEquiv h2 x)

/- Together with record_discriminant_square_count, this transfers the
quadratic-character count to the actual source equation. Finite total
point counting, good reduction, cyclic trace identification and global
analytic BSD remain separate obligations. No nonsingularity is inferred
from the existence of this fiber bijection. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
