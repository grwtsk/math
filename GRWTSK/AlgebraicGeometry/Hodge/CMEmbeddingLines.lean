/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
External manuscript interface:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the sign-to-weight-one-type realization interface and
the resulting four-factor bidegree count. It does not prove algebraicity. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines

open CMFourBalance

inductive WeightOneHodgeType
  | holomorphic
  | antiholomorphic
  deriving DecidableEq

def pIndex : WeightOneHodgeType → ℤ
  | .holomorphic => 1
  | .antiholomorphic => 0

def qIndex : WeightOneHodgeType → ℤ
  | .holomorphic => 0
  | .antiholomorphic => 1

def typeOfSign (z : ℤ) : WeightOneHodgeType :=
  if z = 1 then .holomorphic else .antiholomorphic

@[simp]
theorem pIndex_typeOfSign (z : ℤ) :
    pIndex (typeOfSign z) = holomorphicIndex z := by
  simp [pIndex, typeOfSign, holomorphicIndex]

theorem qIndex_typeOfSign_of_isSign (z : ℤ) (hz : IsSign z) :
    qIndex (typeOfSign z) = 1 - holomorphicIndex z := by
  rcases hz with rfl | rfl <;>
    norm_num [qIndex, typeOfSign, holomorphicIndex]

/-- A typed family of selected embedding-line witnesses.

This record deliberately does not construct the lines as linear subspaces of a
rational Hodge structure. The opaque line type and its nonemptiness record the
existence of a selected line witness at each coordinate; the actual
linear-subspace/Hodge-module realization remains an upstream premise. -/
structure EmbeddingLineRealization
    (G : Type*) (conj : G → G) (v : OddSignRow G conj) where
  Line : G → Type*
  line_nonempty : ∀ g, Nonempty (Line g)
  typeAt : G → WeightOneHodgeType
  typeAt_eq : ∀ g, typeAt g = typeOfSign (v.value g)

theorem EmbeddingLineRealization.pIndex_eq
    {G : Type*} {conj : G → G} {v : OddSignRow G conj}
    (R : EmbeddingLineRealization G conj v) (g : G) :
    pIndex (R.typeAt g) = holomorphicIndex (v.value g) := by
  rw [R.typeAt_eq]
  exact pIndex_typeOfSign _

theorem EmbeddingLineRealization.qIndex_eq
    {G : Type*} {conj : G → G} {v : OddSignRow G conj}
    (R : EmbeddingLineRealization G conj v) (g : G) :
    qIndex (R.typeAt g) = 1 - holomorphicIndex (v.value g) := by
  rw [R.typeAt_eq]
  exact qIndex_typeOfSign_of_isSign _ (v.isSign g)

theorem fourFactor_bidegree_two_two
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (R₁ : EmbeddingLineRealization G conj v₁)
    (R₂ : EmbeddingLineRealization G conj v₂)
    (R₃ : EmbeddingLineRealization G conj v₃)
    (R₄ : EmbeddingLineRealization G conj v₄)
    (hbal : FourBalance v₁ v₂ v₃ v₄)
    (g : G) :
    (pIndex (R₁.typeAt g) +
        pIndex (R₂.typeAt g) +
        pIndex (R₃.typeAt (conj g)) +
        pIndex (R₄.typeAt (conj g)) = 2) ∧
      (qIndex (R₁.typeAt g) +
        qIndex (R₂.typeAt g) +
        qIndex (R₃.typeAt (conj g)) +
        qIndex (R₄.typeAt (conj g)) = 2) := by
  have hp := fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal g
  constructor
  · simpa only [R₁.pIndex_eq, R₂.pIndex_eq, R₃.pIndex_eq, R₄.pIndex_eq] using hp
  · rw [R₁.qIndex_eq, R₂.qIndex_eq, R₃.qIndex_eq, R₄.qIndex_eq]
    linarith

theorem fourFactor_allCoordinates_bidegree_two_two
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (R₁ : EmbeddingLineRealization G conj v₁)
    (R₂ : EmbeddingLineRealization G conj v₂)
    (R₃ : EmbeddingLineRealization G conj v₃)
    (R₄ : EmbeddingLineRealization G conj v₄)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    ∀ g,
      (pIndex (R₁.typeAt g) +
          pIndex (R₂.typeAt g) +
          pIndex (R₃.typeAt (conj g)) +
          pIndex (R₄.typeAt (conj g)) = 2) ∧
        (qIndex (R₁.typeAt g) +
          qIndex (R₂.typeAt g) +
          qIndex (R₃.typeAt (conj g)) +
          qIndex (R₄.typeAt (conj g)) = 2) := by
  intro g
  exact fourFactor_bidegree_two_two v₁ v₂ v₃ v₄ R₁ R₂ R₃ R₄ hbal g

end GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines
