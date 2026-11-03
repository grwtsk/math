/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239Curve
import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic

set_option autoImplicit false
noncomputable section

/-! Literal source-model completion of the square. All proof bodies are
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def recordFiberDiscriminant {F : Type*} [Field F] (x : F) : F :=
  x^2 + 4*(x^3 - (A : F)*x + (B : F))

theorem record_square_fiber_iff {F : Type*} [Field F]
    (h4 : (4 : F) ≠ 0) (x y : F) :
    y^2 + x*y = x^3 - (A : F)*x + (B : F) ↔
    (2*y+x)^2 = recordFiberDiscriminant x := by
  constructor
  · intro h
    unfold recordFiberDiscriminant
    linear_combination 4*h
  · intro h
    apply mul_left_cancel₀ h4
    unfold recordFiberDiscriminant at h
    linear_combination h

/-- The zero-discriminant fiber is included by the imported exact count. -/
theorem record_discriminant_square_count {F : Type*} [Field F] [Fintype F]
    (hF : ringChar F ≠ 2) (x : F) :
    (({z : F | z^2 = recordFiberDiscriminant x}.toFinset.card : ℕ) : ℤ) =
      quadraticChar F (recordFiberDiscriminant x) + 1 := by
  exact quadraticChar_card_sqrts hF (recordFiberDiscriminant x)

/- Still required: package the invertible affine substitution into a fiber
cardinality equivalence, sum over x, and identify the good-reduction local
point count and actual cyclic trace. No global analytic BSD bridge follows. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
