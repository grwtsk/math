-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Limit.Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Internal/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Internal.FunctorCategory
import Mathlib.CategoryTheory.Monoidal.Limits
import Mathlib.CategoryTheory.Limits.Preserves.Basic

/-!
# Limits of monoid objects.

If `C` has limits (of a given shape), so does `Mon_ C`,
and the forgetful functor preserves these limits.

(This could potentially replace many individual constructions for concrete categories,
in particular `MonCat`, `SemiRingCat`, `RingCat`, and `AlgCat R`.)
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a

open CategoryTheory Limits Monoidal MonoidalCategory

universe v u w

noncomputable section

namespace Mon_

variable {J : Type w} [SmallCategory J]
variable {C : Type u} [Category.{v} C] [HasLimitsOfShape J C] [MonoidalCategory.{v} C]

/-- We construct the (candidate) limit of a functor `F : J ⥤ Mon_ C`
by interpreting it as a functor `Mon_ (J ⥤ C)`,
and noting that taking limits is a lax monoidal functor,
and hence sends monoid objects to monoid objects.
-/
@[simps!]
def limit (F : J ⥤ Mon_ C) : Mon_ C :=
  lim.mapMon.obj ((monFunctorCategoryEquivalence J C).inverse.obj F)

/-- Implementation of `Mon_.hasLimits`: a limiting cone over a functor `F : J ⥤ Mon_ C`.
-/
@[simps]
def limitCone (F : J ⥤ Mon_ C) : Cone F where
  pt := limit F
  π :=
    { app := fun j => { hom := limit.π (F ⋙ Mon_.forget C) j }
      naturality := fun j j' f => by ext; exact (limit.cone (F ⋙ Mon_.forget C)).π.naturality f }

/-- The image of the proposed limit cone for `F : J ⥤ Mon_ C` under the forgetful functor
`forget C : Mon_ C ⥤ C` is isomorphic to the limit cone of `F ⋙ forget C`.
-/
def forgetMapConeLimitConeIso (F : J ⥤ Mon_ C) :
    (forget C).mapCone (limitCone F) ≅ limit.cone (F ⋙ forget C) :=
  Cones.ext (Iso.refl _) (by simp)

/-- Implementation of `Mon_.hasLimitsOfShape`:
the proposed cone over a functor `F : J ⥤ Mon_ C` is a limit cone.
-/
@[simps]
def limitConeIsLimit (F : J ⥤ Mon_ C) : IsLimit (limitCone F) where
  lift s :=
    { hom := limit.lift (F ⋙ Mon_.forget C) ((Mon_.forget C).mapCone s)
      mul_hom := limit.hom_ext (fun j ↦ by
        dsimp
        simp only [Category.assoc, limit.lift_π, Functor.mapCone_pt, forget_obj,
          Functor.mapCone_π_app, forget_map, Hom.mul_hom, limMap_π, tensorObj_obj, Functor.comp_obj,
          MonFunctorCategoryEquivalence.inverseObj_mul_app, lim_μ_π_assoc, lim_obj,
          ← MonoidalCategory.tensor_comp_assoc]) }
  fac s h := by ext; simp
  uniq s m w := by
    ext1
    refine limit.hom_ext (fun j => ?_)
    dsimp; simp only [Mon_.forget_map, limit.lift_π, Functor.mapCone_π_app]
    exact congr_arg Mon_.Hom.hom (w j)

instance hasLimitsOfShape [HasLimitsOfShape J C] : HasLimitsOfShape J (Mon_ C) where
  has_limit := fun F => HasLimit.mk
    { cone := limitCone F
      isLimit := limitConeIsLimit F }

instance forget_freservesLimitsOfShape : PreservesLimitsOfShape J (Mon_.forget C) where
  preservesLimit := fun {F} =>
    preservesLimit_of_preserves_limit_cone (limitConeIsLimit F)
      (IsLimit.ofIsoLimit (limit.isLimit (F ⋙ Mon_.forget C)) (forgetMapConeLimitConeIso F).symm)

end Mon_
