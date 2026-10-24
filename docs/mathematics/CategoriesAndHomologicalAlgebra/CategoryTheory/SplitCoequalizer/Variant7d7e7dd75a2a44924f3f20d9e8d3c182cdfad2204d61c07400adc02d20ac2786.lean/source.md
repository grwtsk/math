# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitCoequalizer.Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45797185025442dd1ae34ad50dd07694dbbb1659` · SHA-256 `7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers

#align_import category_theory.limits.shapes.split_coequalizer from "leanprover-community/mathlib"@"024a4231815538ac739f52d08dd20a55da0d6b23"

/-!
# Split coequalizers

We define what it means for a triple of morphisms `f g : X ⟶ Y`, `π : Y ⟶ Z` to be a split
coequalizer: there is a section `s` of `π` and a section `t` of `g`, which additionally satisfy
`t ≫ f = π ≫ s`.

In addition, we show that every split coequalizer is a coequalizer
(`CategoryTheory.IsSplitCoequalizer.isCoequalizer`) and absolute
(`CategoryTheory.IsSplitCoequalizer.map`)

A pair `f g : X ⟶ Y` has a split coequalizer if there is a `Z` and `π : Y ⟶ Z` making `f,g,π` a
split coequalizer.
A pair `f g : X ⟶ Y` has a `G`-split coequalizer if `G f, G g` has a split coequalizer.

These definitions and constructions are useful in particular for the monadicity theorems.

## TODO

Dualise to split equalizers.
-/


namespace CategoryTheory

universe v v₂ u u₂

variable {C : Type u} [Category.{v} C]

variable {D : Type u₂} [Category.{v₂} D]

variable (G : C ⥤ D)

variable {X Y : C} (f g : X ⟶ Y)

/-- A split coequalizer diagram consists of morphisms

      f   π
    X ⇉ Y → Z
      g

satisfying `f ≫ π = g ≫ π` together with morphisms

      t   s
    X ← Y ← Z

satisfying `s ≫ π = 𝟙 Z`, `t ≫ g = 𝟙 Y` and `t ≫ f = π ≫ s`.

The name "coequalizer" is appropriate, since any split coequalizer is a coequalizer, see
`Category_theory.IsSplitCoequalizer.isCoequalizer`.
Split coequalizers are also absolute, since a functor preserves all the structure above.
-/
structure IsSplitCoequalizer {Z : C} (π : Y ⟶ Z) where
  /-- A map from the coequalizer to `Y` -/
  rightSection : Z ⟶ Y
  /-- A map in the opposite direction to `f` and `g` -/
  leftSection : Y ⟶ X
  /-- Composition of `π` with `f` and with `g` agree -/
  condition : f ≫ π = g ≫ π
  /-- `rightSection` splits `π` -/
  rightSection_π : rightSection ≫ π = 𝟙 Z
  /-- `leftSection` splits `g` -/
  leftSection_bottom : leftSection ≫ g = 𝟙 Y
  /-- `leftSection` composed with `f` is `pi` composed with `rightSection` -/
  leftSection_top : leftSection ≫ f = π ≫ rightSection
#align category_theory.is_split_coequalizer CategoryTheory.IsSplitCoequalizer
#align category_theory.is_split_coequalizer.right_section CategoryTheory.IsSplitCoequalizer.rightSection
#align category_theory.is_split_coequalizer.left_section CategoryTheory.IsSplitCoequalizer.leftSection
#align category_theory.is_split_coequalizer.right_section_π CategoryTheory.IsSplitCoequalizer.rightSection_π
#align category_theory.is_split_coequalizer.left_section_bottom CategoryTheory.IsSplitCoequalizer.leftSection_bottom
#align category_theory.is_split_coequalizer.left_section_top CategoryTheory.IsSplitCoequalizer.leftSection_top

instance {X : C} : Inhabited (IsSplitCoequalizer (𝟙 X) (𝟙 X) (𝟙 X)) where
  default := ⟨𝟙 X, 𝟙 X, rfl, Category.id_comp _, Category.id_comp _, rfl⟩

open IsSplitCoequalizer

attribute [reassoc] condition

attribute [reassoc (attr := simp)] rightSection_π leftSection_bottom leftSection_top

variable {f g}

/-- Split coequalizers are absolute: they are preserved by any functor. -/
@[simps]
def IsSplitCoequalizer.map {Z : C} {π : Y ⟶ Z} (q : IsSplitCoequalizer f g π) (F : C ⥤ D) :
    IsSplitCoequalizer (F.map f) (F.map g) (F.map π)
    where
  rightSection := F.map q.rightSection
  leftSection := F.map q.leftSection
  condition := by rw [← F.map_comp, q.condition, F.map_comp]
  rightSection_π := by rw [← F.map_comp, q.rightSection_π, F.map_id]
  leftSection_bottom := by rw [← F.map_comp, q.leftSection_bottom, F.map_id]
  leftSection_top := by rw [← F.map_comp, q.leftSection_top, F.map_comp]
#align category_theory.is_split_coequalizer.map CategoryTheory.IsSplitCoequalizer.map

section

open Limits

/-- A split coequalizer clearly induces a cofork. -/
@[simps! pt]
def IsSplitCoequalizer.asCofork {Z : C} {h : Y ⟶ Z} (t : IsSplitCoequalizer f g h) :
    Cofork f g := Cofork.ofπ h t.condition
#align category_theory.is_split_coequalizer.as_cofork CategoryTheory.IsSplitCoequalizer.asCofork

@[simp]
theorem IsSplitCoequalizer.asCofork_π {Z : C} {h : Y ⟶ Z} (t : IsSplitCoequalizer f g h) :
    t.asCofork.π = h := rfl
#align category_theory.is_split_coequalizer.as_cofork_π CategoryTheory.IsSplitCoequalizer.asCofork_π

/--
The cofork induced by a split coequalizer is a coequalizer, justifying the name. In some cases it
is more convenient to show a given cofork is a coequalizer by showing it is split.
-/
def IsSplitCoequalizer.isCoequalizer {Z : C} {h : Y ⟶ Z} (t : IsSplitCoequalizer f g h) :
    IsColimit t.asCofork :=
  Cofork.IsColimit.mk' _ fun s =>
    ⟨t.rightSection ≫ s.π, by
      dsimp
      rw [← t.leftSection_top_assoc, s.condition, t.leftSection_bottom_assoc], fun hm => by
      simp [← hm]⟩
#align category_theory.is_split_coequalizer.is_coequalizer CategoryTheory.IsSplitCoequalizer.isCoequalizer

end

variable (f g)

/--
The pair `f,g` is a split pair if there is an `h : Y ⟶ Z` so that `f, g, h` forms a split
coequalizer in `C`.
-/
class HasSplitCoequalizer : Prop where
  /-- There is some split coequalizer -/
  splittable : ∃ (Z : C) (h : Y ⟶ Z), Nonempty (IsSplitCoequalizer f g h)
#align category_theory.has_split_coequalizer CategoryTheory.HasSplitCoequalizer

/--
The pair `f,g` is a `G`-split pair if there is an `h : G Y ⟶ Z` so that `G f, G g, h` forms a split
coequalizer in `D`.
-/
abbrev Functor.IsSplitPair : Prop :=
  HasSplitCoequalizer (G.map f) (G.map g)
#align category_theory.functor.is_split_pair CategoryTheory.Functor.IsSplitPair

/-- Get the coequalizer object from the typeclass `IsSplitPair`. -/
noncomputable def HasSplitCoequalizer.coequalizerOfSplit [HasSplitCoequalizer f g] : C :=
  (@splittable _ _ _ _ f g).choose
#align category_theory.has_split_coequalizer.coequalizer_of_split CategoryTheory.HasSplitCoequalizer.coequalizerOfSplit

/-- Get the coequalizer morphism from the typeclass `IsSplitPair`. -/
noncomputable def HasSplitCoequalizer.coequalizerπ [HasSplitCoequalizer f g] :
    Y ⟶ HasSplitCoequalizer.coequalizerOfSplit f g :=
  (@splittable _ _ _ _ f g).choose_spec.choose
#align category_theory.has_split_coequalizer.coequalizer_π CategoryTheory.HasSplitCoequalizer.coequalizerπ

/-- The coequalizer morphism `coequalizeπ` gives a split coequalizer on `f,g`. -/
noncomputable def HasSplitCoequalizer.isSplitCoequalizer [HasSplitCoequalizer f g] :
    IsSplitCoequalizer f g (HasSplitCoequalizer.coequalizerπ f g) :=
  Classical.choice (@splittable _ _ _ _ f g).choose_spec.choose_spec
#align category_theory.has_split_coequalizer.is_split_coequalizer CategoryTheory.HasSplitCoequalizer.isSplitCoequalizer

/-- If `f, g` is split, then `G f, G g` is split. -/
instance map_is_split_pair [HasSplitCoequalizer f g] : HasSplitCoequalizer (G.map f) (G.map g)
    where splittable :=
    ⟨_, _, ⟨IsSplitCoequalizer.map (HasSplitCoequalizer.isSplitCoequalizer f g) _⟩⟩
#align category_theory.map_is_split_pair CategoryTheory.map_is_split_pair

namespace Limits

/-- If a pair has a split coequalizer, it has a coequalizer. -/
instance (priority := 1) hasCoequalizer_of_hasSplitCoequalizer [HasSplitCoequalizer f g] :
    HasCoequalizer f g :=
  HasColimit.mk ⟨_, (HasSplitCoequalizer.isSplitCoequalizer f g).isCoequalizer⟩
#align category_theory.limits.has_coequalizer_of_has_split_coequalizer CategoryTheory.Limits.hasCoequalizer_of_hasSplitCoequalizer

end Limits

end CategoryTheory
```
