import GRWTSK.Algebra.QuarticCubicDiscriminant

/-!
# Explicit discriminant of a monic quartic

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The standard monic quartic discriminant is defined by its explicit
integer-coefficient polynomial. It is identified with the pinned
Mathlib Cubic.discr of the adjacency cubic. This equality is universal
over commutative rings and is valid in characteristics two and three.
No identification with a generic polynomial discriminant API is claimed.
-/

namespace GRWTSK.Algebra.QuarticCoefficientDiscriminant

open GRWTSK.Algebra.QuarticCubicDiscriminant

variable {R : Type*} [CommRing R]

/-- Standard discriminant coefficient formula for
X⁴ + A X³ + B X² + C X + D. -/
def monicQuarticDiscriminant (A B C D : R) : R :=
  256 * D ^ 3 - 192 * A * C * D ^ 2 -
  128 * B ^ 2 * D ^ 2 + 144 * B * C ^ 2 * D -
  27 * C ^ 4 + 144 * A ^ 2 * B * D ^ 2 -
  6 * A ^ 2 * C ^ 2 * D - 80 * A * B ^ 2 * C * D +
  18 * A * B * C ^ 3 + 16 * B ^ 4 * D -
  4 * B ^ 3 * C ^ 2 - 27 * A ^ 4 * D ^ 2 +
  18 * A ^ 3 * B * C * D - 4 * A ^ 3 * C ^ 3 -
  4 * A ^ 2 * B ^ 3 * D + A ^ 2 * B ^ 2 * C ^ 2

/-- The cubic adjacency resolvent has exactly the classical monic
quartic discriminant, as an integral polynomial identity. -/
theorem monicQuarticDiscriminant_eq_adjacencyCubic_discr
    (A B C D : R) :
    monicQuarticDiscriminant A B C D =
      (adjacencyCubic (-A) B (-C) D).discr := by
  simp only [monicQuarticDiscriminant, adjacencyCubic, Cubic.discr]
  ring

end GRWTSK.Algebra.QuarticCoefficientDiscriminant
