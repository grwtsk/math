-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Sheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.FunctorCategory
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
import Mathlib.CategoryTheory.Generator.Sheaf
import Mathlib.CategoryTheory.Sites.Abelian
import Mathlib.CategoryTheory.Sites.Equivalence

/-!

# AB axioms in sheaf categories

If `J` is a Grothendieck topology on a small category `C : Type v`,
and `A : Type u₁` (with `Category.{v} A`) is a Grothendieck abelian category,
then `Sheaf J A` is a Grothendieck abelian category.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d

universe v v₁ v₂ u u₁ u₂

namespace CategoryTheory

open Limits

namespace Sheaf

variable {C : Type u} {A : Type u₁} {K : Type u₂}
  [Category.{v} C] [Category.{v₁} A] [Category.{v₂} K]
  (J : GrothendieckTopology C)

section

/- The two instances in this section apply in very rare situations, as they assume
that the forgetful functor from sheaves to presheaves commutes with certain colimits.
This does apply for sheaves for the extensive topology --- condensed modules over a
ring are examples of such sheaves.  -/

variable [HasWeakSheafify J A]

instance [HasFiniteLimits A] [HasColimitsOfShape K A] [HasExactColimitsOfShape K A]
    [PreservesColimitsOfShape K (sheafToPresheaf J A)] : HasExactColimitsOfShape K (Sheaf J A) :=
  HasExactColimitsOfShape.domain_of_functor K (sheafToPresheaf J A)

instance [HasFiniteColimits A] [HasLimitsOfShape K A] [HasExactLimitsOfShape K A]
    [PreservesFiniteColimits (sheafToPresheaf J A)] : HasExactLimitsOfShape K (Sheaf J A) :=
  HasExactLimitsOfShape.domain_of_functor K (sheafToPresheaf J A)

end

instance hasFilteredColimitsOfSize
    [HasSheafify J A] [HasFilteredColimitsOfSize.{v₂, u₂} A] :
    HasFilteredColimitsOfSize.{v₂, u₂} (Sheaf J A) where
  HasColimitsOfShape K := by infer_instance

instance hasExactColimitsOfShape [HasFiniteLimits A] [HasSheafify J A]
    [HasColimitsOfShape K A] [HasExactColimitsOfShape K A] :
    HasExactColimitsOfShape K (Sheaf J A) :=
  (sheafificationAdjunction J A).hasExactColimitsOfShape K

instance ab5ofSize [HasFiniteLimits A] [HasSheafify J A]
    [HasFilteredColimitsOfSize.{v₂, u₂} A] [AB5OfSize.{v₂, u₂} A] :
    AB5OfSize.{v₂, u₂} (Sheaf J A) where
  ofShape K _ _ := by infer_instance

instance {C : Type v} [SmallCategory.{v} C] (J : GrothendieckTopology C)
    (A : Type u₁) [Category.{v} A] [Abelian A] [IsGrothendieckAbelian.{v} A]
    [HasSheafify J A] : IsGrothendieckAbelian.{v} (Sheaf J A) where

instance {C : Type (v + 1)} [LargeCategory C] [EssentiallySmall.{v} C]
    (J : GrothendieckTopology C)
    (A : Type u₁) [Category.{v} A] [Abelian A] [IsGrothendieckAbelian.{v} A]
    [HasSheafify ((equivSmallModel C).inverse.inducedTopology J) A] :
      IsGrothendieckAbelian.{v} (Sheaf J A) :=
  IsGrothendieckAbelian.of_equivalence
    ((equivSmallModel C).inverse.sheafInducedTopologyEquivOfIsCoverDense J A)

end Sheaf

end CategoryTheory
