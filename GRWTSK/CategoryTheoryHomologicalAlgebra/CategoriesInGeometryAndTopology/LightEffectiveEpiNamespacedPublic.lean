-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularEpi.Variantd4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RegularEpi.Variantd4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/Light/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jonas van der Schaaf. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jonas van der Schaaf, Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.RegularEpi
public import Mathlib.Condensed.Light.Epi

/-!

# The functor from light profinite sets to light condensed sets preserves effective epimorphisms
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularEpi.Variantd4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da

public section

open CategoryTheory CompHausLike

universe u

instance : lightProfiniteToLightCondSet.PreservesEpimorphisms where
  preserves f hf := by
    rw [LightCondSet.epi_iff_locallySurjective_on_lightProfinite]
    intro S g
    refine ⟨pullback f g, pullback.snd _ _, fun y ↦ ?_, pullback.fst _ _, pullback.condition _ _⟩
    rw [LightProfinite.epi_iff_surjective] at hf
    obtain ⟨x, hx⟩ := hf (g.hom y)
    exact ⟨⟨⟨x, y⟩, hx⟩, rfl⟩

instance : IsRegularEpiCategory LightCondSet.{u} :=
  inferInstanceAs <| IsRegularEpiCategory (Sheaf _ _)

example : lightProfiniteToLightCondSet.PreservesEffectiveEpis := inferInstance
