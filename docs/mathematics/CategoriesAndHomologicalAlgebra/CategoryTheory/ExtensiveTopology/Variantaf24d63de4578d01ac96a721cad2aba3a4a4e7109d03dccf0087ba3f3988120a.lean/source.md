# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveTopology.Variantaf24d63de4578d01ac96a721cad2aba3a4a4e7109d03dccf0087ba3f3988120a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0715efb81ab0ea98e87e84ca37de655cc8abb20` · SHA-256 `775676e228bc5564bb69c4eda12d9ad00c957ee9b4855826eb48390f3efcb553`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveTopologyMemSievesIffContainsColimitCofan.Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExtensiveTopologyMemSievesIffContainsColimitCofan.Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Coherent/ExtensiveTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Basic.Finite.Sigma
public import Mathlib.CategoryTheory.Sites.Coherent.Basic

/-!
# Description of the covering sieves of the extensive topology

This file characterises the covering sieves of the extensive topology.

## Main result

* `extensiveTopology.mem_sieves_iff_contains_colimit_cofan`: a sieve is a covering sieve for the
  extensive topology if and only if it contains a finite family of morphisms with fixed target
  exhibiting the target as a coproduct of the sources.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveTopologyMemSievesIffContainsColimitCofan.Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346

public section

open CategoryTheory Limits

variable {C : Type*} [Category* C] [FinitaryPreExtensive C]

namespace CategoryTheory

lemma extensiveTopology.mem_sieves_iff_contains_colimit_cofan {X : C} (S : Sieve X) :
    S ∈ (extensiveTopology C) X ↔
      (∃ (α : Type) (_ : Finite α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        Nonempty (IsColimit (Cofan.mk X π)) ∧ (∀ a : α, (S.arrows) (π a))) := by
  constructor
  · intro h
    induction h with
    | of X S hS =>
      obtain ⟨α, _, Y, π, h, h'⟩ := hS
      refine ⟨α, inferInstance, Y, π, ?_, fun a ↦ ?_⟩
      · have : IsIso (Sigma.desc (Cofan.mk X π).inj) := by simpa using! h'
        exact ⟨Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X π)⟩
      · obtain ⟨rfl, _⟩ := h
        exact ⟨Y a, 𝟙 Y a, π a, Presieve.ofArrows.mk a, by simp⟩
    | top X =>
      refine ⟨Unit, inferInstance, fun _ => X, fun _ => (𝟙 X), ⟨?_⟩, by simp⟩
      have : IsIso (Sigma.desc (Cofan.mk X fun (_ : Unit) ↦ 𝟙 X).inj) := by
        have : IsIso (coproductUniqueIso (fun () => X)).hom := inferInstance
        exact this
      exact Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X _)
    | transitive X R S _ _ a b =>
      obtain ⟨α, w, Y₁, π, h, h'⟩ := a
      choose β _ Y_n π_n H using fun a => b (h' a)
      exact ⟨(Σ a, β a), inferInstance, fun ⟨a,b⟩ => Y_n a b, fun ⟨a, b⟩ => (π_n a b) ≫ (π a),
        ⟨Limits.Cofan.isColimitTrans _ h.some _ (fun a ↦ (H a).1.some)⟩,
        fun c => (H c.fst).2 c.snd⟩
  · intro ⟨α, _, Y, π, h, h'⟩
    apply (extensiveCoverage C).mem_toGrothendieck_sieves_of_superset (R := Presieve.ofArrows Y π)
    · exact fun _ _ hh ↦ by cases hh; exact h' _
    · refine ⟨α, inferInstance, Y, π, rfl, ?_⟩
      rw [← show _ ↔ IsIso (Sigma.desc π) from
        Limits.Cofan.nonempty_isColimit_iff_isIso_sigmaDesc (c := Cofan.mk X π)]
      exact h

end CategoryTheory
```
