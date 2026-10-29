-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.JointlySurjective.Variant790078f945101bae71894eeeafc4fb6713787c1252d893fcffe9069030602da3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"790078f945101bae71894eeeafc4fb6713787c1252d893fcffe9069030602da3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.JointlySurjective.Variant790078f945101bae71894eeeafc4fb6713787c1252d893fcffe9069030602da3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"790078f945101bae71894eeeafc4fb6713787c1252d893fcffe9069030602da3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/FunctorToTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Types.Colimits

/-!
# Concrete description of (co)limits in functor categories

Some of the concrete descriptions of (co)limits in `Type v` extend to (co)limits in the functor
category `K ⥤ Type v`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.JointlySurjective.Variant790078f945101bae71894eeeafc4fb6713787c1252d893fcffe9069030602da3

public section

namespace CategoryTheory.FunctorToTypes

open CategoryTheory.Limits

universe w v₁ v₂ u₁ u₂

variable {J : Type u₁} [Category.{v₁} J] {K : Type u₂} [Category.{v₂} K]
variable (F : J ⥤ K ⥤ Type w)

set_option backward.defeqAttrib.useBackward true in
theorem jointly_surjective (k : K) {t : Cocone F} (h : IsColimit t) (x : t.pt.obj k)
    [∀ k, HasColimit (F.flip.obj k)] : ∃ j y, x = (t.ι.app j).app k y := by
  let hev := isColimitOfPreserves ((evaluation _ _).obj k) h
  obtain ⟨j, y, rfl⟩ := Types.jointly_surjective _ hev x
  exact ⟨j, y, by simp⟩

theorem jointly_surjective' [∀ k, HasColimit (F.flip.obj k)] (k : K) (x : (colimit F).obj k) :
    ∃ j y, x = (colimit.ι F j).app k y :=
  jointly_surjective _ _ (colimit.isColimit _) x

theorem colimit.map_ι_apply [HasColimit F] (j : J) {k k' : K} {f : k ⟶ k'} {x} :
    (colimit F).map f ((colimit.ι F j).app _ x) = (colimit.ι F j).app _ ((F.obj j).map f x) :=
  ConcreteCategory.congr_hom ((colimit.ι F j).naturality _).symm _

end CategoryTheory.FunctorToTypes
