-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FilteredColimits.Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/PresheafOfModules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.Grp.FilteredColimits
public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Generator
public import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
public import Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced
public import Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit

/-!
# The category of presheaves of modules is Grothendieck abelian

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0

universe u

open CategoryTheory Limits

namespace PresheafOfModules

public instance {C : Type u} [SmallCategory C] (R : Cᵒᵖ ⥤ RingCat.{u}) :
    IsGrothendieckAbelian.{u} (PresheafOfModules.{u} R) where
  hasFilteredColimitsOfSize := ⟨fun _ ↦ ⟨fun _ ↦ inferInstance⟩⟩
  ab5OfSize := ⟨fun J _ _ ↦ ⟨⟨fun K _ _ ↦ ⟨fun {F} ↦
    have : PreservesLimit F (colim (J := J) ⋙ PresheafOfModules.toPresheaf R) :=
      preservesLimit_of_natIso _ (preservesColimitNatIso (toPresheaf R)).symm
    preservesLimit_of_reflects_of_preserves _ (PresheafOfModules.toPresheaf R)⟩⟩⟩⟩

end PresheafOfModules
