# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant846dfaadf2194b546c7386aa3c2230a600f8d09edc15d890af62efc16fb96a97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6ccce31c320b3d99646737089275b5ae75017c2` · SHA-256 `846dfaadf2194b546c7386aa3c2230a600f8d09edc15d890af62efc16fb96a97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
public import Mathlib.Topology.Category.CompHausLike.Limits

/-!
# Cartesian monoidal structure on `CompHausLike`

If the predicate `P` is preserved under taking type-theoretic products and `PUnit` satisfies it,
then `CompHausLike P` is a cartesian monoidal category.

If the predicate `P` is preserved under taking type-theoretic sums, we provide an explicit coproduct
cocone in `CompHausLike P`. When we have the dual of `CartesianMonoidalCategory`, this can be used
to provide an instance of that on `CompHausLike P`.
-/

@[expose] public section

universe u

open CategoryTheory Limits

namespace CompHausLike

variable {P : TopCat.{u} → Prop} (X Y : CompHausLike.{u} P)

section Product

variable [HasProp P (X × Y)]

/--
Explicit binary fan in `CompHausLike P`, given that the predicate `P` is preserved under taking
type-theoretic products.
-/
def productCone : BinaryFan X Y :=
  BinaryFan.mk (P := ↧(X × Y))
    (ofHom _ { toFun := Prod.fst }) (ofHom _ { toFun := Prod.snd })

/--
When the predicate `P` is preserved under taking type-theoretic products, that product is a
category-theoretic product in `CompHausLike P`.
-/
def productIsLimit : IsLimit (productCone X Y) := by
  refine BinaryFan.isLimitMk (fun s ↦ ofHom _ { toFun x := (s.fst x, s.snd x) })
    (by rfl_cat) (by rfl_cat) fun _ _ h₁ h₂ ↦ ?_
  ext x
  exacts [ConcreteCategory.congr_hom h₁ _, ConcreteCategory.congr_hom h₂ _]

/--
When the predicate `P` is preserved under taking type-theoretic products and `PUnit` satisfies it,
then `CompHausLike P` is a cartesian monoidal category.

This could be an instance but that causes some slowness issues with typeclass search, therefore we
keep it as a def and turn it on as an instance for the explicit examples of `CompHausLike` as
needed.
-/
@[instance_reducible]
def cartesianMonoidalCategory [∀ (X Y : CompHausLike.{u} P), HasProp P (X × Y)]
    [HasProp P PUnit.{u + 1}] : CartesianMonoidalCategory (CompHausLike.{u} P) :=
  .ofChosenFiniteProducts
    ⟨_, CompHausLike.isTerminalPUnit⟩
    (fun X Y ↦ ⟨productCone X Y, productIsLimit X Y⟩)

end Product

section Coproduct

variable [HasProp P (X ⊕ Y)]

/--
Explicit binary cofan in `CompHausLike P`, given that the predicate `P` is preserved under taking
type-theoretic sums.
-/
def coproductCocone : BinaryCofan X Y := BinaryCofan.mk (P := ↧(X ⊕ Y))
  (ofHom _ { toFun := Sum.inl }) (ofHom _ { toFun := Sum.inr })

/--
When the predicate `P` is preserved under taking type-theoretic sums, that sum is a
category-theoretic coproduct in `CompHausLike P`.
-/
def coproductIsColimit : IsColimit (coproductCocone X Y) := by
  refine BinaryCofan.isColimitMk (fun s ↦ ofHom _ { toFun := Sum.elim s.inl s.inr })
    (by rfl_cat) (by rfl_cat) fun _ _ h₁ h₂ ↦ ?_
  ext ⟨⟩
  exacts [ConcreteCategory.congr_hom h₁ _, ConcreteCategory.congr_hom h₂ _]

end Coproduct

end CompHausLike
```
