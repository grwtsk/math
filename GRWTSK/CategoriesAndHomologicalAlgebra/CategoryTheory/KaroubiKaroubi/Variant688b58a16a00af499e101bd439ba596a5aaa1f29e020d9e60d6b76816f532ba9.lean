-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IdemF.Variant15f4267aebdd955e889db0e8eeeb1b1b795e84a4db28bdd55809c3f802e3c9e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15f4267aebdd955e889db0e8eeeb1b1b795e84a4db28bdd55809c3f802e3c9e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IdemF.Variant15f4267aebdd955e889db0e8eeeb1b1b795e84a4db28bdd55809c3f802e3c9e1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"15f4267aebdd955e889db0e8eeeb1b1b795e84a4db28bdd55809c3f802e3c9e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Idempotents/KaroubiKaroubi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Idempotents.Karoubi

/-!
# Idempotence of the Karoubi envelope

In this file, we construct the equivalence of categories
`KaroubiKaroubi.equivalence C : Karoubi C ≌ Karoubi (Karoubi C)` for any category `C`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IdemF.Variant15f4267aebdd955e889db0e8eeeb1b1b795e84a4db28bdd55809c3f802e3c9e1

@[expose] public section


open CategoryTheory.Category

open CategoryTheory.Idempotents.Karoubi

namespace CategoryTheory

namespace Idempotents

namespace KaroubiKaroubi

variable (C : Type*) [Category* C]

@[reassoc (attr := simp)]
lemma idem_f (P : Karoubi (Karoubi C)) : P.p.f ≫ P.p.f = P.p.f := by
  simpa only [hom_ext_iff, comp_f] using P.idem

@[reassoc]
lemma p_comm_f {P Q : Karoubi (Karoubi C)} (f : P ⟶ Q) : P.p.f ≫ f.f.f = f.f.f ≫ Q.p.f := by
  simpa only [hom_ext_iff, comp_f] using p_comm f

/-- The canonical functor `Karoubi (Karoubi C) ⥤ Karoubi C` -/
@[simps]
def inverse : Karoubi (Karoubi C) ⥤ Karoubi C where
  obj P := ⟨P.X.X, P.p.f, by simpa only [hom_ext_iff] using! P.idem⟩
  map f := ⟨f.f.f, by simpa only [hom_ext_iff] using! f.comm⟩

instance [Preadditive C] : Functor.Additive (inverse C) where

set_option backward.defeqAttrib.useBackward true in
/-- The unit isomorphism of the equivalence -/
@[simps!]
def unitIso : 𝟭 (Karoubi C) ≅ toKaroubi (Karoubi C) ⋙ inverse C :=
  eqToIso (Functor.ext (by cat_disch) (by simp))

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] p_comm_f in
/-- The counit isomorphism of the equivalence -/
@[simps]
def counitIso : inverse C ⋙ toKaroubi (Karoubi C) ≅ 𝟭 (Karoubi (Karoubi C)) where
  hom := { app := fun P => { f := { f := P.p.1 } } }
  inv := { app := fun P => { f := { f := P.p.1 } } }

set_option backward.defeqAttrib.useBackward true in
/-- The equivalence `Karoubi C ≌ Karoubi (Karoubi C)` -/
@[simps]
def equivalence : Karoubi C ≌ Karoubi (Karoubi C) where
  functor := toKaroubi (Karoubi C)
  inverse := KaroubiKaroubi.inverse C
  unitIso := KaroubiKaroubi.unitIso C
  counitIso := KaroubiKaroubi.counitIso C

instance equivalence.additive_functor [Preadditive C] :
    Functor.Additive (equivalence C).functor where

instance equivalence.additive_inverse [Preadditive C] :
    Functor.Additive (equivalence C).inverse where

end KaroubiKaroubi

end Idempotents

end CategoryTheory
