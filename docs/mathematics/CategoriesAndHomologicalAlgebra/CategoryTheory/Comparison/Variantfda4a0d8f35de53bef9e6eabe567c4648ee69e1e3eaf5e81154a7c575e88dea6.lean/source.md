# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variantfda4a0d8f35de53bef9e6eabe567c4648ee69e1e3eaf5e81154a7c575e88dea6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4ec2ffe17a9d79767fe0f705673ef38fab22484` · SHA-256 `79fc89f1adac5c71f92af7739f1de88f75495926208e8c9cb36e8499960f1171`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveRegularGenerateCoherent.Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExtensiveRegularGenerateCoherent.Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Coherent/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Sites.Coherent.Basic
import Mathlib.CategoryTheory.EffectiveEpi.Comp
import Mathlib.CategoryTheory.EffectiveEpi.Extensive
/-!

# Connections between the regular, extensive and coherent topologies

This file compares the regular, extensive and coherent topologies.

## Main results

* `instance : Precoherent C` given `Preregular C` and `FinitaryPreExtensive C`.

* `extensive_union_regular_generates_coherent`: the union of the regular and extensive coverages
  generates the coherent topology on `C` if `C` is precoherent, preextensive and preregular.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveRegularGenerateCoherent.Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8

namespace CategoryTheory

open Limits GrothendieckTopology Sieve

variable (C : Type*) [Category C]

instance [Precoherent C] [HasFiniteCoproducts C] : Preregular C where
  exists_fac {X Y Z} f g _ := by
    have hp := Precoherent.pullback f PUnit (fun () ↦ Z) (fun () ↦ g)
    simp only [exists_const] at hp
    rw [← effectiveEpi_iff_effectiveEpiFamily g] at hp
    obtain ⟨β, _, X₂, π₂, h, ι, hι⟩ := hp inferInstance
    refine ⟨∐ X₂, Sigma.desc π₂, inferInstance, Sigma.desc ι, ?_⟩
    ext b
    simpa using hι b

instance [FinitaryPreExtensive C] [Preregular C] : Precoherent C where
  pullback {B₁ B₂} f α _ X₁ π₁ h := by
    refine ⟨α, inferInstance, ?_⟩
    obtain ⟨Y, g, _, g', hg⟩ := Preregular.exists_fac f (Sigma.desc π₁)
    let X₂ := fun a ↦ pullback g' (Sigma.ι X₁ a)
    let π₂ := fun a ↦ pullback.fst g' (Sigma.ι X₁ a) ≫ g
    let π' := fun a ↦ pullback.fst g' (Sigma.ι X₁ a)
    have _ := FinitaryPreExtensive.sigma_desc_iso (fun a ↦ Sigma.ι X₁ a) g' inferInstance
    refine ⟨X₂, π₂, ?_, ?_⟩
    · have : (Sigma.desc π' ≫ g) = Sigma.desc π₂ := by ext; simp [π₂, π']
      rw [← effectiveEpi_desc_iff_effectiveEpiFamily, ← this]
      infer_instance
    · refine ⟨id, fun b ↦ pullback.snd _ _, fun b ↦ ?_⟩
      simp only [X₂, π₂, id_eq, Category.assoc, ← hg]
      rw [← Category.assoc, pullback.condition]
      simp

/-- The union of the extensive and regular coverages generates the coherent topology on `C`. -/
theorem extensive_regular_generate_coherent [Preregular C] [FinitaryPreExtensive C] :
    ((extensiveCoverage C) ⊔ (regularCoverage C)).toGrothendieck =
    (coherentTopology C) := by
  ext B S
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · induction h with
    | of Y T hT =>
      apply Coverage.Saturate.of
      simp only [Coverage.sup_covering, Set.mem_union] at hT
      exact Or.elim hT
        (fun ⟨α, x, X, π, ⟨h, _⟩⟩ ↦ ⟨α, x, X, π, ⟨h, inferInstance⟩⟩)
        (fun ⟨Z, f, ⟨h, _⟩⟩ ↦ ⟨Unit, inferInstance, fun _ ↦ Z, fun _ ↦ f, ⟨h, inferInstance⟩⟩)
    | top => apply Coverage.Saturate.top
    | transitive Y T => apply Coverage.Saturate.transitive Y T<;> [assumption; assumption]
  · induction h with
    | of Y T hT =>
      obtain ⟨I, _, X, f, rfl, hT⟩ := hT
      apply Coverage.Saturate.transitive Y (generate (Presieve.ofArrows
        (fun (_ : Unit) ↦ (∐ fun (i : I) => X i)) (fun (_ : Unit) ↦ Sigma.desc f)))
      · apply Coverage.Saturate.of
        simp only [Coverage.sup_covering, extensiveCoverage, regularCoverage, Set.mem_union,
          Set.mem_setOf_eq]
        exact Or.inr ⟨_, Sigma.desc f, ⟨rfl, inferInstance⟩⟩
      · rintro R g ⟨W, ψ, σ, ⟨⟩, rfl⟩
        change _ ∈ ((extensiveCoverage C) ⊔ (regularCoverage C)).toGrothendieck _ R
        rw [Sieve.pullback_comp]
        apply pullback_stable
        have : generate (Presieve.ofArrows X fun (i : I) ↦ Sigma.ι X i) ≤
            (generate (Presieve.ofArrows X f)).pullback (Sigma.desc f) := by
          rintro Q q ⟨E, e, r, ⟨hq, rfl⟩⟩
          exact ⟨E, e, r ≫ (Sigma.desc f), by cases hq; simpa using Presieve.ofArrows.mk _, by simp⟩
        apply Coverage.saturate_of_superset _ this
        apply Coverage.Saturate.of
        refine Or.inl ⟨I, inferInstance, _, _, ⟨rfl, ?_⟩⟩
        convert IsIso.id _
        aesop
    | top => apply Coverage.Saturate.top
    | transitive Y T => apply Coverage.Saturate.transitive Y T<;> [assumption; assumption]

end CategoryTheory
```
