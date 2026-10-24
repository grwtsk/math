# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84779e8376c74bd02e9c2ba6c0653b0404a1fb5a` · SHA-256 `ce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Sites.Sheaf
import Mathlib.Topology.Category.LightProfinite.EffectiveEpi
/-!

# Light condensed objects

This file defines the category of light condensed objects in a category `C`, following the work
of Clausen-Scholze (see https://www.youtube.com/playlist?list=PLx5f8IelFRgGmu6gmL-Kf_Rl_6Mm7juZO).

-/

universe u v w

open CategoryTheory Limits

/--
`LightCondensed.{u} C` is the category of light condensed objects in a category `C`, which are
defined as sheaves on `LightProfinite.{u}` with respect to the coherent Grothendieck topology.
-/
def LightCondensed (C : Type w) [Category.{v} C] :=
  Sheaf (coherentTopology LightProfinite.{u}) C

instance {C : Type w} [Category.{v} C] : Category (LightCondensed.{u} C) :=
  show Category (Sheaf _ _) from inferInstance

/--
Light condensed sets. Because `LightProfinite` is an essentially small category, we don't need the
same universe bump as in `CondensedSet`.
-/
abbrev LightCondSet := LightCondensed.{u} (Type u)

namespace LightCondensed

variable {C : Type w} [Category.{v} C]

@[simp]
lemma id_val (X : LightCondensed.{u} C) : (𝟙 X : X ⟶ X).val = 𝟙 _ := rfl

@[simp]
lemma comp_val {X Y Z : LightCondensed.{u} C} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).val = f.val ≫ g.val :=
  rfl

@[ext]
lemma hom_ext {X Y : LightCondensed.{u} C} (f g : X ⟶ Y) (h : ∀ S, f.val.app S = g.val.app S) :
    f = g := by
  apply Sheaf.hom_ext
  ext
  exact h _

end LightCondensed

namespace LightCondSet

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
-- Note: `simp` can prove this when stated for `LightCondensed C` for a concrete category `C`.
-- However, it doesn't seem to see through the abbreviation `LightCondSet`
@[simp]
lemma hom_naturality_apply {X Y : LightCondSet.{u}} (f : X ⟶ Y) {S T : LightProfiniteᵒᵖ}
    (g : S ⟶ T) (x : X.val.obj S) : f.val.app T (X.val.map g x) = Y.val.map g (f.val.app S x) :=
  NatTrans.naturality_apply f.val g x

end LightCondSet
```
