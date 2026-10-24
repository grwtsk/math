import GRWTSK.Algebra.FiniteField.GF128.Bitwise

namespace GRWTSK.Algebra.FiniteField.GF128

/-- Bounded version of Rust's accumulator loop. It omits the unused final square. -/
def rustPowFuel : Nat → Nat → Word → Word → Word
  | 0, _, _, result => result
  | n + 1, exponent, base, result =>
      if exponent = 0 then result else
        let nextExponent := exponent / 2
        let nextResult := if exponent % 2 = 1 then mul result base else result
        let nextBase := if nextExponent = 0 then base else mul base base
        rustPowFuel n nextExponent nextBase nextResult

/-- Once the exponent is zero, the base has no influence on the returned accumulator. -/
theorem powFuel_zero_exponent (n : Nat) (base result : Word) :
    powFuel n 0 base result = result := by
  cases n <;> simp [powFuel]

/-- Skipping Rust's final unused square preserves the exact returned accumulator. -/
theorem rustPowFuel_eq_powFuel (n exponent : Nat) (base result : Word) :
    rustPowFuel n exponent base result = powFuel n exponent base result := by
  induction n generalizing exponent base result with
  | zero => rfl
  | succ n ih =>
      by_cases he : exponent = 0
      · simp [rustPowFuel, powFuel, he]
      · simp only [rustPowFuel, powFuel, if_neg he]
        by_cases hn : exponent / 2 = 0
        · simp only [hn, ih, powFuel_zero_exponent]
        · simp only [if_neg hn, ih]

/-- Exact return-value model of Rust `field::inv` for a u128 field word. -/
def rustInv (value : Word) : Option Word :=
  if value = 0 then none else some (rustPowFuel 128 (2 ^ 128 - 2) value 1)

/-- Rust's loop-order variant and the Python square-and-multiply model agree. -/
theorem rustInv_eq_inv (value : Word) : rustInv value = inv value := by
  simp only [rustInv, inv, rustPowFuel_eq_powFuel]

#print axioms rustPowFuel_eq_powFuel
#print axioms rustInv_eq_inv
end GRWTSK.Algebra.FiniteField.GF128
