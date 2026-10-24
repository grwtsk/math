# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorExtension.Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a01661590488458e07e60176fbdda7acd5987bbe` · SHA-256 `42b1329c10e0b78828fcbe815e61250c1eadfc2bf82a922163cbe26f88c11134`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransEq.Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NatTransEq.Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Idempotents/FunctorExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Karoubi


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransEq.Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88

#align_import category_theory.idempotents.functor_extension from "leanprover-community/mathlib"@"5f68029a863bdf76029fa0f7a519e6163c14152e"

/-!
# Extension of functors to the idempotent completion

In this file, we construct an extension `functorExtension₁`
of functors `C ⥤ Karoubi D` to functors `Karoubi C ⥤ Karoubi D`. This results in an
equivalence `karoubiUniversal₁ C D : (C ⥤ Karoubi D) ≌ (Karoubi C ⥤ Karoubi D)`.

We also construct an extension `functorExtension₂` of functors
`(C ⥤ D) ⥤ (Karoubi C ⥤ Karoubi D)`. Moreover,
when `D` is idempotent complete, we get equivalences
`karoubiUniversal₂ C D : C ⥤ D ≌ Karoubi C ⥤ Karoubi D`
and `karoubiUniversal C D : C ⥤ D ≌ Karoubi C ⥤ D`.

We occasionally state and use equalities of functors because it is
sometimes convenient to use rewrites when proving properties of
functors obtained using the constructions in this file. Users are
encouraged to use the corresponding natural isomorphism
whenever possible.

-/


open CategoryTheory.Category

open CategoryTheory.Idempotents.Karoubi

namespace CategoryTheory

namespace Idempotents

variable {C D E : Type*} [Category C] [Category D] [Category E]

/-- A natural transformation between functors `Karoubi C ⥤ D` is determined
by its value on objects coming from `C`. -/
theorem natTrans_eq {F G : Karoubi C ⥤ D} (φ : F ⟶ G) (P : Karoubi C) :
    φ.app P = F.map (decompId_i P) ≫ φ.app P.X ≫ G.map (decompId_p P) := by
  rw [← φ.naturality, ← assoc, ← F.map_comp]
  conv =>
    lhs
    rw [← id_comp (φ.app P), ← F.map_id]
  congr
  apply decompId
#align category_theory.idempotents.nat_trans_eq CategoryTheory.Idempotents.natTrans_eq

namespace FunctorExtension₁

/-- The canonical extension of a functor `C ⥤ Karoubi D` to a functor
`Karoubi C ⥤ Karoubi D` -/
@[simps]
def obj (F : C ⥤ Karoubi D) : Karoubi C ⥤ Karoubi D where
  obj P :=
    ⟨(F.obj P.X).X, (F.map P.p).f, by simpa only [F.map_comp, hom_ext_iff] using F.congr_map P.idem⟩
  map f := ⟨(F.map f.f).f, by simpa only [F.map_comp, hom_ext_iff] using F.congr_map f.comm⟩
#align category_theory.idempotents.functor_extension₁.obj CategoryTheory.Idempotents.FunctorExtension₁.obj

/-- Extension of a natural transformation `φ` between functors
`C ⥤ karoubi D` to a natural transformation between the
extension of these functors to `karoubi C ⥤ karoubi D` -/
@[simps]
def map {F G : C ⥤ Karoubi D} (φ : F ⟶ G) : obj F ⟶ obj G where
  app P :=
    { f := (F.map P.p).f ≫ (φ.app P.X).f
      comm := by
        have h := φ.naturality P.p
        have h' := F.congr_map P.idem
        simp only [hom_ext_iff, Karoubi.comp_f, F.map_comp] at h h'
        simp only [obj_obj_p, assoc, ← h]
        slice_rhs 1 3 => rw [h', h'] }
  naturality _ _ f := by
    ext
    dsimp [obj]
    have h := φ.naturality f.f
    have h' := F.congr_map (comp_p f)
    have h'' := F.congr_map (p_comp f)
    simp only [hom_ext_iff, Functor.map_comp, comp_f] at h h' h'' ⊢
    slice_rhs 2 3 => rw [← h]
    slice_lhs 1 2 => rw [h']
    slice_rhs 1 2 => rw [h'']
#align category_theory.idempotents.functor_extension₁.map CategoryTheory.Idempotents.FunctorExtension₁.map

end FunctorExtension₁

variable (C D E)

/-- The canonical functor `(C ⥤ Karoubi D) ⥤ (Karoubi C ⥤ Karoubi D)` -/
@[simps]
def functorExtension₁ : (C ⥤ Karoubi D) ⥤ Karoubi C ⥤ Karoubi D where
  obj := FunctorExtension₁.obj
  map := FunctorExtension₁.map
  map_id F := by
    ext P
    exact comp_p (F.map P.p)
  map_comp {F G H} φ φ' := by
    ext P
    simp only [comp_f, FunctorExtension₁.map_app_f, NatTrans.comp_app, assoc]
    have h := φ.naturality P.p
    have h' := F.congr_map P.idem
    simp only [hom_ext_iff, comp_f, F.map_comp] at h h'
    slice_rhs 2 3 => rw [← h]
    slice_rhs 1 2 => rw [h']
    simp only [assoc]
#align category_theory.idempotents.functor_extension₁ CategoryTheory.Idempotents.functorExtension₁

theorem functorExtension₁_comp_whiskeringLeft_toKaroubi :
    functorExtension₁ C D ⋙ (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) =
      𝟭 _ := by
  refine' Functor.ext _ _
  · intro F
    refine' Functor.ext _ _
    · intro X
      ext
      · simp
      · simp
    · aesop_cat
  · intro F G φ
    aesop_cat
#align category_theory.idempotents.functor_extension₁_comp_whiskering_left_to_karoubi CategoryTheory.Idempotents.functorExtension₁_comp_whiskeringLeft_toKaroubi

/-- The natural isomorphism expressing that functors `Karoubi C ⥤ Karoubi D` obtained
using `functorExtension₁` actually extends the original functors `C ⥤ Karoubi D`. -/
@[simps!]
def functorExtension₁_comp_whiskeringLeft_toKaroubi_iso :
    functorExtension₁ C D ⋙ (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) ≅ 𝟭 _ :=
  eqToIso (functorExtension₁_comp_whiskeringLeft_toKaroubi C D)
#align category_theory.idempotents.functor_extension₁_comp_whiskering_left_to_karoubi_iso CategoryTheory.Idempotents.functorExtension₁_comp_whiskeringLeft_toKaroubi_iso

/-- The counit isomorphism of the equivalence `(C ⥤ Karoubi D) ≌ (Karoubi C ⥤ Karoubi D)`. -/
@[simps!]
def KaroubiUniversal₁.counitIso :
    (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) ⋙ functorExtension₁ C D ≅ 𝟭 _ :=
  NatIso.ofComponents
    (fun G =>
      { hom :=
          { app := fun P =>
              { f := (G.map (decompId_p P)).f
                comm := by
                  simpa only [hom_ext_iff, G.map_comp, G.map_id] using
                    G.congr_map
                      (show P.decompId_p = (toKaroubi C).map P.p ≫ P.decompId_p ≫ 𝟙 _ by simp) }
            naturality := fun P Q f => by
              simpa only [hom_ext_iff, G.map_comp]
                using (G.congr_map (decompId_p_naturality f)).symm }
        inv :=
          { app := fun P =>
              { f := (G.map (decompId_i P)).f
                comm := by
                  simpa only [hom_ext_iff, G.map_comp, G.map_id] using
                    G.congr_map
                      (show P.decompId_i = 𝟙 _ ≫ P.decompId_i ≫ (toKaroubi C).map P.p by simp) }
            naturality := fun P Q f => by
              simpa only [hom_ext_iff, G.map_comp] using G.congr_map (decompId_i_naturality f) }
        hom_inv_id := by
          ext P
          simpa only [hom_ext_iff, G.map_comp, G.map_id] using G.congr_map P.decomp_p.symm
        inv_hom_id := by
          ext P
          simpa only [hom_ext_iff, G.map_comp, G.map_id] using G.congr_map P.decompId.symm })
    (fun {X Y} φ => by
      ext P
      dsimp
      rw [natTrans_eq φ P, P.decomp_p]
      simp only [Functor.map_comp, comp_f, assoc]
      rfl)
#align category_theory.idempotents.karoubi_universal₁.counit_iso CategoryTheory.Idempotents.KaroubiUniversal₁.counitIso

/-- The equivalence of categories `(C ⥤ Karoubi D) ≌ (Karoubi C ⥤ Karoubi D)`. -/
@[simps]
def karoubiUniversal₁ : C ⥤ Karoubi D ≌ Karoubi C ⥤ Karoubi D where
  functor := functorExtension₁ C D
  inverse := (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C)
  unitIso := (functorExtension₁_comp_whiskeringLeft_toKaroubi_iso C D).symm
  counitIso := KaroubiUniversal₁.counitIso C D
  functor_unitIso_comp F := by
    ext P
    dsimp [FunctorExtension₁.map, KaroubiUniversal₁.counitIso]
    simp only [eqToHom_app, Functor.id_obj, Functor.comp_obj, functorExtension₁_obj,
      whiskeringLeft_obj_obj, eqToHom_f, FunctorExtension₁.obj_obj_X, toKaroubi_obj_X,
      eqToHom_refl, comp_id, comp_p, ←comp_f, ← F.map_comp, P.idem]
#align category_theory.idempotents.karoubi_universal₁ CategoryTheory.Idempotents.karoubiUniversal₁

theorem functorExtension₁_comp (F : C ⥤ Karoubi D) (G : D ⥤ Karoubi E) :
    (functorExtension₁ C E).obj (F ⋙ (functorExtension₁ D E).obj G) =
      (functorExtension₁ C D).obj F ⋙ (functorExtension₁ D E).obj G := by
  refine' Functor.ext _ _
  · aesop_cat
  · intro X Y f
    ext
    simp only [eqToHom_refl, id_comp, comp_id]
    rfl
#align category_theory.idempotents.functor_extension₁_comp CategoryTheory.Idempotents.functorExtension₁_comp

/-- The canonical functor `(C ⥤ D) ⥤ (Karoubi C ⥤ Karoubi D)` -/
@[simps!]
def functorExtension₂ : (C ⥤ D) ⥤ Karoubi C ⥤ Karoubi D :=
  (whiskeringRight C D (Karoubi D)).obj (toKaroubi D) ⋙ functorExtension₁ C D
#align category_theory.idempotents.functor_extension₂ CategoryTheory.Idempotents.functorExtension₂

theorem functorExtension₂_comp_whiskeringLeft_toKaroubi :
    functorExtension₂ C D ⋙ (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) =
      (whiskeringRight C D (Karoubi D)).obj (toKaroubi D) := by
  simp only [functorExtension₂, Functor.assoc, functorExtension₁_comp_whiskeringLeft_toKaroubi,
    Functor.comp_id]
#align category_theory.idempotents.functor_extension₂_comp_whiskering_left_to_karoubi CategoryTheory.Idempotents.functorExtension₂_comp_whiskeringLeft_toKaroubi

/-- The natural isomorphism expressing that functors `Karoubi C ⥤ Karoubi D` obtained
using `functorExtension₂` actually extends the original functors `C ⥤ D`. -/
@[simps!]
def functorExtension₂CompWhiskeringLeftToKaroubiIso :
    functorExtension₂ C D ⋙ (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) ≅
      (whiskeringRight C D (Karoubi D)).obj (toKaroubi D) :=
  eqToIso (functorExtension₂_comp_whiskeringLeft_toKaroubi C D)
#align category_theory.idempotents.functor_extension₂_comp_whiskering_left_to_karoubi_iso CategoryTheory.Idempotents.functorExtension₂CompWhiskeringLeftToKaroubiIso

section IsIdempotentComplete

variable [IsIdempotentComplete D]

noncomputable instance : IsEquivalence (toKaroubi D) :=
  toKaroubiIsEquivalence D

/-- The equivalence of categories `(C ⥤ D) ≌ (Karoubi C ⥤ Karoubi D)` when `D`
is idempotent complete. -/
@[simp]
noncomputable def karoubiUniversal₂ : C ⥤ D ≌ Karoubi C ⥤ Karoubi D :=
  (Equivalence.congrRight (toKaroubi D).asEquivalence).trans (karoubiUniversal₁ C D)
#align category_theory.idempotents.karoubi_universal₂ CategoryTheory.Idempotents.karoubiUniversal₂

theorem karoubiUniversal₂_functor_eq : (karoubiUniversal₂ C D).functor = functorExtension₂ C D :=
  rfl
#align category_theory.idempotents.karoubi_universal₂_functor_eq CategoryTheory.Idempotents.karoubiUniversal₂_functor_eq

noncomputable instance : IsEquivalence (functorExtension₂ C D) := by
  rw [← karoubiUniversal₂_functor_eq]
  infer_instance

/-- The extension of functors functor `(C ⥤ D) ⥤ (Karoubi C ⥤ D)`
when `D` is idempotent complete. -/
@[simps!]
noncomputable def functorExtension : (C ⥤ D) ⥤ Karoubi C ⥤ D :=
  functorExtension₂ C D ⋙
    (whiskeringRight (Karoubi C) (Karoubi D) D).obj (toKaroubiIsEquivalence D).inverse
#align category_theory.idempotents.functor_extension CategoryTheory.Idempotents.functorExtension

/-- The equivalence `(C ⥤ D) ≌ (Karoubi C ⥤ D)` when `D` is idempotent complete. -/
@[simp]
noncomputable def karoubiUniversal : C ⥤ D ≌ Karoubi C ⥤ D :=
  (karoubiUniversal₂ C D).trans (Equivalence.congrRight (toKaroubi D).asEquivalence.symm)
#align category_theory.idempotents.karoubi_universal CategoryTheory.Idempotents.karoubiUniversal

theorem karoubiUniversal_functor_eq : (karoubiUniversal C D).functor = functorExtension C D :=
  rfl
#align category_theory.idempotents.karoubi_universal_functor_eq CategoryTheory.Idempotents.karoubiUniversal_functor_eq

noncomputable instance : IsEquivalence (functorExtension C D) := by
  rw [← karoubiUniversal_functor_eq]
  infer_instance

-- porting note: added to avoid a timeout in the following definition
lemma isEquivalence_whiskeringLeft_obj_toKaroubi_aux :
    ((whiskeringLeft C (Karoubi C) D).obj (toKaroubi C) ⋙
      (whiskeringRight C D (Karoubi D)).obj (toKaroubi D) ⋙
        (whiskeringRight C (Karoubi D) D).obj (Functor.inv (toKaroubi D))) =
      (karoubiUniversal C D).inverse := by
  rfl

noncomputable instance : IsEquivalence ((whiskeringLeft C (Karoubi C) D).obj (toKaroubi C)) :=
  IsEquivalence.cancelCompRight _
  ((whiskeringRight C _ _).obj (toKaroubi D) ⋙ (whiskeringRight C _ _).obj (toKaroubi D).inv)
  (IsEquivalence.ofEquivalence <| (toKaroubi D).asEquivalence.congrRight.trans
    (toKaroubi D).asEquivalence.symm.congrRight)
  (by
    rw [isEquivalence_whiskeringLeft_obj_toKaroubi_aux]
    infer_instance)

variable {C D}

theorem whiskeringLeft_obj_preimage_app {F G : Karoubi C ⥤ D}
    (τ : toKaroubi _ ⋙ F ⟶ toKaroubi _ ⋙ G) (P : Karoubi C) :
    (((whiskeringLeft _ _ _).obj (toKaroubi _)).preimage τ).app P =
      F.map P.decompId_i ≫ τ.app P.X ≫ G.map P.decompId_p := by
  rw [natTrans_eq]
  congr 2
  rw [← congr_app (((whiskeringLeft _ _ _).obj (toKaroubi _)).image_preimage τ) P.X]
  dsimp
  congr
#align category_theory.idempotents.whiskering_left_obj_preimage_app CategoryTheory.Idempotents.whiskeringLeft_obj_preimage_app

end IsIdempotentComplete

end Idempotents

end CategoryTheory
```
