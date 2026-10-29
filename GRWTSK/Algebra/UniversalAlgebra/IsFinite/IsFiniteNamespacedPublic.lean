-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsFinite.Variant0fcb1fb4ade4ff5e7ee6810fd28b1b10891ef7dcd5d1407b736fda7de5942d7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fcb1fb4ade4ff5e7ee6810fd28b1b10891ef7dcd5d1407b736fda7de5942d7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsFinite.Variant0fcb1fb4ade4ff5e7ee6810fd28b1b10891ef7dcd5d1407b736fda7de5942d7f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0fcb1fb4ade4ff5e7ee6810fd28b1b10891ef7dcd5d1407b736fda7de5942d7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/IsFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.Grp.Abelian
public import Mathlib.Algebra.Category.Grp.EpiMono
public import Mathlib.Algebra.Category.Grp.Zero
public import Mathlib.Algebra.Homology.ShortComplex.Ab
public import Mathlib.Basic.Finite.Prod
public import Mathlib.CategoryTheory.Abelian.SerreClass.Basic

/-!
# The Serre class of finite abelian groups

In this file, we define `isFinite : ObjectProperty AddCommGrpCat` and show
that it is a Serre class.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsFinite.Variant0fcb1fb4ade4ff5e7ee6810fd28b1b10891ef7dcd5d1407b736fda7de5942d7f

@[expose] public section

universe u

open CategoryTheory Limits ZeroObject

namespace AddCommGrpCat

/-- The Serre class of finite abelian groups
in the category of abelian groups. -/
def isFinite : ObjectProperty AddCommGrpCat.{u} :=
  fun M ↦ Finite M

@[simp]
lemma prop_isFinite_iff (M : AddCommGrpCat.{u}) : isFinite M ↔ Finite M := Iff.rfl

instance : isFinite.{u}.IsSerreClass where
  exists_zero := ⟨↧PUnit, isZero_of_subsingleton _,
    by rw [prop_isFinite_iff]; infer_instance⟩
  prop_of_mono {M N} f hf hN := by
    rw [AddCommGrpCat.mono_iff_injective] at hf
    simp only [prop_isFinite_iff] at hN ⊢
    exact Finite.of_injective _ hf
  prop_of_epi {M N} f hf hM := by
    rw [AddCommGrpCat.epi_iff_surjective] at hf
    simp only [prop_isFinite_iff] at hM ⊢
    exact Finite.of_surjective _ hf
  prop_X₂_of_shortExact {S} hS h₁ h₃ := by
    simp only [prop_isFinite_iff] at h₁ h₃ ⊢
    have hg := hS.epi_g
    rw [AddCommGrpCat.epi_iff_surjective] at hg
    obtain ⟨s, hs⟩ := hg.hasRightInverse
    have hφ : Function.Surjective (fun (x₁, x₃) ↦ S.f x₁ + s x₃) := fun x₂ ↦ by
      obtain ⟨x₁, hx₁⟩ := (ShortComplex.ab_exact_iff S).1 hS.exact (x₂ - s (S.g x₂))
        (by simp [hs (S.g x₂)])
      exact ⟨⟨x₁, S.g x₂⟩, by simp [hx₁]⟩
    exact Finite.of_surjective _ hφ

end AddCommGrpCat
