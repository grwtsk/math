# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34db52aeb4ad237cd4fc6c9790ccf627d2e9dfb3` · SHA-256 `bccf6a07ef94d911f65d4937e21e1b5940d8dd27a6be010a18ee880a23d4dad9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeCardFinset.Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FintypeCardFinset.Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Powerset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Fintype.EquivFin

/-!
# fintype instance for `Set α`, when `α` is a fintype
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeCardFinset.Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19

variable {α : Type*}

open Finset

instance Finset.fintype [Fintype α] : Fintype (Finset α) :=
  ⟨univ.powerset, fun _ => Finset.mem_powerset.2 (Finset.subset_univ _)⟩

@[simp]
theorem Fintype.card_finset [Fintype α] : Fintype.card (Finset α) = 2 ^ Fintype.card α :=
  Finset.card_powerset Finset.univ

namespace Finset
variable [Fintype α] {s : Finset α} {k : ℕ}

@[simp] lemma powerset_univ : (univ : Finset α).powerset = univ :=
  coe_injective <| by simp [-coe_eq_univ]

lemma filter_subset_univ [DecidableEq α] (s : Finset α) :
    ({t | t ⊆ s} : Finset _) = powerset s := by ext; simp

@[simp] lemma powerset_eq_univ : s.powerset = univ ↔ s = univ := by
  rw [← Finset.powerset_univ, powerset_inj]

lemma mem_powersetCard_univ : s ∈ powersetCard k (univ : Finset α) ↔ #s = k :=
  mem_powersetCard.trans <| and_iff_right <| subset_univ _

variable (α)

@[simp] lemma univ_filter_card_eq (k : ℕ) :
   ({s | #s = k} : Finset (Finset α)) = univ.powersetCard k := by ext; simp

end Finset

@[simp]
theorem Fintype.card_finset_len [Fintype α] (k : ℕ) :
    Fintype.card { s : Finset α // #s = k } = Nat.choose (Fintype.card α) k := by
  simp [Fintype.subtype_card, Finset.card_univ]

instance Set.fintype [Fintype α] : Fintype (Set α) :=
  ⟨(@Finset.univ (Finset α) _).map coeEmb.1, fun s => by
    classical
    refine mem_map.2 ⟨({a | a ∈ s} : Finset _), Finset.mem_univ _, (coe_filter _ _).trans ?_⟩
    simp⟩

-- Not to be confused with `Set.Finite`, the predicate
instance Set.instFinite [Finite α] : Finite (Set α) := by
  cases nonempty_fintype α
  infer_instance

@[simp]
theorem Fintype.card_set [Fintype α] : Fintype.card (Set α) = 2 ^ Fintype.card α :=
  (Finset.card_map _).trans (Finset.card_powerset _)
```
