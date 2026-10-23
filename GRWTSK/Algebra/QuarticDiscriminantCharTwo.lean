import GRWTSK.Algebra.QuarticCoefficientDiscriminant

/-!
# Characteristic-two monic quartic discriminant

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

In characteristic two, the standard monic quartic discriminant is a
perfect square. This identity is compatible with separable quartics:
being a square is not the same as vanishing. It also explains why a
square-root-of-discriminant parity argument cannot recover the sign
characteristic of a quartic Galois action in characteristic two.
-/

namespace GRWTSK.Algebra.QuarticDiscriminantCharTwo

open GRWTSK.Algebra.QuarticCoefficientDiscriminant

variable {R : Type*} [CommRing R]

/-- The coefficient expression that squares to the discriminant in
characteristic two. -/
def charTwoDiscriminantRoot (A B C D : R) : R :=
  C ^ 2 + A ^ 2 * D + A * B * C

/-- The monic quartic discriminant is an explicit square in
characteristic two, including in nonreduced commutative rings. -/
theorem monicQuarticDiscriminant_charTwo
    (h2 : (2 : R) = 0) (A B C D : R) :
    monicQuarticDiscriminant A B C D =
      charTwoDiscriminantRoot A B C D ^ 2 := by
  simp only [monicQuarticDiscriminant, charTwoDiscriminantRoot]
  have h4 : (4 : R) = 0 := by calc
    (4 : R) = 2 * 2 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h6 : (6 : R) = 0 := by calc
    (6 : R) = 2 * 3 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h18 : (18 : R) = 0 := by calc
    (18 : R) = 2 * 9 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h27 : (27 : R) = 1 := by
    calc
      (27 : R) = 1 + 2 * 13 := by norm_num
      _ = 1 := by rw [h2]; ring
  have h16 : (16 : R) = 0 := by calc
    (16 : R) = 4 * 4 := by norm_num
    _ = 0 := by rw [h4]; ring
  have h80 : (80 : R) = 0 := by calc
    (80 : R) = 16 * 5 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h128 : (128 : R) = 0 := by calc
    (128 : R) = 16 * 8 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h144 : (144 : R) = 0 := by calc
    (144 : R) = 16 * 9 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h192 : (192 : R) = 0 := by calc
    (192 : R) = 16 * 12 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h256 : (256 : R) = 0 := by calc
    (256 : R) = 16 * 16 := by norm_num
    _ = 0 := by rw [h16]; ring
  simp only [h4, h6, h18, h27, h16, h80, h128, h144, h192, h256,
    zero_mul, mul_zero, zero_add, add_zero, zero_sub, sub_zero]
  have hneg : ∀ x : R, -x = x := by
    intro x
    have hh : x + x = 0 := by
      calc x + x = (2 : R) * x := by ring
        _ = 0 := by rw [h2]; ring
    exact neg_eq_iff_add_eq_zero.mpr hh
  simp only [hneg]
  ring
end GRWTSK.Algebra.QuarticDiscriminantCharTwo
