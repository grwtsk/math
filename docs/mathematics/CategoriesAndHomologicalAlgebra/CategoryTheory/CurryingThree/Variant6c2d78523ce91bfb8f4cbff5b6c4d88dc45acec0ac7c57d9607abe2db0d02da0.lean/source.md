# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CurryingThree.Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aed51ed10826ee814791d444bcdf76d58712d867` · SHA-256 `ab6542a1eaebfcd3d15943a1ea84e9c4dd5173fba6e3fd3536622db8b4435a3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Currying.Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/CurryingThree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Functor.Currying
import Mathlib.CategoryTheory.Functor.Trifunctor
import Mathlib.CategoryTheory.Products.Associator

/-!
# Currying of functors in three variables

We study the equivalence of categories
`currying₃ : (C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ≌ C₁ × C₂ × C₃ ⥤ E`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f

namespace CategoryTheory

variable {C₁ C₂ C₁₂ C₃ C₂₃ D₁ D₂ D₃ E : Type*}
  [Category C₁] [Category C₂] [Category C₃] [Category C₁₂] [Category C₂₃]
  [Category D₁] [Category D₂] [Category D₃] [Category E]

/-- The equivalence of categories `(C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ≌ C₁ × C₂ × C₃ ⥤ E`
given by the curryfication of functors in three variables. -/
def currying₃ : (C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ≌ C₁ × C₂ × C₃ ⥤ E :=
  currying.trans (currying.trans (prod.associativity C₁ C₂ C₃).congrLeft)

/-- Uncurrying a functor in three variables. -/
abbrev uncurry₃ : (C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ⥤ C₁ × C₂ × C₃ ⥤ E := currying₃.functor

/-- Currying a functor in three variables. -/
abbrev curry₃ : (C₁ × C₂ × C₃ ⥤ E) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ E := currying₃.inverse

/-- Uncurrying functors in three variables gives a fully faithful functor. -/
def fullyFaithfulUncurry₃ :
    (uncurry₃ : (C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ⥤ (C₁ × C₂ × C₃ ⥤ E)).FullyFaithful :=
  currying₃.fullyFaithfulFunctor

@[simp]
lemma curry₃_obj_map_app_app (F : C₁ × C₂ × C₃ ⥤ E)
    {X₁ Y₁ : C₁} (f : X₁ ⟶ Y₁) (X₂ : C₂) (X₃ : C₃) :
    (((curry₃.obj F).map f).app X₂).app X₃ = F.map ⟨f, 𝟙 X₂, 𝟙 X₃⟩ := rfl

@[simp]
lemma curry₃_obj_obj_map_app (F : C₁ × C₂ × C₃ ⥤ E)
    (X₁ : C₁) {X₂ Y₂ : C₂} (f : X₂ ⟶ Y₂) (X₃ : C₃) :
    (((curry₃.obj F).obj X₁).map f).app X₃ = F.map ⟨𝟙 X₁, f, 𝟙 X₃⟩ := rfl

@[simp]
lemma curry₃_obj_obj_obj_map (F : C₁ × C₂ × C₃ ⥤ E)
    (X₁ : C₁) (X₂ : C₂) {X₃ Y₃ : C₃} (f : X₃ ⟶ Y₃) :
    (((curry₃.obj F).obj X₁).obj X₂).map f = F.map ⟨𝟙 X₁, 𝟙 X₂, f⟩ := rfl

@[simp]
lemma curry₃_map_app_app_app {F G : C₁ × C₂ × C₃ ⥤ E} (f : F ⟶ G)
    (X₁ : C₁) (X₂ : C₂) (X₃ : C₃) :
    (((curry₃.map f).app X₁).app X₂).app X₃ = f.app ⟨X₁, X₂, X₃⟩ := rfl

@[simp]
lemma currying₃_unitIso_hom_app_app_app_app (F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E)
    (X₁ : C₁) (X₂ : C₂) (X₃ : C₃) :
    (((currying₃.unitIso.hom.app F).app X₁).app X₂).app X₃ = 𝟙 _ := by
  simp [currying₃, Equivalence.unit]

@[simp]
lemma currying₃_unitIso_inv_app_app_app_app (F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E)
    (X₁ : C₁) (X₂ : C₂) (X₃ : C₃) :
    (((currying₃.unitIso.inv.app F).app X₁).app X₂).app X₃ = 𝟙 _ := by
  simp [currying₃, Equivalence.unitInv]

/-- Given functors `F₁ : C₁ ⥤ D₁`, `F₂ : C₂ ⥤ D₂`, `F₃ : C₃ ⥤ D₃`
and `G : D₁ × D₂ × D₃ ⥤ E`, this is the isomorphism between
`curry₃.obj (F₁.prod (F₂.prod F₃) ⋙ G) : C₁ ⥤ C₂ ⥤ C₃ ⥤ E`
and `F₁ ⋙ curry₃.obj G ⋙ ((whiskeringLeft₂ E).obj F₂).obj F₃`. -/
@[simps!]
def curry₃ObjProdComp (F₁ : C₁ ⥤ D₁) (F₂ : C₂ ⥤ D₂) (F₃ : C₃ ⥤ D₃) (G : D₁ × D₂ × D₃ ⥤ E) :
    curry₃.obj (F₁.prod (F₂.prod F₃) ⋙ G) ≅
      F₁ ⋙ curry₃.obj G ⋙ ((whiskeringLeft₂ E).obj F₂).obj F₃ :=
  NatIso.ofComponents
    (fun X₁ ↦ NatIso.ofComponents
      (fun X₂ ↦ NatIso.ofComponents (fun X₃ ↦ Iso.refl _)))

/-- `bifunctorComp₁₂` can be described in terms of the curryfication of functors. -/
@[simps!]
def bifunctorComp₁₂Iso (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) (G : C₁₂ ⥤ C₃ ⥤ E) :
    bifunctorComp₁₂ F₁₂ G ≅ curry.obj (uncurry.obj F₁₂ ⋙ G) :=
  NatIso.ofComponents (fun _ => NatIso.ofComponents (fun _ => Iso.refl _))

/-- `bifunctorComp₂₃` can be described in terms of the curryfication of functors. -/
@[simps!]
def bifunctorComp₂₃Iso (F : C₁ ⥤ C₂₃ ⥤ E) (G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃) :
    bifunctorComp₂₃ F G₂₃ ≅
    curry.obj (curry.obj (prod.associator _ _ _ ⋙
      uncurry.obj (uncurry.obj G₂₃ ⋙ F.flip).flip)) :=
  NatIso.ofComponents (fun _ ↦ NatIso.ofComponents (fun _ ↦
    NatIso.ofComponents (fun _ ↦ Iso.refl _)))

end CategoryTheory
```
