# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorFixtures.Variant305c61edcca05c088e33cb03c02ec4d39264a5a4e5f4b01ac6457c96e4faf7b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8979b8161814309139e598cd053507fccaaa1775` · SHA-256 `305c61edcca05c088e33cb03c02ec4d39264a5a4e5f4b01ac6457c96e4faf7b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.FiniteLatticeArithmetic.CyclicGraphWitness

/-! Exact arithmetic fixtures. Twelve divisor coordinates are distinct from the
thirty-five order-polytope vertices in the external D(72) fixture. -/

namespace FormalResearch.FiniteLatticeArithmetic

/-- D(72) has twelve divisor elements. -/
theorem divisor_seventy_two_card : Fintype.card (Divisor 72) = 12 := by
  have h72 : (72 : ℕ).factorization = Finsupp.single 2 3 + Finsupp.single 3 2 := by
    change (2 ^ 3 * 3 ^ 2 : ℕ).factorization = _
    have h := Nat.factorization_mul (a := 2 ^ 3) (b := 3 ^ 2) (by decide) (by decide)
    simpa only [Nat.prime_two.factorization_pow, Nat.prime_three.factorization_pow] using h
  rw [Divisor.card_eq_product, h72]
  simp [Finsupp.support_add_eq_union, Finsupp.support_single]

/-- The modulus-one divisor lattice has exactly its bottom/top element. -/
theorem divisor_one_card : Fintype.card (Divisor 1) = 1 := by
  rw [Divisor.card_eq_product]
  simp

/-- Modulus one is included in the principal-color graph construction. -/
theorem cyclic_one_graph_witness :
    OAI.FiniteCongruence.IsGraphWitness (cyclicColor (M := 1)) := cyclicColor_isGraphWitness

/-- Every modulus-one color is the sole divisor coordinate. -/
theorem cyclic_one_color (x y : ZMod 1) : cyclicColor x y = ⊥ := by
  have hxy : x = y := Subsingleton.elim _ _
  subst y
  apply Divisor.ext
  simp [cyclicColor]

end FormalResearch.FiniteLatticeArithmetic
```
