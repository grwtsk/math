# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abcf5a2921176283ef917e197d31177db4d4e97d` · SHA-256 `93805b316460d62c884232260f8927af895dec3af19726b408a768696dada2ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SupBiUnion.Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SupBiUnion.Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Lattice/Union.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Data.Finset.Union

/-!
# Relating `Finset.biUnion` with lattice operations

This file shows `Finset.biUnion` could alternatively be defined in terms of `Finset.sup`.

## TODO

Remove `Finset.biUnion` in favour of `Finset.sup`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SupBiUnion.Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b

open Function Multiset OrderDual

variable {F α β γ ι κ : Type*}
variable {s s₁ s₂ : Finset β} {f g : β → α} {a : α}

namespace Finset

section Sup

variable [SemilatticeSup α] [OrderBot α]

@[simp]
theorem sup_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).sup f = s.sup fun x => (t x).sup f :=
  eq_of_forall_ge_iff fun c => by simp [@forall_swap _ β]

end Sup

section Inf

variable [SemilatticeInf α] [OrderTop α]

@[simp] theorem inf_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).inf f = s.inf fun x => (t x).inf f :=
  @sup_biUnion αᵒᵈ _ _ _ _ _ _ _ _

end Inf

section Sup'

variable [SemilatticeSup α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem sup'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).sup' (Hs.biUnion fun b _ => Ht b) f = s.sup' Hs (fun b => (t b).sup' (Ht b) f) :=
  eq_of_forall_ge_iff fun c => by simp [@forall_swap _ β]

end Sup'

section Inf'

variable [SemilatticeInf α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem inf'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).inf' (Hs.biUnion fun b _ => Ht b) f = s.inf' Hs (fun b => (t b).inf' (Ht b) f) :=
  sup'_biUnion (α := αᵒᵈ) _ Hs Ht

end Inf'

variable [DecidableEq α] {s : Finset ι} {f : ι → Finset α} {a : α}

theorem sup_eq_biUnion {α β} [DecidableEq β] (s : Finset α) (t : α → Finset β) :
    s.sup t = s.biUnion t := by
  ext
  rw [mem_sup, mem_biUnion]

end Finset
```
