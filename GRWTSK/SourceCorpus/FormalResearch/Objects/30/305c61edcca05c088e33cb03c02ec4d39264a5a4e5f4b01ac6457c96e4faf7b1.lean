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
