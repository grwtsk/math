-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsProjectiveIffProjective.Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsProjectiveIffProjective.Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
module

public import Mathlib.Algebra.Category.ModuleCat.EpiMono
public import Mathlib.Algebra.Group.Shrink
public import Mathlib.Algebra.Module.Projective
public import Mathlib.CategoryTheory.Preadditive.Projective.Basic

/-!
# The category of `R`-modules has enough projectives.
-/


namespace GRWTSK.Algebra.LinearAlgebra.IsProjectiveIffProjective.Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091

public section

universe v u w

open CategoryTheory Module ModuleCat

variable {R : Type u} [Ring R] (P : ModuleCat.{v} R)

instance ModuleCat.projective_of_categoryTheory_projective [Module.Projective R P] :
    CategoryTheory.Projective P := by
  refine ⟨fun E X epi => ?_⟩
  obtain ⟨f, h⟩ := Module.projective_lifting_property X.hom E.hom
    ((ModuleCat.epi_iff_surjective _).mp epi)
  exact ⟨ofHom f, hom_ext h⟩

instance ModuleCat.projective_of_module_projective [Small.{v} R] [Projective P] :
    Module.Projective R P := by
  refine Module.Projective.of_lifting_property ?_
  intro _ _ _ _ _ _ f g s
  have : Epi (↟f) := (ModuleCat.epi_iff_surjective (↟f)).mpr s
  exact ⟨(Projective.factorThru (↟g) (↟f)).hom,
    ModuleCat.hom_ext_iff.mp <| Projective.factorThru_comp (↟g) (↟f)⟩

/-- The categorical notion of projective object agrees with the explicit module-theoretic notion. -/
theorem IsProjective.iff_projective [Small.{v} R] (P : Type v) [AddCommGroup P] [Module R P] :
    Module.Projective R P ↔ Projective (of R P) :=
  ⟨fun _ => (of R P).projective_of_categoryTheory_projective,
    fun _ => (of R P).projective_of_module_projective⟩

namespace ModuleCat

variable {M : ModuleCat.{v} R}

-- We transport the corresponding result from `Module.Projective`.
/-- Modules that have a basis are projective. -/
theorem projective_of_free {ι : Type w} (b : Basis ι R M) : Projective M :=
  have : Module.Projective R M := Module.Projective.of_basis b
  M.projective_of_categoryTheory_projective

/-- The category of modules has enough projectives, since every module is a quotient of a free
  module. -/
instance enoughProjectives [Small.{v} R] : EnoughProjectives (ModuleCat.{v} R) where
  presentation M :=
    let e : Basis M R (M →₀ Shrink.{v} R) := ⟨Finsupp.mapRange.linearEquiv (Shrink.linearEquiv R R)⟩
    ⟨{p := ↧(M →₀ Shrink.{v} R)
      projective := projective_of_free e
      f := ofHom <| e.constr ℕ _root_.id
      epi := by
        rw [epi_iff_range_eq_top, LinearMap.range_eq_top]
        refine fun m ↦ ⟨Finsupp.single m 1, ?_⟩
        simp [e, Basis.constr_apply] }⟩

end ModuleCat
