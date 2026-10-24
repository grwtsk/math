import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Bitwise
namespace GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-- One exact even exponentiation iteration, with certified multiplication. -/
theorem pow_even_step (n e : Nat) (b r nb : Word)
    (he : e ≠ 0) (hp : e % 2 ≠ 1) (hb : mul b b = nb) :
    powFuel (n + 1) e b r = powFuel n (e / 2) nb r := by
  rw [powFuel, if_neg he, if_neg hp, hb]

/-- One exact odd exponentiation iteration, with certified multiplications. -/
theorem pow_odd_step (n e : Nat) (b r nb nr : Word)
    (he : e ≠ 0) (hp : e % 2 = 1) (hb : mul b b = nb) (hr : mul r b = nr) :
    powFuel (n + 1) e b r = powFuel n (e / 2) nb nr := by
  rw [powFuel, if_neg he, if_pos hp, hb, hr]
end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128
