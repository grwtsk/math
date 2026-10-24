-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Sheafification.Variant156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Sheaf/Colimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification

/-!
# Colimits in categories of sheaves of modules

In this file, we show that colimits of shape `J` exists in a category
of sheaves of modules if it exists in the corresponding category
of presheaves of modules.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f

universe w' w v v' u' u

namespace SheafOfModules

open CategoryTheory Limits

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

variable (R : Sheaf J RingCat.{u}) [HasWeakSheafify J AddCommGrp.{v}]
  [J.WEqualsLocallyBijective AddCommGrp.{v}] (K : Type w) [Category.{w'} K]

instance [HasColimitsOfShape K (PresheafOfModules.{v} R.val)] :
    HasColimitsOfShape K (SheafOfModules.{v} R) where
  has_colimit F := by
    let e : F ≅ (F ⋙ forget R) ⋙ PresheafOfModules.sheafification (𝟙 R.val) :=
      isoWhiskerLeft F (asIso (PresheafOfModules.sheafificationAdjunction (𝟙 R.val)).counit).symm
    exact hasColimit_of_iso e

end SheafOfModules
