-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedFinsetLe.Variant5137d503e5e6538c79825ca3c64f5d65254c7988aa3b723034a35330ffb57816","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5137d503e5e6538c79825ca3c64f5d65254c7988aa3b723034a35330ffb57816","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DirectedFinsetLe.Variant5137d503e5e6538c79825ca3c64f5d65254c7988aa3b723034a35330ffb57816","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5137d503e5e6538c79825ca3c64f5d65254c7988aa3b723034a35330ffb57816","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau
-/
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Multiset.ZeroCons
import Mathlib.Order.Directed

/-!
# Finsets of ordered types
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedFinsetLe.Variant5137d503e5e6538c79825ca3c64f5d65254c7988aa3b723034a35330ffb57816

universe u v w

variable {α : Type u}

theorem Directed.finset_le {r : α → α → Prop} [IsTrans α r] {ι} [hι : Nonempty ι] {f : ι → α}
    (D : Directed r f) (s : Finset ι) : ∃ z, ∀ i ∈ s, r (f i) (f z) :=
  show ∃ z, ∀ i ∈ s.1, r (f i) (f z) from
    Multiset.induction_on s.1 (let ⟨z⟩ := hι; ⟨z, fun _ ↦ by simp⟩)
      fun i _ ⟨j, H⟩ ↦
      let ⟨k, h₁, h₂⟩ := D i j
      ⟨k, fun _ h ↦ (Multiset.mem_cons.1 h).casesOn (fun h ↦ h.symm ▸ h₁)
        fun h ↦ _root_.trans (H _ h) h₂⟩

theorem Finset.exists_le [Nonempty α] [Preorder α] [IsDirected α (· ≤ ·)] (s : Finset α) :
    ∃ M, ∀ i ∈ s, i ≤ M :=
  directed_id.finset_le _
