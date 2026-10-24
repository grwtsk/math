# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sections.Variant97c486958e8b4740787950e1dfd766390a3f6e672a5cf4c17cf583f8ea5217e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c486a4d956be69287dba87d174f6c46af44606ed` · SHA-256 `7fca91e863550e32aa7dc651b8e0b15f3cb940f273a987313c9744e036e1917a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSections.Variantd21b51604855f4b2e9ed68275e6d8c72153d3bbdaef53fa5901267bd80d0fd72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d21b51604855f4b2e9ed68275e6d8c72153d3bbdaef53fa5901267bd80d0fd72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemSections.Variantd21b51604855f4b2e9ed68275e6d8c72153d3bbdaef53fa5901267bd80d0fd72","mathematical_subject":"Computation.DataStructures","original_sha256":"d21b51604855f4b2e9ed68275e6d8c72153d3bbdaef53fa5901267bd80d0fd72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Sections.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.List.Forall2
/-!
# List sections

This file proves some stuff about `List.sections` (definition in `Data.List.Defs`). A section of a
list of lists `[l₁, ..., lₙ]` is a list whose `i`-th element comes from the `i`-th list.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSections.Variantd21b51604855f4b2e9ed68275e6d8c72153d3bbdaef53fa5901267bd80d0fd72

open Nat Function

namespace List

variable {α β : Type*}

theorem mem_sections {L : List (List α)} {f} : f ∈ sections L ↔ Forall₂ (· ∈ ·) f L := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · induction L generalizing f
    · cases mem_singleton.1 h
      exact Forall₂.nil
    simp only [sections, bind_eq_flatMap, mem_flatMap, mem_map] at h
    rcases h with ⟨_, _, _, _, rfl⟩
    simp only [*, forall₂_cons, true_and]
  · induction h with
    | nil => simp only [sections, mem_singleton]
    | @cons a l f L al fL fs =>
      simp only [sections, bind_eq_flatMap, mem_flatMap, mem_map]
      exact ⟨f, fs, a, al, rfl⟩

theorem mem_sections_length {L : List (List α)} {f} (h : f ∈ sections L) : length f = length L :=
  (mem_sections.1 h).length_eq

open scoped Relator in
theorem rel_sections {r : α → β → Prop} :
    (Forall₂ (Forall₂ r) ⇒ Forall₂ (Forall₂ r)) sections sections
  | _, _, Forall₂.nil => Forall₂.cons Forall₂.nil Forall₂.nil
  | _, _, Forall₂.cons h₀ h₁ =>
    rel_flatMap (rel_sections h₁) fun _ _ hl => rel_map (fun _ _ ha => Forall₂.cons ha hl) h₀

end List
```
