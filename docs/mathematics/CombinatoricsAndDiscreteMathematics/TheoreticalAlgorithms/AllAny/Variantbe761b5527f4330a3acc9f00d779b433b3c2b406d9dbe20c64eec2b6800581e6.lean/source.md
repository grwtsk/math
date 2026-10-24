# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllAny.Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `919da15733ab1e800e038bfd0724ad55e820f6e1` · SHA-256 `35cf04a8f3f3e99976029c1e0b347dd9dca11b871396d864f65d0ef72ddf7838`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllIffForall.Variant4f919d3ef77f745f9c0eb23403bd926a52ebca16557adeca3890bcea0895ed1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f919d3ef77f745f9c0eb23403bd926a52ebca16557adeca3890bcea0895ed1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AllIffForall.Variant4f919d3ef77f745f9c0eb23403bd926a52ebca16557adeca3890bcea0895ed1a","mathematical_subject":"Computation.DataStructures","original_sha256":"4f919d3ef77f745f9c0eb23403bd926a52ebca16557adeca3890bcea0895ed1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Bool/AllAny.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllIffForall.Variant4f919d3ef77f745f9c0eb23403bd926a52ebca16557adeca3890bcea0895ed1a

#align_import data.bool.all_any from "leanprover-community/mathlib"@"5a3e819569b0f12cbec59d740a2613018e7b8eec"

/-!
# Boolean quantifiers

This proves a few properties about `List.all` and `List.any`, which are the `Bool` universal and
existential quantifiers. Their definitions are in core Lean.
-/


variable {α : Type*} {p : α → Prop} [DecidablePred p] {l : List α} {a : α}

namespace List

-- Porting note: in Std
#align list.all_nil List.all_nil

#align list.all_cons List.all_consₓ

theorem all_iff_forall {p : α → Bool} : all l p ↔ ∀ a ∈ l, p a := by
  induction' l with a l ih
  · exact iff_of_true rfl (forall_mem_nil _)
  simp only [all_cons, Bool.and_coe_iff, ih, forall_mem_cons]
#align list.all_iff_forall List.all_iff_forall

theorem all_iff_forall_prop : (all l fun a => p a) ↔ ∀ a ∈ l, p a := by
  simp only [all_iff_forall, Bool.of_decide_iff]
#align list.all_iff_forall_prop List.all_iff_forall_prop

-- Porting note: in Std
#align list.any_nil List.any_nil

#align list.any_cons List.any_consₓ

theorem any_iff_exists {p : α → Bool} : any l p ↔ ∃ a ∈ l, p a := by
  induction' l with a l ih
  · exact iff_of_false Bool.not_false' (not_exists_mem_nil _)
  simp only [any_cons, Bool.or_coe_iff, ih, exists_mem_cons_iff]
#align list.any_iff_exists List.any_iff_exists

theorem any_iff_exists_prop : (any l fun a => p a) ↔ ∃ a ∈ l, p a := by simp [any_iff_exists]
#align list.any_iff_exists_prop List.any_iff_exists_prop

theorem any_of_mem {p : α → Bool} (h₁ : a ∈ l) (h₂ : p a) : any l p :=
  any_iff_exists.2 ⟨_, h₁, h₂⟩
#align list.any_of_mem List.any_of_mem

end List
```
