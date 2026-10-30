/-
Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported PFR sources retain their upstream authorship and Apache-2.0 license.
-/
import PFR.RhoFunctional
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Combinatorics.Additive.Energy
import Mathlib.Data.Finset.Max
import Mathlib.Tactic.Abel

/-!
# A dense translated slice in the PFR submodule

A finite cover by cosets does not identify a useful individual coset. Taking a
largest slice and translating it supplies a nonempty finite subset of the same
small submodule. The exact equation for the slice retains its relationship to
the original set; the cardinality bound retains the exponent-nine PFR constant.

The difference set of the translated slice is contained in that submodule.
Its additive energy therefore has a lower bound with the submodule cardinality
as denominator, expressed without division. This is the structural input needed
by the local small-doubling and additive-energy families, rather than a new global
cardinality bound for the original difference set.

No finiteness assumption on the ambient group is imposed. The PFR endpoint
supplies finiteness of its submodule and coset-center set. The finite-cover
argument allows repeated cosets: it uses an upper bound for a union, so it does
not assume that the supplied centers form a transversal.
-/

open scoped Pointwise

namespace GRWTSK.Combinatorics.DenseSubmoduleSlice

/-- A largest slice of a finite coset cover, translated into the given submodule.
The equality specifies the entire slice, not an arbitrary subset satisfying an
assumed density estimate. Coset overlap is allowed. -/
theorem translated_slice_of_finite_cover {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] {A : Finset G} {c : Set G}
    (H : Submodule (ZMod 2) G) (hA : A.Nonempty) (hc : c.Finite)
    (hcover : (A : Set G) ⊆ c + (H : Set G)) :
    ∃ u ∈ c, ∃ B : Finset G,
      (B : Set G) = {b | b ∈ H ∧ u + b ∈ A} ∧ B.Nonempty ∧
      A.card ≤ Nat.card c * B.card := by
  classical
  let slice (u : G) : Finset G := A.filter fun a => a - u ∈ H
  have hc₀ : c.Nonempty := by
    obtain ⟨a, ha⟩ := hA
    obtain ⟨u, hu, h, hh, heq⟩ := Set.mem_add.mp (hcover ha)
    exact ⟨u, hu⟩
  have hcf₀ : hc.toFinset.Nonempty := by
    obtain ⟨u, hu⟩ := hc₀
    exact ⟨u, hc.mem_toFinset.mpr hu⟩
  obtain ⟨u, hu, hmax⟩ :=
    Finset.exists_max_image hc.toFinset (fun u => (slice u).card) hcf₀
  have hcovered : A ⊆ hc.toFinset.biUnion slice := by
    intro a ha
    obtain ⟨v, hv, h, hh, heq⟩ := Set.mem_add.mp (hcover ha)
    refine Finset.mem_biUnion.mpr ⟨v, hc.mem_toFinset.mpr hv, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨ha, ?_⟩
    have hsub : a - v = h := by rw [← heq]; abel
    simpa only [hsub] using hh
  have hcount : A.card ≤ hc.toFinset.card * (slice u).card :=
    (Finset.card_le_card hcovered).trans
      (Finset.card_biUnion_le_card_mul hc.toFinset slice (slice u).card hmax)
  have hslice₀ : (slice u).Nonempty := by
    apply Finset.card_pos.mp
    by_contra hpos
    have hz : (slice u).card = 0 := Nat.eq_zero_of_not_pos hpos
    rw [hz, Nat.mul_zero] at hcount
    exact (Nat.not_le_of_lt hA.card_pos) hcount
  let B : Finset G := (slice u).image fun a => a - u
  have hBcard : B.card = (slice u).card := by
    change ((slice u).image fun a => a - u).card = (slice u).card
    apply Finset.card_image_of_injective
    intro a b hab
    have hab' := congrArg (fun x : G => x + u) hab
    simpa only [sub_add_cancel] using hab'
  have hB : (B : Set G) = {b | b ∈ H ∧ u + b ∈ A} := by
    ext b
    change b ∈ (slice u).image (fun a => a - u) ↔ b ∈ H ∧ u + b ∈ A
    constructor
    · intro hb
      obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hb
      obtain ⟨haA, haH⟩ := Finset.mem_filter.mp ha
      refine ⟨haH, ?_⟩
      have heq : u + (a - u) = a := by abel
      simpa only [heq] using haA
    · rintro ⟨hbH, hbA⟩
      refine Finset.mem_image.mpr ⟨u + b, Finset.mem_filter.mpr ⟨hbA, ?_⟩, ?_⟩
      · have heq : u + b - u = b := by abel
        simpa only [heq] using hbH
      · abel
  have hccard : hc.toFinset.card = Nat.card c :=
    (Set.ncard_eq_toFinset_card c hc).symm
  refine ⟨u, hc.mem_toFinset.mp hu, B, hB, hslice₀.image _, ?_⟩
  simpa only [hBcard, hccard] using hcount

/-- A finite subset of a finite submodule has enough additive energy to account
for all its pairs summing into that submodule. This consumes the existing
Mathlib energy definition and Cauchy--Schwarz inequality directly. -/
theorem card_pow_four_le_submodule_card_mul_energy {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] [DecidableEq G] {B : Finset G}
    (H : Submodule (ZMod 2) G) (hH : (H : Set G).Finite)
    (hB : (B : Set G) ⊆ (H : Set G)) :
    B.card ^ 2 * B.card ^ 2 ≤ (H : Set G).ncard * Finset.addEnergy B B := by
  classical
  have hfilter : ((B ×ˢ B).filter fun p => p.1 + p.2 ∈ hH.toFinset) = B ×ˢ B := by
    apply Finset.filter_eq_self.mpr
    intro p hp
    obtain ⟨hp₁, hp₂⟩ := Finset.mem_product.mp hp
    exact hH.mem_toFinset.mpr (H.add_mem (hB hp₁) (hB hp₂))
  have henergy := Finset.card_sq_le_card_mul_addEnergy B B hH.toFinset
  rw [hfilter, Finset.card_product, mul_pow] at henergy
  rwa [← Set.ncard_eq_toFinset_card (H : Set G) hH] at henergy

/-- The exponent-nine PFR cover supplies an actual dense translated coset slice
inside its finite submodule. The strict cross-multiplied density bound implies
`|H| < 2*K^9*|B|` because `|H| ≤ |A|`. Both the difference support and the
submodule-supported additive-energy estimate refer to this same `B` and `H`.

The exponent is a natural-number power, matching `better_PFR_conjecture`.
No estimate for a different ambient group or a root dependency migration is used. -/
theorem dense_submodule_slice_of_small_doubling {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] [DecidableEq G] {A : Finset G} {K : ℝ}
    (hA : A.Nonempty) (hsmall : ((A + A).card : ℝ) ≤ K * A.card) :
    ∃ (H : Submodule (ZMod 2) G) (u : G) (B : Finset G),
      (H : Set G).Finite ∧ (H : Set G).ncard ≤ A.card ∧
      (B : Set G) = {b | b ∈ H ∧ u + b ∈ A} ∧ B.Nonempty ∧
      (A.card : ℝ) < (2 * K ^ (9 : ℕ)) * B.card ∧
      ((B - B : Finset G) : Set G) ⊆ (H : Set G) ∧
      B.card ^ 2 * B.card ^ 2 ≤ (H : Set G).ncard * Finset.addEnergy B B := by
  have hAset : (A : Set G).Nonempty := by
    obtain ⟨a, ha⟩ := hA
    exact ⟨a, ha⟩
  have hsmall' : Nat.card ((A : Set G) + (A : Set G)) ≤
      K * Nat.card (A : Set G) := by
    simpa only [← Finset.coe_add, Nat.card_eq_finsetCard] using hsmall
  obtain ⟨H, c, hc, hH, hccard, hHcard, hcover⟩ :=
    _root_.better_PFR_conjecture hAset A.finite_toSet hsmall'
  obtain ⟨u, hu, B, hB, hB₀, hAB⟩ :=
    translated_slice_of_finite_cover H hA hc hcover
  have hBH : (B : Set G) ⊆ (H : Set G) := by
    intro b hb
    rw [hB] at hb
    exact hb.1
  have hABreal : (A.card : ℝ) ≤ (Nat.card c : ℝ) * B.card := by
    exact_mod_cast hAB
  have hBpos : (0 : ℝ) < B.card := by exact_mod_cast hB₀.card_pos
  have hdense : (A.card : ℝ) < (2 * K ^ (9 : ℕ)) * B.card :=
    hABreal.trans_lt (mul_lt_mul_of_pos_right hccard hBpos)
  have hdiff : ((B - B : Finset G) : Set G) ⊆ (H : Set G) := by
    rw [Finset.coe_sub]
    intro z hz
    obtain ⟨a, ha, b, hb, rfl⟩ := Set.mem_sub.mp hz
    exact H.sub_mem (hBH ha) (hBH hb)
  refine ⟨H, u, B, hH, ?_, hB, hB₀, hdense, hdiff,
    card_pow_four_le_submodule_card_mul_energy H hH hBH⟩
  simpa only [Nat.card_eq_finsetCard] using hHcard

end GRWTSK.Combinatorics.DenseSubmoduleSlice
