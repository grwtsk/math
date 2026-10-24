# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategories.Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `940cab3eaf7ef4d04e51ff0de96ca5c9621aff51` · SHA-256 `b5a1c3d7b7180356c8066cf7f03b3d6c87709c9c81ff1af146713ef1e21414ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppIdem.Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AppIdem.Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Idempotents/FunctorCategories.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Karoubi

/-!
# Idempotent completeness and functor categories

In this file we define an instance `functor_category_isIdempotentComplete` expressing
that a functor category `J ⥤ C` is idempotent complete when the target category `C` is.

We also provide a fully faithful functor
`karoubiFunctorCategoryEmbedding : Karoubi (J ⥤ C)) : J ⥤ Karoubi C` for all categories
`J` and `C`.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppIdem.Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638

open CategoryTheory

open CategoryTheory.Category

open CategoryTheory.Idempotents.Karoubi

open CategoryTheory.Limits

namespace CategoryTheory

namespace Idempotents

variable {J C : Type*} [Category J] [Category C] (P Q : Karoubi (J ⥤ C)) (f : P ⟶ Q) (X : J)

@[reassoc (attr := simp)]
theorem app_idem : P.p.app X ≫ P.p.app X = P.p.app X :=
  congr_app P.idem X

variable {P Q}

@[reassoc (attr := simp)]
theorem app_p_comp : P.p.app X ≫ f.f.app X = f.f.app X :=
  congr_app (p_comp f) X

@[reassoc (attr := simp)]
theorem app_comp_p : f.f.app X ≫ Q.p.app X = f.f.app X :=
  congr_app (comp_p f) X

@[reassoc]
theorem app_p_comm : P.p.app X ≫ f.f.app X = f.f.app X ≫ Q.p.app X :=
  congr_app (p_comm f) X

variable (J C)

instance functor_category_isIdempotentComplete [IsIdempotentComplete C] :
    IsIdempotentComplete (J ⥤ C) := by
  refine ⟨fun F p hp => ?_⟩
  have hC := (isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent C).mp inferInstance
  haveI : ∀ j : J, HasEqualizer (𝟙 _) (p.app j) := fun j => hC _ _ (congr_app hp j)
  /- We construct the direct factor `Y` associated to `p : F ⟶ F` by computing
      the equalizer of the identity and `p.app j` on each object `(j : J)`. -/
  let Y : J ⥤ C :=
    { obj := fun j => Limits.equalizer (𝟙 _) (p.app j)
      map := fun {j j'} φ =>
        equalizer.lift (Limits.equalizer.ι (𝟙 _) (p.app j) ≫ F.map φ)
          (by rw [comp_id, assoc, p.naturality φ, ← assoc, ← Limits.equalizer.condition, comp_id]) }
  let i : Y ⟶ F :=
    { app := fun j => equalizer.ι _ _
      naturality := fun _ _ _ => by rw [equalizer.lift_ι] }
  let e : F ⟶ Y :=
    { app := fun j =>
        equalizer.lift (p.app j) (by simpa only [comp_id] using (congr_app hp j).symm)
      naturality := fun j j' φ => equalizer.hom_ext (by simp [Y]) }
  use Y, i, e
  constructor
  · ext j
    dsimp
    rw [assoc, equalizer.lift_ι, ← equalizer.condition, id_comp, comp_id]
  · ext j
    simp [Y, i, e]
namespace KaroubiFunctorCategoryEmbedding

variable {J C}

/-- On objects, the functor which sends a formal direct factor `P` of a
functor `F : J ⥤ C` to the functor `J ⥤ Karoubi C` which sends `(j : J)` to
the corresponding direct factor of `F.obj j`. -/
@[simps]
def obj (P : Karoubi (J ⥤ C)) : J ⥤ Karoubi C where
  obj j := ⟨P.X.obj j, P.p.app j, congr_app P.idem j⟩
  map {j j'} φ :=
    { f := P.p.app j ≫ P.X.map φ
      comm := by
        simp only [NatTrans.naturality, assoc]
        have h := congr_app P.idem j
        rw [NatTrans.comp_app] at h
        rw [reassoc_of% h, reassoc_of% h] }

/-- Tautological action on maps of the functor `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`. -/
@[simps]
def map {P Q : Karoubi (J ⥤ C)} (f : P ⟶ Q) : obj P ⟶ obj Q where
  app j := ⟨f.f.app j, congr_app f.comm j⟩

end KaroubiFunctorCategoryEmbedding

/-- The tautological fully faithful functor `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`. -/
@[simps]
def karoubiFunctorCategoryEmbedding : Karoubi (J ⥤ C) ⥤ J ⥤ Karoubi C where
  obj := KaroubiFunctorCategoryEmbedding.obj
  map := KaroubiFunctorCategoryEmbedding.map

instance : (karoubiFunctorCategoryEmbedding J C).Full where
  map_surjective {P Q} f :=
   ⟨{ f :=
        { app := fun j => (f.app j).f
          naturality := fun j j' φ => by
            rw [← Karoubi.comp_p_assoc]
            have h := hom_ext_iff.mp (f.naturality φ)
            simp only [comp_f] at h
            dsimp [karoubiFunctorCategoryEmbedding] at h
            erw [← h, assoc, ← P.p.naturality_assoc φ, p_comp (f.app j')] }
      comm := by
        ext j
        exact (f.app j).comm }, rfl⟩

instance : (karoubiFunctorCategoryEmbedding J C).Faithful where
  map_injective h := by
    ext j
    exact hom_ext_iff.mp (congr_app h j)

/-- The composition of `(J ⥤ C) ⥤ Karoubi (J ⥤ C)` and `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`
equals the functor `(J ⥤ C) ⥤ (J ⥤ Karoubi C)` given by the composition with
`toKaroubi C : C ⥤ Karoubi C`. -/
theorem toKaroubi_comp_karoubiFunctorCategoryEmbedding :
    toKaroubi _ ⋙ karoubiFunctorCategoryEmbedding J C =
      (whiskeringRight J _ _).obj (toKaroubi C) := by
  apply Functor.ext
  · intro X Y f
    ext j
    simp
  · intro X
    apply Functor.ext
    · intro j j' φ
      ext
      simp
    · intro j
      rfl

end Idempotents

end CategoryTheory
```
