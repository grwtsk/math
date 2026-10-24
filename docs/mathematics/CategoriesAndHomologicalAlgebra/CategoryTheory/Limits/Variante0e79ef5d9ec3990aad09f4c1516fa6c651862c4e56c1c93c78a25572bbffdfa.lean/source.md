# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecce50c310871cc28e11dd14bade33c646b25398` · SHA-256 `a19af419accba87e5bba09af60b338ac481192ba56ee64f8ec440e078ce2e324`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSheafOfIsLimit.Variantbba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSheafOfIsLimit.Variantbba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Sheaves.Sheaf
import Mathlib.CategoryTheory.Sites.Limits
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic

/-!
# Presheaves in `C` have limits and colimits when `C` does.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSheafOfIsLimit.Variantbba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc

noncomputable section

universe v u w t

open CategoryTheory

open CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {J : Type w} [Category J]

namespace TopCat

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : HasLimitsOfShape J (Presheaf C X) :=
  functorCategoryHasLimitsOfShape

instance [HasLimits C] (X : TopCat.{v}) : HasLimits.{v} (Presheaf C X) where

instance [HasColimitsOfShape J C] (X : TopCat) : HasColimitsOfShape J (Presheaf C X) :=
  functorCategoryHasColimitsOfShape

instance [HasColimits.{v, u} C] (X : TopCat.{t}) : HasColimitsOfSize.{v, v} (Presheaf C X) where

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : CreatesLimitsOfShape J (Sheaf.forget C X) :=
  Sheaf.createsLimitsOfShape

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : HasLimitsOfShape J (Sheaf C X) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (Sheaf.forget C X)

instance [HasLimits C] (X : TopCat) : CreatesLimits.{v, v} (Sheaf.forget C X) where

instance [HasLimits C] (X : TopCat.{v}) : HasLimitsOfSize.{v, v} (Sheaf.{v} C X) where

theorem isSheaf_of_isLimit [HasLimitsOfShape J C] {X : TopCat} (F : J ⥤ Presheaf.{v} C X)
    (H : ∀ j, (F.obj j).IsSheaf) {c : Cone F} (hc : IsLimit c) : c.pt.IsSheaf := by
  let F' : J ⥤ Sheaf C X :=
    { obj := fun j => ⟨F.obj j, H j⟩
      map := fun f => ⟨F.map f⟩ }
  let e : F' ⋙ Sheaf.forget C X ≅ F := NatIso.ofComponents fun _ => Iso.refl _
  exact Presheaf.isSheaf_of_iso
    ((isLimitOfPreserves (Sheaf.forget C X) (limit.isLimit F')).conePointsIsoOfNatIso hc e)
    (limit F').2

theorem limit_isSheaf [HasLimitsOfShape J C] {X : TopCat} (F : J ⥤ Presheaf.{v} C X)
    (H : ∀ j, (F.obj j).IsSheaf) : (limit F).IsSheaf :=
  isSheaf_of_isLimit F H (limit.isLimit F)

end TopCat
```
