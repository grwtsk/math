/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
External manuscript pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the central-involution indexing used by CM sign rows. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex

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

end GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex
