# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variant6d0da4aa9f697c1617a566c8c782f088efe51dade9a3f8259c0caa5f6e029844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `917ae99f00c8a25fc23461368dd823b3f3c63ccc` · SHA-256 `3d1848834a084b431c323a1300d0d03babf0ae8bf765b4acb18c4e0ae6b3b80e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bicone.Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Bicone.Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Idempotents/Biproducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Karoubi

/-!

# Biproducts in the idempotent completion of a preadditive category

In this file, we define an instance expressing that if `C` is an additive category
(i.e. is preadditive and has finite biproducts), then `Karoubi C` is also an additive category.

We also obtain that for all `P : Karoubi C` where `C` is a preadditive category `C`, there
is a canonical isomorphism `P ⊞ P.complement ≅ (toKaroubi C).obj P.X` in the category
`Karoubi C` where `P.complement` is the formal direct factor of `P.X` corresponding to
the idempotent endomorphism `𝟙 P.X - P.p`.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bicone.Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf

noncomputable section

open CategoryTheory.Category

open CategoryTheory.Limits

open CategoryTheory.Preadditive

universe v

namespace CategoryTheory

namespace Idempotents

namespace Karoubi

variable {C : Type*} [Category.{v} C] [Preadditive C]

namespace Biproducts

/-- The `Bicone` used in order to obtain the existence of
the biproduct of a functor `J ⥤ Karoubi C` when the category `C` is additive. -/
@[simps]
def bicone [HasFiniteBiproducts C] {J : Type} [Finite J] (F : J → Karoubi C) : Bicone F where
  pt :=
    { X := biproduct fun j => (F j).X
      p := biproduct.map fun j => (F j).p
      idem := by
        ext
        simp only [assoc, biproduct.map_π, biproduct.map_π_assoc, idem] }
  π j :=
    { f := (biproduct.map fun j => (F j).p) ≫ Bicone.π _ j
      comm := by
        simp only [assoc, biproduct.bicone_π, biproduct.map_π, biproduct.map_π_assoc, (F j).idem] }
  ι j :=
    { f := biproduct.ι (fun j => (F j).X) j ≫ biproduct.map fun j => (F j).p
      comm := by simp only [biproduct.ι_map, assoc, idem_assoc] }
  ι_π j j' := by
    split_ifs with h
    · subst h
      simp only [biproduct.ι_map, biproduct.bicone_π, biproduct.map_π, eqToHom_refl,
        id_f, hom_ext_iff, comp_f, assoc, bicone_ι_π_self_assoc, idem]
    · dsimp
      simp only [biproduct.ι_map, biproduct.map_π, hom_ext_iff, comp_f,
        assoc, biproduct.ι_π_ne_assoc _ h, zero_comp, comp_zero, instZero_zero]

end Biproducts

theorem karoubi_hasFiniteBiproducts [HasFiniteBiproducts C] : HasFiniteBiproducts (Karoubi C) :=
  { out := fun n =>
      { has_biproduct := fun F => by
          apply hasBiproduct_of_total (Biproducts.bicone F)
          simp only [hom_ext_iff]
          refine biproduct.hom_ext' _ _ (fun j => ?_)
          simp only [Biproducts.bicone_pt_X, sum_hom, comp_f, Biproducts.bicone_π_f,
            biproduct.bicone_π, biproduct.map_π, Biproducts.bicone_ι_f, biproduct.ι_map, assoc,
            idem_assoc, id_f, Biproducts.bicone_pt_p, comp_sum]
          rw [Finset.sum_eq_single j]
          · simp only [bicone_ι_π_self_assoc]
          · intro b _ hb
            simp only [biproduct.ι_π_ne_assoc _ hb.symm, zero_comp]
          · intro hj
            simp only [Finset.mem_univ, not_true] at hj } }

attribute [instance] karoubi_hasFiniteBiproducts

/-- `P.complement` is the formal direct factor of `P.X` given by the idempotent
endomorphism `𝟙 P.X - P.p` -/
@[simps]
def complement (P : Karoubi C) : Karoubi C where
  X := P.X
  p := 𝟙 _ - P.p
  idem := idem_of_id_sub_idem P.p P.idem

instance (P : Karoubi C) : HasBinaryBiproduct P P.complement :=
  hasBinaryBiproduct_of_total
    { pt := P.X
      fst := P.decompId_p
      snd := P.complement.decompId_p
      inl := P.decompId_i
      inr := P.complement.decompId_i
      inl_fst := P.decompId.symm
      inl_snd := by
        simp only [instZero_zero, hom_ext_iff, complement_X, comp_f,
          decompId_i_f, decompId_p_f, complement_p, comp_sub, comp_id, idem, sub_self]
      inr_fst := by
        simp only [instZero_zero, hom_ext_iff, complement_X, comp_f,
          decompId_i_f, complement_p, decompId_p_f, sub_comp, id_comp, idem, sub_self]
      inr_snd := P.complement.decompId.symm }
    (by
      ext
      simp only [complement_X, comp_f, decompId_i_f, decompId_p_f, complement_p, instAdd_add, idem,
        comp_sub, comp_id, sub_comp, id_comp, sub_self, sub_zero, add_sub_cancel, id_f])

attribute [-simp] hom_ext_iff

/-- A formal direct factor `P : Karoubi C` of an object `P.X : C` in a
preadditive category is actually a direct factor of the image `(toKaroubi C).obj P.X`
of `P.X` in the category `Karoubi C` -/
def decomposition (P : Karoubi C) : P ⊞ P.complement ≅ (toKaroubi _).obj P.X where
  hom := biprod.desc P.decompId_i P.complement.decompId_i
  inv := biprod.lift P.decompId_p P.complement.decompId_p
  hom_inv_id := by
    apply biprod.hom_ext'
    · rw [biprod.inl_desc_assoc, comp_id, biprod.lift_eq, comp_add, ← decompId_assoc,
        add_eq_left, ← assoc]
      refine (?_ =≫ _).trans zero_comp
      ext
      simp only [comp_f, toKaroubi_obj_X, decompId_i_f, decompId_p_f,
        complement_p, comp_sub, comp_id, idem, sub_self, instZero_zero]
    · rw [biprod.inr_desc_assoc, comp_id, biprod.lift_eq, comp_add, ← decompId_assoc,
        add_eq_right, ← assoc]
      refine (?_ =≫ _).trans zero_comp
      ext
      simp only [complement_X, comp_f, decompId_i_f, complement_p,
        decompId_p_f, sub_comp, id_comp, idem, sub_self, instZero_zero]
  inv_hom_id := by
    ext
    simp only [toKaroubi_obj_X, biprod.lift_desc, instAdd_add, comp_f, decompId_p_f, decompId_i_f,
      idem, complement_X, complement_p, comp_sub, comp_id, sub_comp, id_comp, sub_self, sub_zero,
      add_sub_cancel, id_f, toKaroubi_obj_p]

end Karoubi

end Idempotents

end CategoryTheory
```
