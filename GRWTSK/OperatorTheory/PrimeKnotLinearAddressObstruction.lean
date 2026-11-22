/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderSpectralTriple

/-!
# Address obstructions for the finite Alexander incidence model

Only sixteen nonzero constant terms are available to its monic degree-one
prime-polynomial vertices. Separately, the incidence graph has no edge
between two prime vertices. The induced relation of sharing a knot has
a loop at every incident prime and is symmetric.
-/

set_option autoImplicit false
noncomputable section
open scoped Polynomial

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

open Polynomial

private theorem PrimePolynomial.polynomial_injective :
    Function.Injective PrimePolynomial.polynomial := by
  rintro ⟨p, pm, pi, pc⟩ ⟨q, qm, qi, qc⟩ eq
  cases eq
  rfl

/-- Degree one forces a monic vertex's only free coefficient to be nonzero. -/
theorem linear_address_capacity (n : ℕ) (encode : Fin n → PrimePolynomial)
    (injective : Function.Injective encode)
    (linear : ∀ i, (encode i).polynomial.natDegree = 1) : n ≤ 16 := by
  let constants := (Finset.univ : Finset (ZMod 17)).erase 0
  have card : Fintype.card ↥constants = 16 := by
    simp [constants, ZMod.card]
  let coeff : Fin n → ↥constants := fun i =>
    ⟨(encode i).polynomial.coeff 0, Finset.mem_erase.mpr
      ⟨by simpa only [coeff_zero_eq_eval_zero] using (encode i).nonzeroConstant, Finset.mem_univ _⟩⟩
  have coeff_injective : Function.Injective coeff := by
    intro i j eq
    have same : (encode i).polynomial.coeff 0 = (encode j).polynomial.coeff 0 :=
      congrArg Subtype.val eq
    apply injective (PrimePolynomial.polynomial_injective ?_)
    rw [(encode i).monic.eq_X_add_C (linear i), (encode j).monic.eq_X_add_C (linear j), same]
  simpa only [Fintype.card_fin, card] using Fintype.card_le_of_injective coeff coeff_injective

theorem no_linear_address_95 :
    ¬ ∃ encode : Fin 95 → PrimePolynomial, Function.Injective encode ∧
      ∀ i, (encode i).polynomial.natDegree = 1 := by
  rintro ⟨encode, injective, linear⟩
  have := linear_address_capacity 95 encode injective linear
  omega

section LinearVertices

local instance modulusPrime : Fact (Nat.Prime 17) := ⟨by decide⟩

/-- All sixteen nonzero constants give valid monic degree-one vertices. -/
def linearOfConstant (c : {x : ZMod 17 // x ≠ 0}) : PrimePolynomial where
  polynomial := X - C c.val
  monic := monic_X_sub_C _
  irreducible := irreducible_of_degree_eq_one (degree_X_sub_C c.val)
  nonzeroConstant := by
    simpa only [eval_sub, eval_X, eval_C, zero_sub, neg_ne_zero] using c.property

theorem linearOfConstant_natDegree (c : {x : ZMod 17 // x ≠ 0}) :
    (linearOfConstant c).polynomial.natDegree = 1 := natDegree_X_sub_C _

theorem linearOfConstant_injective : Function.Injective linearOfConstant := by
  intro c d eq
  have he := congrArg (fun v : PrimePolynomial => v.polynomial.eval 0) eq
  apply Subtype.ext
  simpa [linearOfConstant] using he

end LinearVertices

/-- The direct reduction of an ordinary address into a linear factor. -/
def mod17Linear (p : ℕ) : Polynomial (ZMod 17) := X - C (p : ZMod 17)

theorem mod17Linear_prime_collision :
    Nat.Prime 2 ∧ Nat.Prime 19 ∧ mod17Linear 2 = mod17Linear 19 := by
  refine ⟨by decide, by decide, ?_⟩
  exact congrArg (fun c : ZMod 17 => X - C c)
    (by decide : ((2 : ℕ) : ZMod 17) = ((19 : ℕ) : ZMod 17))

theorem mod17Linear_seventeen_excluded :
    ¬ ∃ v : PrimePolynomial, v.polynomial = mod17Linear 17 := by
  rintro ⟨v, eq⟩
  apply v.nonzeroConstant
  have h17 : ((17 : ℕ) : ZMod 17) = 0 := by decide
  rw [eq, mod17Linear, h17, map_zero, sub_zero, eval_X]

@[simp]
theorem prime_prime_weight_zero {Prime Knot : Type*} (s : Source Prime Knot) (p q : Prime) :
    edgeWeight s (.inl p) (.inl q) = 0 := by
  simp [edgeWeight]

/-- A prime-to-prime source edge cannot be carried to one Alexander incidence. -/
theorem no_same_side_step_transport {Position Prime Knot : Type*} (s : Source Prime Knot)
    (addr : Position → Prime) (step : Position → Position → Prop)
    (hasEdge : ∃ a b, step a b) :
    ¬ ∀ a b, step a b → edgeWeight s (.inl (addr a)) (.inl (addr b)) ≠ 0 := by
  obtain ⟨a, b, edge⟩ := hasEdge
  intro preserves
  exact (preserves a b edge) (prime_prime_weight_zero s _ _)

/-- Two successive incidences through one knot forget direction. -/
def ShareKnot {Prime Knot : Type*} (s : Source Prime Knot) (p q : Prime) : Prop :=
  ∃ k, Linked s p k ∧ Linked s q k

theorem shareKnot_symmetric {Prime Knot : Type*} (s : Source Prime Knot) :
    ∀ p q, ShareKnot s p q → ShareKnot s q p := by
  rintro p q ⟨k, hp, hq⟩
  exact ⟨k, hq, hp⟩

theorem shareKnot_loops {Prime Knot : Type*} (s : Source Prime Knot) (p q : Prime)
    (edge : ShareKnot s p q) : ShareKnot s p p ∧ ShareKnot s q q := by
  obtain ⟨k, hp, hq⟩ := edge
  exact ⟨⟨k, hp, hp⟩, ⟨k, hq, hq⟩⟩

theorem no_irreflexive_shared_knot_transport {Position Prime Knot : Type*}
    (s : Source Prime Knot) (addr : Position → Prime) (step : Position → Position → Prop)
    (irreflexive : ∀ a, ¬ step a a) (hasEdge : ∃ a b, step a b) :
    ¬ ∀ a b, step a b ↔ ShareKnot s (addr a) (addr b) := by
  obtain ⟨a, b, edge⟩ := hasEdge
  intro exactness
  have loops := shareKnot_loops s (addr a) (addr b) ((exactness a b).1 edge)
  exact irreflexive a ((exactness a a).2 loops.1)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
