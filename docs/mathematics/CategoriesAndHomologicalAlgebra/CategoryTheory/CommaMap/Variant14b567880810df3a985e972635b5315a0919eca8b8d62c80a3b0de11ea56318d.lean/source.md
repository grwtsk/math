# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMap.Variant14b567880810df3a985e972635b5315a0919eca8b8d62c80a3b0de11ea56318d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aecdf961e3479159c62063ee9e422e0f603ed6f5` · SHA-256 `bfcc7683f118d5196e4f221cc6ed8089ccc49fdcd67c9cd31283bd3e7393b15b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMapEquivalenceFunctor.Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommaMapEquivalenceFunctor.Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Comma/StructuredArrow/CommaMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic

/-!
# Structured arrow categories on `Comma.map`

We characterize structured arrow categories on arbitrary instances of `Comma.map` as a
comma category itself.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMapEquivalenceFunctor.Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4

@[expose] public section

namespace CategoryTheory

namespace StructuredArrow

universe v₁ v₂ v₃ v₄ v₅ v₆ u₁ u₂ u₃ u₄ u₅ u₆

noncomputable section

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {T : Type u₃} [Category.{v₃} T] {L : C ⥤ T} {R : D ⥤ T}
  {C' : Type u₄} [Category.{v₄} C'] {D' : Type u₅} [Category.{v₅} D'] {T' : Type u₆}
  [Category.{v₆} T'] {L' : C' ⥤ T'} {R' : D' ⥤ T'} {F₁ : C ⥤ C'} {F₂ : D ⥤ D'} {F : T ⥤ T'}
  (α : F₁ ⋙ L' ⟶ L ⋙ F) (β : R ⋙ F ⟶ F₂ ⋙ R')

set_option backward.defeqAttrib.useBackward true in
/-- The functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps, implicit_reducible]
def commaMapEquivalenceFunctor [IsIso β] (X : Comma L' R') :
    StructuredArrow X (Comma.map α β) ⥤ Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) where
  obj Y := ⟨mk Y.hom.left, mk Y.hom.right,
    homMk Y.right.hom
      (by simpa only [Functor.const_obj_obj, map₂_obj_left, mk_left, map₂_obj_right, mk_right,
        map₂_obj_hom, mk_hom_eq_self, Category.id_comp, Category.assoc, NatIso.isIso_inv_app,
        Functor.comp_obj, Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom,
        IsIso.hom_inv_id, Category.comp_id] using
        congrFun (congrArg CategoryStruct.comp Y.hom.w) (inv (β.app Y.right.right) :))⟩
  map {Y Z} f := ⟨homMk f.right.left (congrArg CommaMorphism.left (StructuredArrow.w f)),
    homMk f.right.right (congrArg CommaMorphism.right (StructuredArrow.w f)),
    by simp only [map₂_obj_right, mk_right, hom_eq_iff, comp_right,
      map₂_map_right, homMk_right, CommaMorphism.w] ⟩

set_option backward.defeqAttrib.useBackward true in
/-- The inverse functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps]
def commaMapEquivalenceInverse [IsIso β] (X : Comma L' R') :
    Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) ⥤ StructuredArrow X (Comma.map α β) where
  obj Y := mk (Y := ⟨Y.left.right, Y.right.right, Y.hom.right⟩)
    ⟨by exact Y.left.hom, by exact Y.right.hom, by
      simpa using congrFun (congrArg CategoryStruct.comp (StructuredArrow.w Y.hom))
        (β.app Y.right.right)⟩
  map {Y Z} f := homMk ⟨by exact f.left.right, by exact f.right.right,
    by exact congrArg CommaMorphism.right f.w⟩

set_option backward.defeqAttrib.useBackward true in
/-- The unit establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
def commaMapEquivalenceUnitIso [IsIso β] (X : Comma L' R') :
    𝟭 (StructuredArrow X (Comma.map α β)) ≅
      commaMapEquivalenceFunctor α β X ⋙ commaMapEquivalenceInverse α β X :=
  NatIso.ofComponents (fun _ => isoMk (Iso.refl _))

set_option backward.defeqAttrib.useBackward true in
/-- The counit functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
def commaMapEquivalenceCounitIso [IsIso β] (X : Comma L' R') :
    commaMapEquivalenceInverse α β X ⋙ commaMapEquivalenceFunctor α β X ≅
      𝟭 (Comma (map₂ (𝟙 (L'.obj X.left)) α) (map₂ X.hom (inv β))) :=
  NatIso.ofComponents (fun _ => Comma.isoMk (Iso.refl _) (Iso.refl _))

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The structured arrow category on the functor `Comma.map α β`, with `β` a natural isomorphism,
is equivalent to a comma category on two instances of `StructuredArrow.map₂`. -/
def commaMapEquivalence [IsIso β] (X : Comma L' R') :
    StructuredArrow X (Comma.map α β) ≌ Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) where
  functor := commaMapEquivalenceFunctor α β X
  inverse := commaMapEquivalenceInverse α β X
  unitIso := commaMapEquivalenceUnitIso α β X
  counitIso := commaMapEquivalenceCounitIso α β X

end

end StructuredArrow

end CategoryTheory
```
