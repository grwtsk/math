-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variant70f365399351b23fc7704223eb176d200f16c313baf684a2c77509ae569c402b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70f365399351b23fc7704223eb176d200f16c313baf684a2c77509ae569c402b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pushforward.Variant70f365399351b23fc7704223eb176d200f16c313baf684a2c77509ae569c402b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"70f365399351b23fc7704223eb176d200f16c313baf684a2c77509ae569c402b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Sheaf/PushforwardContinuous.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Pushforward
import Mathlib.Algebra.Category.ModuleCat.Sheaf
import Mathlib.CategoryTheory.Sites.Over

/-!
# Pushforward of sheaves of modules

Assume that categories `C` and `D` are equipped with Grothendieck topologies, and
that `F : C ⥤ D` is a continuous functor.
Then, if `φ : S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R` is
a morphism of sheaves of rings, we construct the pushforward functor
`pushforward φ : SheafOfModules.{v} R ⥤ SheafOfModules.{v} S`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variant70f365399351b23fc7704223eb176d200f16c313baf684a2c77509ae569c402b

universe v v₁ v₂ u₁ u₂ u

open CategoryTheory

namespace SheafOfModules

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {J : GrothendieckTopology C} {K : GrothendieckTopology D} {F : C ⥤ D}
  {S : Sheaf J RingCat.{u}} {R : Sheaf K RingCat.{u}}
  [Functor.IsContinuous.{u} F J K] [Functor.IsContinuous.{v} F J K]
  (φ : S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R)

/-- The pushforward of sheaves of modules that is induced by a continuous functor `F`
and a morphism of sheaves of rings `φ : S ⟶ (F.sheafPushforwardContinuous RingCat J K).obj R`. -/
@[simps]
noncomputable def pushforward : SheafOfModules.{v} R ⥤ SheafOfModules.{v} S where
  obj M :=
    { val := (PresheafOfModules.pushforward φ.val).obj M.val
      isSheaf := ((F.sheafPushforwardContinuous _ J K).obj ⟨_, M.isSheaf⟩).cond }
  map f :=
    { val := (PresheafOfModules.pushforward φ.val).map f.val }

/-- Given `M : SheafOfModules R` and `X : D`, this is the restriction of `M`
over the sheaf of rings `R.over X` on the category `Over X`. -/
noncomputable abbrev over (M : SheafOfModules.{v} R) (X : D) : SheafOfModules.{v} (R.over X) :=
  (pushforward.{v} (𝟙 _)).obj M

end SheafOfModules
