# Complete source: GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6498cd959aba4513fab921e1e8fe664ddcf33ae1` · SHA-256 `2ec64230a51de0d1c5b006b1330a47fa12b4a6ef5ab7987e48f750761cf6a871`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript interface:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes the abstract character-eigenspace shape of U(v)_lambda;
it does not construct the CM field action or prove scalar-conjugation transport.
-/
import GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces

open CMFourBalance
open CMEmbeddingLines

/-- The eigenspace of one algebra character for a C-linear action of A.

This is the exact linear-algebra shape of the manuscript's embedding line
U(v)_lambda after extending coefficients: every element of A acts through the
selected character. -/
def characterEigenspace
    {A C V : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    (action : A →+* Module.End C V)
    (χ : A →+* C) :
    Submodule C V where
  carrier := {x | ∀ a, action a x = χ a • x}
  zero_mem' := by
    intro a
    simp
  add_mem' := by
    intro x y hx hy a
    simp [hx a, hy a, add_smul]
  smul_mem' := by
    intro c x hx a
    simp [hx a, smul_smul, mul_comm]

@[simp]
theorem mem_characterEigenspace_iff
    {A C V : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    (action : A →+* Module.End C V)
    (χ : A →+* C)
    (x : V) :
    x ∈ characterEigenspace action χ ↔
      ∀ a, action a x = χ a • x := Iff.rfl

/-- A CM-sign-indexed family of genuine character eigenspaces.

The record still takes the algebra action, characters, one-dimensionality and
sign-to-Hodge-type rule as data. Constructing these fields from a Galois CM
field and proving the scalar-conjugation law remain external suppliers. -/
structure CharacterEigenlineRealization
    (A C V G : Type*)
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    (conj : G → G)
    (v : OddSignRow G conj) where
  action : A →+* Module.End C V
  character : G → A →+* C
  line_finrank_one :
    ∀ g, Module.finrank C (characterEigenspace action (character g)) = 1
  line_nonzero :
    ∀ g, ∃ x : V,
      x ∈ characterEigenspace action (character g) ∧ x ≠ 0
  typeAt : G → WeightOneHodgeType
  typeAt_eq : ∀ g, typeAt g = typeOfSign (v.value g)

/-- A complete internal decomposition by the selected character eigenspaces.

This is the precise linear-algebra shape of the manuscript's embedding-line
decomposition after scalar extension. It still does not construct the algebra
action from a CM field or prove scalar-conjugation transport. -/
structure CharacterEigenspaceDecomposition
    (A C V G : Type*)
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    (conj : G → G)
    (v : OddSignRow G conj)
    extends CharacterEigenlineRealization A C V G conj v where
  decomposition :
    DirectSum.IsInternal
      (fun g => characterEigenspace action (character g))

/-- Forget completeness and retain the selected eigenline family. -/
def CharacterEigenspaceDecomposition.toEigenlineRealization
    {A C V G : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    {conj : G → G} {v : OddSignRow G conj}
    (R : CharacterEigenspaceDecomposition A C V G conj v) :
    CharacterEigenlineRealization A C V G conj v :=
  R.toCharacterEigenlineRealization

/-- Forget the algebra action but retain the genuine one-dimensional linear
eigenspaces and their type labels. -/
def CharacterEigenlineRealization.toLinearEmbeddingLineRealization
    {A C V G : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    {conj : G → G} {v : OddSignRow G conj}
    (R : CharacterEigenlineRealization A C V G conj v) :
    LinearEmbeddingLineRealization C V G conj v where
  line := fun g => characterEigenspace R.action (R.character g)
  line_finrank_one := R.line_finrank_one
  line_nonzero := R.line_nonzero
  typeAt := R.typeAt
  typeAt_eq := R.typeAt_eq

/-- Four genuine character-eigenline realizations with balanced sign rows have
the same all-coordinate (2,2) bidegree conclusion.

The four ambient representations may be different; only the coefficient field
and indexing set are shared. -/
theorem characterEigenlines_fourFactor_bidegree_two_two
    {A₁ A₂ A₃ A₄ C V₁ V₂ V₃ V₄ G : Type*}
    [CommRing A₁] [CommRing A₂] [CommRing A₃] [CommRing A₄]
    [Field C]
    [AddCommGroup V₁] [Module C V₁] [FiniteDimensional C V₁]
    [AddCommGroup V₂] [Module C V₂] [FiniteDimensional C V₂]
    [AddCommGroup V₃] [Module C V₃] [FiniteDimensional C V₃]
    [AddCommGroup V₄] [Module C V₄] [FiniteDimensional C V₄]
    {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (R₁ : CharacterEigenlineRealization A₁ C V₁ G conj v₁)
    (R₂ : CharacterEigenlineRealization A₂ C V₂ G conj v₂)
    (R₃ : CharacterEigenlineRealization A₃ C V₃ G conj v₃)
    (R₄ : CharacterEigenlineRealization A₄ C V₄ G conj v₄)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    ∀ g,
      (pIndex
          ((R₁.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        pIndex
          ((R₂.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        pIndex
          ((R₃.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) +
        pIndex
          ((R₄.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) = 2) ∧
      (qIndex
          ((R₁.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        qIndex
          ((R₂.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        qIndex
          ((R₃.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) +
        qIndex
          ((R₄.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) = 2) :=
  linearFourFactor_allCoordinates_bidegree_two_two
    v₁ v₂ v₃ v₄
    R₁.toLinearEmbeddingLineRealization
    R₂.toLinearEmbeddingLineRealization
    R₃.toLinearEmbeddingLineRealization
    R₄.toLinearEmbeddingLineRealization
    hbal


/-- A complete internal decomposition by one-dimensional character eigenspaces
has ambient dimension equal to the number of embedding labels. -/
theorem CharacterEigenspaceDecomposition.finrank_eq_card
    {A C V G : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V] [Fintype G]
    {conj : G → G} {v : OddSignRow G conj}
    (R : CharacterEigenspaceDecomposition A C V G conj v) :
    Module.finrank C V = Fintype.card G := by
  classical
  let e :
      (⨁ g : G, characterEigenspace R.action (R.character g)) ≃ₗ[C] V :=
    LinearEquiv.ofBijective
      (DirectSum.coeLinearMap
        (fun g : G => characterEigenspace R.action (R.character g)))
      R.decomposition
  rw [← e.finrank_eq, Module.finrank_directSum]
  simp [R.line_finrank_one]

/-- In the Galois case, the complete one-dimensional eigenspace decomposition
has ambient dimension equal to the field degree. -/
theorem CharacterEigenspaceDecomposition.finrank_eq_fieldDegree
    {k E C V : Type*}
    [Field k] [Field E] [Algebra k E] [FiniteDimensional k E] [IsGalois k E]
    [Field C] [AddCommGroup V] [Module C V] [FiniteDimensional C V]
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    {v : OddSignRow (E ≃ₐ[k] E) conj}
    (R : CharacterEigenspaceDecomposition
      E C V (E ≃ₐ[k] E) conj v) :
    Module.finrank C V = Module.finrank k E := by
  calc
    Module.finrank C V =
        Fintype.card (E ≃ₐ[k] E) := R.finrank_eq_card
    _ = Module.finrank k E := by
      simpa only [Nat.card_eq_fintype_card] using
        IsGalois.card_aut_eq_finrank k E

/-- Complete eigenspace decompositions retain the same four-factor bidegree
conclusion after forgetting only the global decomposition certificate. -/
theorem characterEigenspaceDecompositions_fourFactor_bidegree_two_two
    {A₁ A₂ A₃ A₄ C V₁ V₂ V₃ V₄ G : Type*}
    [CommRing A₁] [CommRing A₂] [CommRing A₃] [CommRing A₄]
    [Field C]
    [AddCommGroup V₁] [Module C V₁] [FiniteDimensional C V₁]
    [AddCommGroup V₂] [Module C V₂] [FiniteDimensional C V₂]
    [AddCommGroup V₃] [Module C V₃] [FiniteDimensional C V₃]
    [AddCommGroup V₄] [Module C V₄] [FiniteDimensional C V₄]
    {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (R₁ : CharacterEigenspaceDecomposition A₁ C V₁ G conj v₁)
    (R₂ : CharacterEigenspaceDecomposition A₂ C V₂ G conj v₂)
    (R₃ : CharacterEigenspaceDecomposition A₃ C V₃ G conj v₃)
    (R₄ : CharacterEigenspaceDecomposition A₄ C V₄ G conj v₄)
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
  simpa using
    (characterEigenlines_fourFactor_bidegree_two_two
      v₁ v₂ v₃ v₄
      R₁.toEigenlineRealization
      R₂.toEigenlineRealization
      R₃.toEigenlineRealization
      R₄.toEigenlineRealization
      hbal)

end GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces
```
