-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Category.Variant23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840

namespace Think.Logic

/-! Core lightweight category and bijection predicates for Think logic receipts. -/

structure Category where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (A : Obj) → Hom A A
  comp : {A B C : Obj} → Hom A B → Hom B C → Hom A C
  id_left : ∀ {A B : Obj} (f : Hom A B), comp (id A) f = f
  id_right : ∀ {A B : Obj} (f : Hom A B), comp f (id B) = f
  assoc :
    ∀ {A B C D : Obj}
      (f : Hom A B) (g : Hom B C) (h : Hom C D),
      comp (comp f g) h = comp f (comp g h)

structure Functor (C D : Category) where
  obj : C.Obj → D.Obj
  map : {A B : C.Obj} → C.Hom A B → D.Hom (obj A) (obj B)
  map_id : ∀ A : C.Obj, map (C.id A) = D.id (obj A)
  map_comp :
    ∀ {A B C' : C.Obj} (f : C.Hom A B) (g : C.Hom B C'),
      map (C.comp f g) = D.comp (map f) (map g)

def Injective {A B : Type} (f : A → B) : Prop :=
  ∀ {x y : A}, f x = f y → x = y

def Surjective {A B : Type} (f : A → B) : Prop :=
  ∀ y : B, ∃ x : A, f x = y

def Bijective {A B : Type} (f : A → B) : Prop :=
  Injective f ∧ Surjective f

end Think.Logic
