# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularTopology.Variantb206740877919f4c0732005af1106c1948fb68655b41113b98debfadc2425587

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `035ca2d2c2ff4d83bcfde7f1233a51d68860b87e` · SHA-256 `7ac26d6a83593e1ae5fa2bf9aa83fe453fa311a94fc516aa5d7683b66d5587ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MemSievesOfHasEffectiveEpi.Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MemSievesOfHasEffectiveEpi.Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Coherent/RegularTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.Coherent.RegularSheaves
/-!

# Description of the covering sieves of the regular topology

This file characterises the covering sieves of the regular topology.

## Main result

* `regularTopology.mem_sieves_iff_hasEffectiveEpi`: a sieve is a covering sieve for the
  regular topology if and only if it contains an effective epi.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MemSievesOfHasEffectiveEpi.Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca

public section

namespace CategoryTheory.regularTopology

variable {C : Type*} [Category* C] [Preregular C] {X : C}

/--
For a preregular category, any sieve that contains an `EffectiveEpi` is a covering sieve of the
regular topology.
Note: This is one direction of `mem_sieves_iff_hasEffectiveEpi`, but is needed for the proof.
-/
theorem mem_sieves_of_hasEffectiveEpi (S : Sieve X) :
    (∃ (Y : C) (π : Y ⟶ X), EffectiveEpi π ∧ S.arrows π) → (S ∈ (regularTopology C) X) := by
  rintro ⟨Y, π, h⟩
  have h_le : Sieve.generate (Presieve.ofArrows (fun () ↦ Y) (fun _ ↦ π)) ≤ S := by
    rw [Sieve.generate_le_iff (Presieve.ofArrows _ _) S]
    apply Presieve.le_of_factorsThru_sieve (Presieve.ofArrows _ _) S _
    intro W g f
    refine ⟨W, 𝟙 W, ?_⟩
    cases f
    exact ⟨π, ⟨h.2, Category.id_comp π⟩⟩
  apply Coverage.saturate_of_superset (regularCoverage C) h_le
  exact Coverage.Saturate.of X _ ⟨Y, π, rfl, h.1⟩

/-- Effective epis in a preregular category are stable under composition. -/
instance {Y Y' : C} (π : Y ⟶ X) [EffectiveEpi π]
    (π' : Y' ⟶ Y) [EffectiveEpi π'] : EffectiveEpi (π' ≫ π) := by
  rw [effectiveEpi_iff_effectiveEpiFamily, ← Sieve.effectiveEpimorphic_family]
  suffices h₂ : (Sieve.generate (Presieve.ofArrows _ _)) ∈ (regularTopology C) X by
    change Nonempty _
    rw [← Sieve.forallYonedaIsSheaf_iff_colimit]
    exact fun W => regularTopology.isSheaf_yoneda_obj W _ h₂
  apply Coverage.Saturate.transitive X (Sieve.generate (Presieve.ofArrows (fun () ↦ Y)
      (fun () ↦ π)))
  · apply Coverage.Saturate.of
    use Y, π
  · intro V f ⟨Y₁, h, g, ⟨hY, hf⟩⟩
    rw [← hf, Sieve.pullback_comp]
    apply (regularTopology C).pullback_stable'
    apply regularTopology.mem_sieves_of_hasEffectiveEpi
    cases hY
    exact ⟨Y', π', inferInstance, Y', (𝟙 _), π' ≫ π, Presieve.ofArrows.mk (), (by simp)⟩

/-- A sieve is a cover for the regular topology if and only if it contains an `EffectiveEpi`. -/
theorem mem_sieves_iff_hasEffectiveEpi (S : Sieve X) :
    (S ∈ (regularTopology C) X) ↔
    ∃ (Y : C) (π : Y ⟶ X), EffectiveEpi π ∧ (S.arrows π) := by
  constructor
  · intro h
    induction h with
    | of Y T hS =>
      rcases hS with ⟨Y', π, h'⟩
      refine ⟨Y', π, h'.2, ?_⟩
      rcases h' with ⟨rfl, _⟩
      exact ⟨Y', 𝟙 Y', π, Presieve.ofArrows.mk (), (by simp)⟩
    | top Y => exact ⟨Y, (𝟙 Y), inferInstance, by simp only [Sieve.top_apply]⟩
    | transitive Y R S _ _ a b =>
      rcases a with ⟨Y₁, π, ⟨h₁, h₂⟩⟩
      choose Y' π' _ H using b h₂
      exact ⟨Y', π' ≫ π, inferInstance, (by simpa using H)⟩
  · exact regularTopology.mem_sieves_of_hasEffectiveEpi S

end CategoryTheory.regularTopology
```
