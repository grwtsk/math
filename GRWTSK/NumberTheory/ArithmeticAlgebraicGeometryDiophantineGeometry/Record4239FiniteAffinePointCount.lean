/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239AffineSquareFiberEquiv
import Mathlib.Data.Set.Card

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual source equation finite point counts, without a good-reduction
or global analytic claim. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def RecordAffinePoints (F : Type*) [Field F] :=
  Σ x : F, {y : F // y^2+x*y=x^3-(A : F)*x+(B : F)}

theorem record_source_fiber_character_count {F : Type*} [Field F] [Fintype F]
    (h2 : (2 : F) ≠ 0) (hF : ringChar F ≠ 2) (x : F) :
    (Nat.card {y : F // y^2+x*y=x^3-(A : F)*x+(B : F)} : ℤ) =
      quadraticChar F (recordFiberDiscriminant x)+1 := by
  classical
  rw [record_affine_fiber_card h2 x]
  have h := record_discriminant_square_count hF x
  simpa only [Set.toFinset_card, Nat.card_eq_fintype_card] using h

theorem record_actual_affine_point_count {F : Type*} [Field F] [Fintype F]
    (h2 : (2 : F) ≠ 0) (hF : ringChar F ≠ 2) :
    (Nat.card (RecordAffinePoints F) : ℤ) = (Fintype.card F : ℤ)+
      ∑ x : F, quadraticChar F (recordFiberDiscriminant x) := by
  classical
  unfold RecordAffinePoints
  rw [Nat.card_sigma, Nat.cast_sum]
  simp_rw [record_source_fiber_character_count h2 hF]
  simp only [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ,
    nsmul_eq_mul, mul_one]
  ring

/- Adding a single infinity point yields card(F)+1+the character sum
for the corresponding projective source model. Identifying this model
with nonsingular good reduction, its Euler factor, and an actual cyclic
trace/global analytic L-function still requires separate source bridges. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
