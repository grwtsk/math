# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DisjointCoproduct.Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3984cbe02908c91ff374eadbfe854c79f33eace6` · SHA-256 `2ba19a2095da01e753ef546b68d85109f8d1a7ebb9f7f5105552da94ad3356b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoproductDisjoint.Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoproductDisjoint.Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/DisjointCoproduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback

/-!
# Disjoint coproducts

Defines disjoint coproducts: coproducts where the intersection is initial and the coprojections
are monic.
Shows that a category with disjoint coproducts is `InitialMonoClass`.

## TODO

* Adapt this to the infinitary (small) version: This is one of the conditions in Giraud's theorem
  characterising sheaf topoi.
* Construct examples (and counterexamples?), eg Type, Vec.
* Define extensive categories, and show every extensive category has disjoint coproducts.
* Define coherent categories and use this to define positive coherent categories.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoproductDisjoint.Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34

universe v u u₂

namespace CategoryTheory

namespace Limits

open Category

variable {C : Type u} [Category.{v} C]

/-- Given any pullback diagram of the form

```
Z  ⟶ X₁
↓    ↓
X₂ ⟶ X
```

where `X₁ ⟶ X ← X₂` is a coproduct diagram, then `Z` is initial, and both `X₁ ⟶ X` and `X₂ ⟶ X`
are mono.
-/
class CoproductDisjoint (X₁ X₂ : C) where
  /-- `Z` is initial where `X₁ ⟶ X ⟵ X₂` is a coproduct diagram -/
  isInitialOfIsPullbackOfIsCoproduct :
    ∀ {X Z} {pX₁ : X₁ ⟶ X} {pX₂ : X₂ ⟶ X} {f : Z ⟶ X₁} {g : Z ⟶ X₂}
      (_cX : IsColimit (BinaryCofan.mk pX₁ pX₂)) {comm : f ≫ pX₁ = g ≫ pX₂},
      IsLimit (PullbackCone.mk _ _ comm) → IsInitial Z
  mono_inl : ∀ (X) (X₁ : X₁ ⟶ X) (X₂ : X₂ ⟶ X) (_cX : IsColimit (BinaryCofan.mk X₁ X₂)), Mono X₁
  mono_inr : ∀ (X) (X₁ : X₁ ⟶ X) (X₂ : X₂ ⟶ X) (_cX : IsColimit (BinaryCofan.mk X₁ X₂)), Mono X₂

/-- If the coproduct of `X₁` and `X₂` is disjoint, then given any pullback square

```
Z  ⟶ X₁
↓    ↓
X₂ ⟶ X
```

where `X₁ ⟶ X ← X₂` is a coproduct, then `Z` is initial.
-/
def isInitialOfIsPullbackOfIsCoproduct {Z X₁ X₂ X : C} [CoproductDisjoint X₁ X₂] {pX₁ : X₁ ⟶ X}
    {pX₂ : X₂ ⟶ X} (cX : IsColimit (BinaryCofan.mk pX₁ pX₂)) {f : Z ⟶ X₁} {g : Z ⟶ X₂}
    {comm : f ≫ pX₁ = g ≫ pX₂} (cZ : IsLimit (PullbackCone.mk _ _ comm)) : IsInitial Z :=
  CoproductDisjoint.isInitialOfIsPullbackOfIsCoproduct cX cZ

/-- If the coproduct of `X₁` and `X₂` is disjoint, then given any pullback square

```
Z  ⟶    X₁
↓       ↓
X₂ ⟶ X₁ ⨿ X₂
```

`Z` is initial.
-/
noncomputable def isInitialOfIsPullbackOfCoproduct {Z X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂]
    [CoproductDisjoint X₁ X₂] {f : Z ⟶ X₁} {g : Z ⟶ X₂}
    {comm : f ≫ (coprod.inl : X₁ ⟶ _ ⨿ X₂) = g ≫ coprod.inr}
    (cZ : IsLimit (PullbackCone.mk _ _ comm)) : IsInitial Z :=
  CoproductDisjoint.isInitialOfIsPullbackOfIsCoproduct (coprodIsCoprod _ _) cZ

/-- If the coproduct of `X₁` and `X₂` is disjoint, then provided `X₁ ⟶ X ← X₂` is a coproduct the
pullback is an initial object:

```
     X₁
     ↓
X₂ ⟶ X
```
-/
noncomputable def isInitialOfPullbackOfIsCoproduct {X X₁ X₂ : C} [CoproductDisjoint X₁ X₂]
    {pX₁ : X₁ ⟶ X} {pX₂ : X₂ ⟶ X} [HasPullback pX₁ pX₂] (cX : IsColimit (BinaryCofan.mk pX₁ pX₂)) :
    IsInitial (pullback pX₁ pX₂) :=
  CoproductDisjoint.isInitialOfIsPullbackOfIsCoproduct cX (pullbackIsPullback _ _)

/-- If the coproduct of `X₁` and `X₂` is disjoint, the pullback of `X₁ ⟶ X₁ ⨿ X₂` and `X₂ ⟶ X₁ ⨿ X₂`
is initial.
-/
noncomputable def isInitialOfPullbackOfCoproduct {X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂]
    [CoproductDisjoint X₁ X₂] [HasPullback (coprod.inl : X₁ ⟶ _ ⨿ X₂) coprod.inr] :
    IsInitial (pullback (coprod.inl : X₁ ⟶ _ ⨿ X₂) coprod.inr) :=
  isInitialOfIsPullbackOfCoproduct (pullbackIsPullback _ _)

instance {X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂] [CoproductDisjoint X₁ X₂] :
    Mono (coprod.inl : X₁ ⟶ X₁ ⨿ X₂) :=
  CoproductDisjoint.mono_inl _ _ _ (coprodIsCoprod _ _)

instance {X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂] [CoproductDisjoint X₁ X₂] :
    Mono (coprod.inr : X₂ ⟶ X₁ ⨿ X₂) :=
  CoproductDisjoint.mono_inr _ _ _ (coprodIsCoprod _ _)

/-- `C` has disjoint coproducts if every coproduct is disjoint. -/
class CoproductsDisjoint (C : Type u) [Category.{v} C] where
  CoproductDisjoint : ∀ X Y : C, CoproductDisjoint X Y

attribute [instance 999] CoproductsDisjoint.CoproductDisjoint

/-- If `C` has disjoint coproducts, any morphism out of initial is mono. Note it isn't true in
general that `C` has strict initial objects, for instance consider the category of types and
partial functions. -/
theorem initialMonoClass_of_disjoint_coproducts [CoproductsDisjoint C] : InitialMonoClass C where
  isInitial_mono_from X hI :=
    CoproductDisjoint.mono_inl X (IsInitial.to hI X) (CategoryTheory.CategoryStruct.id X)
      { desc := fun s : BinaryCofan _ _ => s.inr
        fac := fun _s j =>
          Discrete.casesOn j fun j => WalkingPair.casesOn j (hI.hom_ext _ _) (id_comp _)
        uniq := fun (_s : BinaryCofan _ _) _m w =>
          (id_comp _).symm.trans (w ⟨WalkingPair.right⟩) }

end Limits

end CategoryTheory
````
