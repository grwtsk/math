# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variant047b432aaa6637a0fc9d64d31525fc03110eebeb9171bb6907c7085f33c6ae6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f10aed33e686f6f876b4cabe12b30c7bce8cf754` · SHA-256 `822c85dbc66cb3bc92cb91591498c5f94a061e11462a49807d18963fc920a8ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiberwiseColimitLimitIso.Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FiberwiseColimitLimitIso.Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/Grothendieck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.Grothendieck

/-!
# Colimits on Grothendieck constructions preserving limits

We characterize the condition in which colimits on Grothendieck constructions preserve limits: By
preserving limits on the Grothendieck construction's base category as well as on each of its fibers.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiberwiseColimitLimitIso.Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec

@[expose] public section


universe v₁ v₂ v₃ v₄ u₁ u₂ u₃ u₄

namespace CategoryTheory

open CategoryTheory.Functor

namespace Limits

noncomputable section

variable {C : Type u₁} [Category.{v₁} C]
variable {H : Type u₂} [Category.{v₂} H]
variable {J : Type u₃} [Category.{v₃} J]
variable {F : C ⥤ Cat.{v₄, u₄}}

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `colim` on each fiber `F.obj c` of a functor `F : C ⥤ Cat` preserves limits of shape `J`,
then the fiberwise colimit of the limit of a functor `K : J ⥤ Grothendieck F ⥤ H` is naturally
isomorphic to taking the limit of the composition `K ⋙ fiberwiseColim F H`. -/
@[simps!]
def fiberwiseColimitLimitIso (K : J ⥤ Grothendieck F ⥤ H)
    [∀ (c : C), HasColimitsOfShape (↑(F.obj c)) H] [HasLimitsOfShape J H]
    [∀ c, PreservesLimitsOfShape J (colim (J := F.obj c) (C := H))] :
    fiberwiseColimit (limit K) ≅ limit (K ⋙ fiberwiseColim F H) :=
  NatIso.ofComponents
    (fun c => HasColimit.isoOfNatIso
       (limitCompWhiskeringLeftIsoCompLimit K (Grothendieck.ι F c)).symm ≪≫
      preservesLimitIso colim _ ≪≫
      HasLimit.isoOfNatIso
        (associator _ _ _ ≪≫
        isoWhiskerLeft _ (fiberwiseColimCompEvaluationIso _).symm ≪≫
        (associator _ _ _).symm) ≪≫
      (limitObjIsoLimitCompEvaluation _ c).symm)
    fun {c₁ c₂} f => by
      simp only [fiberwiseColimit_obj, fiberwiseColimit_map, Iso.trans_hom, Iso.symm_hom,
        Category.assoc, limitObjIsoLimitCompEvaluation_inv_limit_map]
      apply colimit.hom_ext
      intro d
      simp only [← Category.assoc]
      congr 1
      apply limit.hom_ext
      intro e
      simp [← NatTrans.comp_app_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable (C) (F) in
/-- If `colim` on a category `C` preserves limits of shape `J` and if it does so for `colim` on
every `F.obj c` for a functor `F : C ⥤ Cat`, then `colim` on `Grothendieck F` also preserves limits
of shape `J`. -/
instance preservesLimitsOfShape_colim_grothendieck [HasColimitsOfShape C H] [HasLimitsOfShape J H]
    [∀ c, HasColimitsOfShape (↑(F.obj c)) H] [PreservesLimitsOfShape J (colim (J := C) (C := H))]
    [∀ c, PreservesLimitsOfShape J (colim (J := F.obj c) (C := H))] :
    PreservesLimitsOfShape J (colim (J := Grothendieck F) (C := H)) := by
  constructor
  intro K
  let i₂ := calc colimit (limit K)
    _ ≅ colimit (fiberwiseColimit (limit K)) := (colimitFiberwiseColimitIso _).symm
    _ ≅ colimit (limit (K ⋙ fiberwiseColim _ _)) :=
          HasColimit.isoOfNatIso (fiberwiseColimitLimitIso _)
    _ ≅ limit ((K ⋙ fiberwiseColim _ _) ⋙ colim) :=
          preservesLimitIso colim (K ⋙ fiberwiseColim _ _)
    _ ≅ limit (K ⋙ colim) :=
      HasLimit.isoOfNatIso
       (associator _ _ _ ≪≫ isoWhiskerLeft _ fiberwiseColimCompColimIso)
  have : IsIso (limit.post K colim) := by
    convert! Iso.isIso_hom i₂
    ext
    simp only [colim_obj, Functor.comp_obj, limit.post_π, colim_map, Iso.trans_def,
      Iso.trans_assoc, Iso.trans_hom, Category.assoc, HasLimit.isoOfNatIso_hom_π,
      fiberwiseColim_obj, isoWhiskerLeft_hom, NatTrans.comp_app, Functor.associator_hom_app,
      whiskerLeft_app, fiberwiseColimCompColimIso_hom_app, Category.id_comp,
      preservesLimitIso_hom_π_assoc, i₂]
    ext
    simp only [ι_colimMap, Trans.trans, Iso.symm_hom, ι_colimitFiberwiseColimitIso_inv_assoc,
      HasColimit.ι_isoOfNatIso_hom_assoc, fiberwiseColimit_obj, fiberwiseColimitLimitIso_hom_app,
      ι_colimMap_assoc, Category.assoc, limitObjIsoLimitCompEvaluation_inv_π_app_assoc,
      Functor.comp_obj, fiberwiseColim_obj, HasLimit.isoOfNatIso_hom_π_assoc,
      whiskeringLeft_obj_obj, colim_obj, evaluation_obj_obj, Iso.trans_hom, isoWhiskerLeft_hom,
      NatTrans.comp_app, Functor.associator_hom_app, whiskerLeft_app,
      fiberwiseColimCompEvaluationIso_inv_app, Functor.associator_inv_app, Category.comp_id,
      Category.id_comp, preservesLimitIso_hom_π_assoc, colim_map, Grothendieck.ι_obj,
      ι_colimitFiberwiseColimitIso_hom]
    simp [← Category.assoc, ← NatTrans.comp_app]
  apply preservesLimit_of_isIso_post

end

end Limits

end CategoryTheory
```
