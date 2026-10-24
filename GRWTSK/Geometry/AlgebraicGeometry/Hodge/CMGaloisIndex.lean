/- Copyright (c) 2026 grwtsk contributors. MIT.
External manuscript pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the central-involution indexing used by CM sign rows. -/
import GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourBalance

set_option autoImplicit false

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMGaloisIndex

open CMFourBalance

/-- A distinguished central involution in a group.

For a Galois CM field this is the complex-conjugation element in the Galois
group. The existence of that element for a concrete field is not proved here. -/
structure CentralInvolution (G : Type*) [Group G] where
  c : G
  sq_eq_one : c * c = 1
  central : ∀ g, c * g = g * c

/-- Conjugate the label by left multiplication with the distinguished central
involution. -/
def CentralInvolution.conj
    {G : Type*} [Group G] (C : CentralInvolution G) :
    G → G :=
  fun g => C.c * g

@[simp]
theorem CentralInvolution.conj_apply
    {G : Type*} [Group G] (C : CentralInvolution G) (g : G) :
    C.conj g = C.c * g := rfl

/-- The CM label conjugation is an involution. -/
@[simp]
theorem CentralInvolution.conj_involutive
    {G : Type*} [Group G] (C : CentralInvolution G) (g : G) :
    C.conj (C.conj g) = g := by
  simp only [CentralInvolution.conj, ← mul_assoc, C.sq_eq_one, one_mul]

/-- Centrality gives the equivalent right-multiplication formula. -/
theorem CentralInvolution.conj_eq_mul_right
    {G : Type*} [Group G] (C : CentralInvolution G) (g : G) :
    C.conj g = g * C.c := by
  exact C.central g

/-- A sign row on a group carrying a selected central involution. -/
structure CMOddSignRow
    (G : Type*) [Group G] (C : CentralInvolution G) where
  value : G → ℤ
  isSign : ∀ g, IsSign (value g)
  odd : ∀ g, value (C.conj g) = - value g

/-- Forget only the group-theoretic source of the conjugation map. -/
def CMOddSignRow.toOddSignRow
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v : CMOddSignRow G C) :
    OddSignRow G C.conj where
  value := v.value
  isSign := v.isSign
  odd := v.odd

/-- A sign row invariant under the selected central involution. Such rows
descend to conjugate-pair / totally-real indexing. -/
structure CMEvenSignRow
    (G : Type*) [Group G] (C : CentralInvolution G) where
  value : G → ℤ
  isSign : ∀ g, IsSign (value g)
  invariant : ∀ g, value (C.conj g) = value g

/-- The real rescaling sign demanded by two odd rows. The minus sign matches
the CM polarization convention `-v(g) * Im(g xi) > 0`. -/
def rescalingSign
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v seed : CMOddSignRow G C) :
    CMEvenSignRow G C where
  value g := -(v.value g * seed.value g)
  isSign g := by
    rcases v.isSign g with hv | hv <;>
    rcases seed.isSign g with hs | hs <;>
    simp [hv, hs, IsSign]
  invariant g := by
    rw [v.odd, seed.odd]
    ring

/-- The rescaling sign is constant on the two-element conjugate orbit. -/
theorem rescalingSign_conj
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v seed : CMOddSignRow G C) (g : G) :
    (rescalingSign v seed).value (C.conj g) =
      (rescalingSign v seed).value g :=
  (rescalingSign v seed).invariant g
/-- Pointwise four-label balance for CM-indexed sign rows. -/
def CMFourBalance
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v₁ v₂ v₃ v₄ : CMOddSignRow G C) : Prop :=
  FourBalance
    v₁.toOddSignRow
    v₂.toOddSignRow
    v₃.toOddSignRow
    v₄.toOddSignRow

/-- CM-indexed four-label balance inherits the all-coordinate two/two sign
profile. -/
theorem cmFourBalance_twoTwoSignProfile
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v₁ v₂ v₃ v₄ : CMOddSignRow G C)
    (hbal : CMFourBalance v₁ v₂ v₃ v₄) :
    HasTwoTwoSignProfile
      v₁.toOddSignRow
      v₂.toOddSignRow
      v₃.toOddSignRow
      v₄.toOddSignRow :=
  fourBalance_twoTwoSignProfile
    v₁.toOddSignRow
    v₂.toOddSignRow
    v₃.toOddSignRow
    v₄.toOddSignRow
    hbal

 
/-! ## The distinguished-embedding normalization of the four-factor switch

The October 6 CM-Hodge manuscript, Section 2, lemma
"Choice of the distinguished embedding", has two cases: opposite pairs,
or a coordinate on which all four signs are positive.  In the latter
case right translation normalizes that coordinate to the identity.
These are exact *sign-row and Hodge-count* results, not cycle classes.
-/

/-- Right translation of an odd sign row by a selected Galois label.
Centrality of the conjugation element is used only through the fixed
left-action convention in the oddness law; right multiplication
associates with that left action. -/
def CMOddSignRow.rightTranslate
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v : CMOddSignRow G C) (g : G) : CMOddSignRow G C where
  value τ := v.value (τ * g)
  isSign τ := v.isSign (τ * g)
  odd τ := by
    simpa only [CentralInvolution.conj, mul_assoc] using v.odd (τ * g)

/-- The original label g becomes the normalized identity label. -/
theorem CMOddSignRow.rightTranslate_one
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v : CMOddSignRow G C) (g : G) :
    (v.rightTranslate g).value 1 = v.value g := by
  simp [CMOddSignRow.rightTranslate]

/-- Translation loses no sign data: right translation by the inverse
recovers every original coordinate. -/
theorem CMOddSignRow.rightTranslate_inv_value
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v : CMOddSignRow G C) (g τ : G) :
    ((v.rightTranslate g).rightTranslate g⁻¹).value τ = v.value τ := by
  change v.value ((τ * g⁻¹) * g) = v.value τ
  simp [mul_assoc]

/-- The full four-label balance survives right translation exactly. -/
theorem cmFourBalance_rightTranslate
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v₁ v₂ v₃ v₄ : CMOddSignRow G C)
    (hbal : CMFourBalance v₁ v₂ v₃ v₄) (g : G) :
    CMFourBalance
      (v₁.rightTranslate g) (v₂.rightTranslate g)
      (v₃.rightTranslate g) (v₄.rightTranslate g) := by
  intro τ
  exact hbal (τ * g)

/-- A balanced four-sign family either consists of two opposite pairs
everywhere or has a coordinate at which *all four* signs are +1.

The negative/negative first pair is excluded by oddness at the conjugate
coordinate, not by discarding that possible sign pattern. -/
theorem cmFourBalance_pair_or_positive_coordinate
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v₁ v₂ v₃ v₄ : CMOddSignRow G C)
    (hbal : CMFourBalance v₁ v₂ v₃ v₄) :
    ((∀ τ, v₂.value τ = -v₁.value τ) ∧
      (∀ τ, v₄.value τ = -v₃.value τ)) ∨
    ∃ g : G,
      v₁.value g = 1 ∧ v₂.value g = 1 ∧
      v₃.value g = 1 ∧ v₄.value g = 1 := by
  classical
  by_cases hcommon : ∃ g : G, v₁.value g = 1 ∧ v₂.value g = 1
  · obtain ⟨g, h₁, h₂⟩ := hcommon
    have hsum : v₃.value g + v₄.value g = 2 := by
      have hb := hbal g
      rw [h₁, h₂] at hb
      omega
    have h₃ : v₃.value g = 1 := by
      rcases v₃.isSign g with h | h
      · exact h
      · rcases v₄.isSign g with h' | h' <;> omega
    have h₄ : v₄.value g = 1 := by
      rcases v₄.isSign g with h | h
      · exact h
      · omega
    exact Or.inr ⟨g, h₁, h₂, h₃, h₄⟩
  · have hno (g : G) :
        ¬ (v₁.value g = 1 ∧ v₂.value g = 1) := by
      intro hh
      exact hcommon ⟨g, hh⟩
    have hpair₁₂ : ∀ g, v₂.value g = -v₁.value g := by
      intro g
      rcases v₁.isSign g with h₁ | h₁
      · rcases v₂.isSign g with h₂ | h₂
        · exact False.elim (hno g ⟨h₁, h₂⟩)
        · omega
      · rcases v₂.isSign g with h₂ | h₂
        · omega
        · have hc₁ : v₁.value (C.conj g) = 1 := by
            rw [v₁.odd g, h₁]
            norm_num
          have hc₂ : v₂.value (C.conj g) = 1 := by
            rw [v₂.odd g, h₂]
            norm_num
          exact False.elim (hno (C.conj g) ⟨hc₁, hc₂⟩)
    have hpair₃₄ : ∀ g, v₄.value g = -v₃.value g := by
      intro g
      have hb := hbal g
      rw [hpair₁₂ g] at hb
      omega
    exact Or.inl ⟨hpair₁₂, hpair₃₄⟩

/-- The normalized-or-paired conclusion of the manuscript's distinguished
embedding reduction, retaining a *real* right-translation and the existing
GRWTSK all-conjugates (2,2) sign-count certificate.

This theorem does not establish any Hodge-line realization, scalar descent,
four-factor algebraic cycle, or global rational Hodge conjecture. -/
theorem cmFourBalance_normalization_or_pairs
    {G : Type*} [Group G] {C : CentralInvolution G}
    (v₁ v₂ v₃ v₄ : CMOddSignRow G C)
    (hbal : CMFourBalance v₁ v₂ v₃ v₄) :
    ((∀ τ, v₂.value τ = -v₁.value τ) ∧
      (∀ τ, v₄.value τ = -v₃.value τ)) ∨
    ∃ g : G,
      CMFourBalance
        (v₁.rightTranslate g) (v₂.rightTranslate g)
        (v₃.rightTranslate g) (v₄.rightTranslate g) ∧
      (v₁.rightTranslate g).value 1 = 1 ∧
      (v₂.rightTranslate g).value 1 = 1 ∧
      (v₃.rightTranslate g).value 1 = 1 ∧
      (v₄.rightTranslate g).value 1 = 1 ∧
      HasTwoTwoSignProfile
        (v₁.rightTranslate g).toOddSignRow
        (v₂.rightTranslate g).toOddSignRow
        (v₃.rightTranslate g).toOddSignRow
        (v₄.rightTranslate g).toOddSignRow := by
  rcases cmFourBalance_pair_or_positive_coordinate
      v₁ v₂ v₃ v₄ hbal with hpairs | ⟨g, h₁, h₂, h₃, h₄⟩
  · exact Or.inl hpairs
  · have ht := cmFourBalance_rightTranslate v₁ v₂ v₃ v₄ hbal g
    refine Or.inr ⟨g, ht, ?_, ?_, ?_, ?_, ?_⟩
    · simpa only [CMOddSignRow.rightTranslate_one] using h₁
    · simpa only [CMOddSignRow.rightTranslate_one] using h₂
    · simpa only [CMOddSignRow.rightTranslate_one] using h₃
    · simpa only [CMOddSignRow.rightTranslate_one] using h₄
    · exact cmFourBalance_twoTwoSignProfile
        (v₁.rightTranslate g) (v₂.rightTranslate g)
        (v₃.rightTranslate g) (v₄.rightTranslate g) ht

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMGaloisIndex
