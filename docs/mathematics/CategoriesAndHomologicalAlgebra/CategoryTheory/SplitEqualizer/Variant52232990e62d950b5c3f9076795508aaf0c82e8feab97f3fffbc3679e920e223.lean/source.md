# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitEqualizer.Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb8dbca8e4086dd7c531938e31159ac55632a8e3` · SHA-256 `e171473f0339454ee9cf19b08b6fba15f76f3385c42527b9ef96fa4c89aa6a9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSplitEqualizer.Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSplitEqualizer.Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/SplitEqualizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers

/-!
# Split Equalizers

We define what it means for a triple of morphisms `f g : X ⟶ Y`, `ι : W ⟶ X` to be a split
equalizer: there is a retraction `r` of `ι` and a retraction `t` of `g`, which additionally satisfy
`t ≫ f = r ≫ ι`.

In addition, we show that every split equalizer is an equalizer
(`CategoryTheory.IsSplitEqualizer.isEqualizer`) and absolute
(`CategoryTheory.IsSplitEqualizer.map`)

A pair `f g : X ⟶ Y` has a split equalizer if there is a `W` and `ι : W ⟶ X` making `f,g,ι` a
split equalizer.
A pair `f g : X ⟶ Y` has a `G`-split equalizer if `G f, G g` has a split equalizer.

These definitions and constructions are useful in particular for the comonadicity theorems.

This file was adapted from `Mathlib/CategoryTheory/Limits/Shapes/SplitCoequalizer.lean`. Please try
to keep them in sync.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSplitEqualizer.Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46

namespace CategoryTheory

universe v v₂ u u₂

variable {C : Type u} [Category.{v} C]
variable {D : Type u₂} [Category.{v₂} D]
variable (G : C ⥤ D)
variable {X Y : C} (f g : X ⟶ Y)

/-- A split equalizer diagram consists of morphisms

```
      ι   f
    W → X ⇉ Y
          g
```

satisfying `ι ≫ f = ι ≫ g` together with morphisms

```
      r   t
    W ← X ← Y
```

satisfying `ι ≫ r = 𝟙 W`, `g ≫ t = 𝟙 X` and `f ≫ t = r ≫ ι`.

The name "equalizer" is appropriate, since any split equalizer is a equalizer, see
`CategoryTheory.IsSplitEqualizer.isEqualizer`.
Split equalizers are also absolute, since a functor preserves all the structure above.
-/
structure IsSplitEqualizer {W : C} (ι : W ⟶ X) where
  /-- A map from `X` to the equalizer -/
  leftRetraction : X ⟶ W
  /-- A map in the opposite direction to `f` and `g` -/
  rightRetraction : Y ⟶ X
  /-- Composition of `ι` with `f` and with `g` agree -/
  condition : ι ≫ f = ι ≫ g := by aesop_cat
  /-- `leftRetraction` splits `ι` -/
  ι_leftRetraction : ι ≫ leftRetraction = 𝟙 W := by aesop_cat
  /-- `rightRetraction` splits `g` -/
  bottom_rightRetraction : g ≫ rightRetraction = 𝟙 X := by aesop_cat
  /-- `f` composed with `rightRetraction` is `leftRetraction` composed with `ι` -/
  top_rightRetraction : f ≫ rightRetraction = leftRetraction ≫ ι := by aesop_cat

instance {X : C} : Inhabited (IsSplitEqualizer (𝟙 X) (𝟙 X) (𝟙 X)) where
  default := { leftRetraction := 𝟙 X, rightRetraction := 𝟙 X }

open IsSplitEqualizer

attribute [reassoc] condition

attribute [reassoc (attr := simp)] ι_leftRetraction bottom_rightRetraction top_rightRetraction

variable {f g}

/-- Split equalizers are absolute: they are preserved by any functor. -/
@[simps]
def IsSplitEqualizer.map {W : C} {ι : W ⟶ X} (q : IsSplitEqualizer f g ι) (F : C ⥤ D) :
    IsSplitEqualizer (F.map f) (F.map g) (F.map ι) where
  leftRetraction := F.map q.leftRetraction
  rightRetraction := F.map q.rightRetraction
  condition := by rw [← F.map_comp, q.condition, F.map_comp]
  ι_leftRetraction := by rw [← F.map_comp, q.ι_leftRetraction, F.map_id]
  bottom_rightRetraction := by rw [← F.map_comp, q.bottom_rightRetraction, F.map_id]
  top_rightRetraction := by rw [← F.map_comp, q.top_rightRetraction, F.map_comp]

section

open Limits

/-- A split equalizer clearly induces a fork. -/
@[simps! pt]
def IsSplitEqualizer.asFork {W : C} {h : W ⟶ X} (t : IsSplitEqualizer f g h) :
    Fork f g := Fork.ofι h t.condition

@[simp]
theorem IsSplitEqualizer.asFork_ι {W : C} {h : W ⟶ X} (t : IsSplitEqualizer f g h) :
    t.asFork.ι = h := rfl

/--
The fork induced by a split equalizer is an equalizer, justifying the name. In some cases it
is more convenient to show a given fork is an equalizer by showing it is split.
-/
def IsSplitEqualizer.isEqualizer {W : C} {h : W ⟶ X} (t : IsSplitEqualizer f g h) :
    IsLimit t.asFork :=
  Fork.IsLimit.mk' _ fun s =>
    ⟨ s.ι ≫ t.leftRetraction,
      by simp [- top_rightRetraction, ← t.top_rightRetraction, s.condition_assoc],
      fun hm => by simp [← hm] ⟩

end
variable (f g)

/--
The pair `f,g` is a cosplit pair if there is an `h : W ⟶ X` so that `f, g, h` forms a split
equalizer in `C`.
-/
class HasSplitEqualizer : Prop where
  /-- There is some split equalizer -/
  splittable : ∃ (W : C) (h : W ⟶ X), Nonempty (IsSplitEqualizer f g h)

/--
The pair `f,g` is a `G`-cosplit pair if there is an `h : W ⟶ G X` so that `G f, G g, h` forms a
split equalizer in `D`.
-/
abbrev Functor.IsCosplitPair : Prop :=
  HasSplitEqualizer (G.map f) (G.map g)

/-- Get the equalizer object from the typeclass `IsCosplitPair`. -/
noncomputable def HasSplitEqualizer.equalizerOfSplit [HasSplitEqualizer f g] : C :=
  (splittable (f := f) (g := g)).choose

/-- Get the equalizer morphism from the typeclass `IsCosplitPair`. -/
noncomputable def HasSplitEqualizer.equalizerι [HasSplitEqualizer f g] :
    HasSplitEqualizer.equalizerOfSplit f g ⟶ X :=
  (splittable (f := f) (g := g)).choose_spec.choose

/-- The equalizer morphism `equalizerι` gives a split equalizer on `f,g`. -/
noncomputable def HasSplitEqualizer.isSplitEqualizer [HasSplitEqualizer f g] :
    IsSplitEqualizer f g (HasSplitEqualizer.equalizerι f g) :=
  Classical.choice (splittable (f := f) (g := g)).choose_spec.choose_spec

/-- If `f, g` is cosplit, then `G f, G g` is cosplit. -/
instance map_is_cosplit_pair [HasSplitEqualizer f g] : HasSplitEqualizer (G.map f) (G.map g) where
  splittable :=
    ⟨_, _, ⟨IsSplitEqualizer.map (HasSplitEqualizer.isSplitEqualizer f g) _⟩⟩

namespace Limits

/-- If a pair has a split equalizer, it has a equalizer. -/
instance (priority := 1) hasEqualizer_of_hasSplitEqualizer [HasSplitEqualizer f g] :
    HasEqualizer f g :=
  HasLimit.mk ⟨_, (HasSplitEqualizer.isSplitEqualizer f g).isEqualizer⟩

end Limits

end CategoryTheory
````
