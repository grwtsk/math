# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51bf8b05a4e919a0525acbbc8c81dd942d647ec6` · SHA-256 `55c4597678710619fad3c58e164ad883731a0f601a357e2a12b3e54efb16973a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EssentiallySmall.Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/EssentiallySmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Category.ULift
import Mathlib.CategoryTheory.EqToHom
import Mathlib.CategoryTheory.Skeletal
import Mathlib.Logic.UnivLE
import Mathlib.Logic.Small.Basic

/-!
# Essentially small categories.

A category given by `(C : Type u) [Category.{v} C]` is `w`-essentially small
if there exists a `SmallModel C : Type w` equipped with `[SmallCategory (SmallModel C)]` and an
equivalence `C ≌ SmallModel C`.

A category is `w`-locally small if every hom type is `w`-small.

The main theorem here is that a category is `w`-essentially small iff
the type `Skeleton C` is `w`-small, and `C` is `w`-locally small.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390

universe w w' v v' u u'

open CategoryTheory

variable (C : Type u) [Category.{v} C]

namespace CategoryTheory

/-- A category is `EssentiallySmall.{w}` if there exists
an equivalence to some `S : Type w` with `[SmallCategory S]`. -/
@[pp_with_univ]
class EssentiallySmall (C : Type u) [Category.{v} C] : Prop where
  /-- An essentially small category is equivalent to some small category. -/
  equiv_smallCategory : ∃ (S : Type w) (_ : SmallCategory S), Nonempty (C ≌ S)

/-- Constructor for `EssentiallySmall C` from an explicit small category witness. -/
theorem EssentiallySmall.mk' {C : Type u} [Category.{v} C] {S : Type w} [SmallCategory S]
    (e : C ≌ S) : EssentiallySmall.{w} C :=
  ⟨⟨S, _, ⟨e⟩⟩⟩

/-- An arbitrarily chosen small model for an essentially small category.
-/
@[pp_with_univ]
def SmallModel (C : Type u) [Category.{v} C] [EssentiallySmall.{w} C] : Type w :=
  Classical.choose (@EssentiallySmall.equiv_smallCategory C _ _)

noncomputable instance smallCategorySmallModel (C : Type u) [Category.{v} C]
    [EssentiallySmall.{w} C] : SmallCategory (SmallModel C) :=
  Classical.choose (Classical.choose_spec (@EssentiallySmall.equiv_smallCategory C _ _))

/-- The (noncomputable) categorical equivalence between
an essentially small category and its small model.
-/
noncomputable def equivSmallModel (C : Type u) [Category.{v} C] [EssentiallySmall.{w} C] :
    C ≌ SmallModel C :=
  Nonempty.some
    (Classical.choose_spec (Classical.choose_spec (@EssentiallySmall.equiv_smallCategory C _ _)))

instance (C : Type u) [Category.{v} C] [EssentiallySmall.{w} C] : EssentiallySmall.{w} Cᵒᵖ :=
  EssentiallySmall.mk' (equivSmallModel C).op

theorem essentiallySmall_congr {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
    (e : C ≌ D) : EssentiallySmall.{w} C ↔ EssentiallySmall.{w} D := by
  fconstructor
  · rintro ⟨S, 𝒮, ⟨f⟩⟩
    exact EssentiallySmall.mk' (e.symm.trans f)
  · rintro ⟨S, 𝒮, ⟨f⟩⟩
    exact EssentiallySmall.mk' (e.trans f)

theorem Discrete.essentiallySmallOfSmall {α : Type u} [Small.{w} α] :
    EssentiallySmall.{w} (Discrete α) :=
  ⟨⟨Discrete (Shrink α), ⟨inferInstance, ⟨Discrete.equivalence (equivShrink _)⟩⟩⟩⟩

theorem essentiallySmallSelf : EssentiallySmall.{max w v u} C :=
  EssentiallySmall.mk' (AsSmall.equiv : C ≌ AsSmall.{w} C)

/-- A category is `w`-locally small if every hom set is `w`-small.

See `ShrinkHoms C` for a category instance where every hom set has been replaced by a small model.
-/
@[pp_with_univ]
class LocallySmall (C : Type u) [Category.{v} C] : Prop where
  /-- A locally small category has small hom-types. -/
  hom_small : ∀ X Y : C, Small.{w} (X ⟶ Y) := by infer_instance

instance (C : Type u) [Category.{v} C] [LocallySmall.{w} C] (X Y : C) : Small.{w, v} (X ⟶ Y) :=
  LocallySmall.hom_small X Y

instance (C : Type u) [Category.{v} C] [LocallySmall.{w} C] : LocallySmall.{w} Cᵒᵖ where
  hom_small X Y := small_of_injective (opEquiv X Y).injective

theorem locallySmall_of_faithful {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
    (F : C ⥤ D) [F.Faithful] [LocallySmall.{w} D] : LocallySmall.{w} C where
  hom_small {_ _} := small_of_injective F.map_injective

theorem locallySmall_congr {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
    (e : C ≌ D) : LocallySmall.{w} C ↔ LocallySmall.{w} D :=
  ⟨fun _ => locallySmall_of_faithful e.inverse, fun _ => locallySmall_of_faithful e.functor⟩

instance (priority := 100) locallySmall_self (C : Type u) [Category.{v} C] :
    LocallySmall.{v} C where

instance (priority := 100) locallySmall_of_univLE (C : Type u) [Category.{v} C] [UnivLE.{v, w}] :
    LocallySmall.{w} C where

theorem locallySmall_max {C : Type u} [Category.{v} C] : LocallySmall.{max v w} C where
  hom_small _ _ := small_max.{w} _

instance (priority := 100) locallySmall_of_essentiallySmall (C : Type u) [Category.{v} C]
    [EssentiallySmall.{w} C] : LocallySmall.{w} C :=
  (locallySmall_congr (equivSmallModel C)).mpr (CategoryTheory.locallySmall_self _)

/-- We define a type alias `ShrinkHoms C` for `C`. When we have `LocallySmall.{w} C`,
we'll put a `Category.{w}` instance on `ShrinkHoms C`.
-/
@[pp_with_univ]
def ShrinkHoms (C : Type u) :=
  C

namespace ShrinkHoms

section

variable {C' : Type*}

-- a fresh variable with no category instance attached
/-- Help the typechecker by explicitly translating from `C` to `ShrinkHoms C`. -/
def toShrinkHoms {C' : Type*} (X : C') : ShrinkHoms C' :=
  X

/-- Help the typechecker by explicitly translating from `ShrinkHoms C` to `C`. -/
def fromShrinkHoms {C' : Type*} (X : ShrinkHoms C') : C' :=
  X

@[simp]
theorem to_from (X : C') : fromShrinkHoms (toShrinkHoms X) = X :=
  rfl

@[simp]
theorem from_to (X : ShrinkHoms C') : toShrinkHoms (fromShrinkHoms X) = X :=
  rfl

end

variable [LocallySmall.{w} C]

@[simps]
noncomputable instance : Category.{w} (ShrinkHoms C) where
  Hom X Y := Shrink (fromShrinkHoms X ⟶ fromShrinkHoms Y)
  id X := equivShrink _ (𝟙 (fromShrinkHoms X))
  comp f g := equivShrink _ ((equivShrink _).symm f ≫ (equivShrink _).symm g)

/-- Implementation of `ShrinkHoms.equivalence`. -/
@[simps]
noncomputable def functor : C ⥤ ShrinkHoms C where
  obj X := toShrinkHoms X
  map {X Y} f := equivShrink (X ⟶ Y) f

/-- Implementation of `ShrinkHoms.equivalence`. -/
@[simps]
noncomputable def inverse : ShrinkHoms C ⥤ C where
  obj X := fromShrinkHoms X
  map {X Y} f := (equivShrink (fromShrinkHoms X ⟶ fromShrinkHoms Y)).symm f

/-- The categorical equivalence between `C` and `ShrinkHoms C`, when `C` is locally small.
-/
@[simps]
noncomputable def equivalence : C ≌ ShrinkHoms C where
  functor := functor C
  inverse := inverse C
  unitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

instance : (functor C).IsEquivalence := (equivalence C).isEquivalence_functor
instance : (inverse C).IsEquivalence := (equivalence C).isEquivalence_inverse

end ShrinkHoms

namespace Shrink

noncomputable instance [Small.{w} C] : Category.{v} (Shrink.{w} C) :=
  InducedCategory.category (equivShrink C).symm

/-- The categorical equivalence between `C` and `Shrink C`, when `C` is small. -/
noncomputable def equivalence [Small.{w} C] : C ≌ Shrink.{w} C :=
  (Equivalence.induced _).symm

instance [Small.{w'} C] [LocallySmall.{w} C] :
    LocallySmall.{w} (Shrink.{w'} C) :=
  locallySmall_of_faithful.{w} (equivalence.{w'} C).inverse

end Shrink

/-- A category is essentially small if and only if
the underlying type of its skeleton (i.e. the "set" of isomorphism classes) is small,
and it is locally small.
-/
theorem essentiallySmall_iff (C : Type u) [Category.{v} C] :
    EssentiallySmall.{w} C ↔ Small.{w} (Skeleton C) ∧ LocallySmall.{w} C := by
  -- This theorem is the only bit of real work in this file.
  fconstructor
  · intro h
    fconstructor
    · rcases h with ⟨S, 𝒮, ⟨e⟩⟩
      refine ⟨⟨Skeleton S, ⟨?_⟩⟩⟩
      exact e.skeletonEquiv
    · infer_instance
  · rintro ⟨⟨S, ⟨e⟩⟩, L⟩
    let e' := (ShrinkHoms.equivalence C).skeletonEquiv.symm
    letI : Category S := InducedCategory.category (e'.trans e).symm
    refine ⟨⟨S, this, ⟨?_⟩⟩⟩
    refine (ShrinkHoms.equivalence C).trans <|
      (skeletonEquivalence (ShrinkHoms C)).symm.trans
        ((inducedFunctor (e'.trans e).symm).asEquivalence.symm)

theorem essentiallySmall_of_small_of_locallySmall [Small.{w} C] [LocallySmall.{w} C] :
    EssentiallySmall.{w} C :=
  (essentiallySmall_iff C).2 ⟨small_of_surjective Quotient.exists_rep, by infer_instance⟩

section FullSubcategory

instance locallySmall_fullSubcategory [LocallySmall.{w} C] (P : ObjectProperty C) :
    LocallySmall.{w} P.FullSubcategory :=
  locallySmall_of_faithful <| P.ι

instance essentiallySmall_fullSubcategory_mem (s : Set C) [Small.{w} s] [LocallySmall.{w} C] :
    EssentiallySmall.{w} (ObjectProperty.FullSubcategory (· ∈ s)) :=
  suffices Small.{w} (ObjectProperty.FullSubcategory (· ∈ s)) from
    essentiallySmall_of_small_of_locallySmall _
  small_of_injective (f := fun x => (⟨x.1, x.2⟩ : s)) (by aesop_cat)

end FullSubcategory

/-- Any thin category is locally small.
-/
instance (priority := 100) locallySmall_of_thin {C : Type u} [Category.{v} C] [Quiver.IsThin C] :
    LocallySmall.{w} C where

/--
A thin category is essentially small if and only if the underlying type of its skeleton is small.
-/
theorem essentiallySmall_iff_of_thin {C : Type u} [Category.{v} C] [Quiver.IsThin C] :
    EssentiallySmall.{w} C ↔ Small.{w} (Skeleton C) := by
  simp [essentiallySmall_iff, CategoryTheory.locallySmall_of_thin]

instance [Small.{w} C] : Small.{w} (Discrete C) := small_map discreteEquiv

end CategoryTheory
```
