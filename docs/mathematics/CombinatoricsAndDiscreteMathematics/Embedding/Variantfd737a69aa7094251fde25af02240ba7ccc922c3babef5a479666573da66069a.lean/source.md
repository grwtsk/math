# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Embedding.Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f74a4faf64ded278de615fad37eda18bdf0448c` · SHA-256 `b95056c775f6f337966abbcae61ecb10324579879bc4dc80ba077ad781cdb3a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsEmbeddingDisjointRangeOfAddLeENatCard.Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExistsEmbeddingDisjointRangeOfAddLeENatCard.Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/

import Mathlib.Data.ENat.Lattice
import Mathlib.Data.Fin.Tuple.Embedding
import Mathlib.Data.Finite.Card
import Mathlib.Data.Set.Card

/-! # Existence of embeddings from finite types

Let `s : Set α` be a finite set.

* `Fin.Embedding.exists_embedding_disjoint_range_of_add_le_ENat_card`
  If `s.ncard + n ≤ ENat.card α`,
  then there exists an embedding `Fin n ↪ α`
  whose range is disjoint from `s`.

* `Fin.Embedding.exists_embedding_disjoint_range_of_add_le_Nat_card`
  If `α` is finite and `s.ncard + n ≤ Nat.card α`,
  then there exists an embedding `Fin n ↪ α`
  whose range is disjoint from `s`.

* `Fin.Embedding.restrictSurjective_of_add_le_ENatCard`
  If `m + n ≤ ENat.card α`, then the restriction map
  from `Fin (m + n) ↪ α` to `Fin m ↪ α` is surjective.

* `Fin.Embedding.restrictSurjective_of_add_le_natCard`
  If `α` is finite and `m + n ≤ Nat.card α`, then the restriction
  map from `Fin (m + n) ↪ α` to `Fin m ↪ α` is surjective.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsEmbeddingDisjointRangeOfAddLeENatCard.Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa

open Set Fin Function Function.Embedding

namespace Fin.Embedding

variable {α : Type*} {m n : ℕ} {s : Set α}

theorem exists_embedding_disjoint_range_of_add_le_ENat_card
    [Finite s] (hs : s.ncard + n ≤ ENat.card α) :
    ∃ y : Fin n ↪ α, Disjoint s (range y) := by
  rsuffices ⟨y⟩ : Nonempty (Fin n ↪ (sᶜ : Set α))
  · use y.trans (subtype _)
    rw [Set.disjoint_right]
    rintro _ ⟨i, rfl⟩
    simpa only [← mem_compl_iff] using Subtype.coe_prop (y i)
  rcases finite_or_infinite α with hα | hα
  · let _ : Fintype α := Fintype.ofFinite α
    classical
    apply nonempty_of_card_le
    rwa [Fintype.card_fin, ← add_le_add_iff_left s.ncard,
      ← Nat.card_eq_fintype_card, Nat.card_coe_set_eq,
        ncard_add_ncard_compl, ← ENat.coe_le_coe,
        ← ENat.card_eq_coe_natCard, ENat.coe_add]
  · exact ⟨valEmbedding.trans s.toFinite.infinite_compl.to_subtype.natEmbedding⟩

theorem exists_embedding_disjoint_range_of_add_le_Nat_card
    [Finite α] (hs : s.ncard + n ≤ Nat.card α) :
    ∃ y : Fin n ↪ α, Disjoint s (range y) := by
  apply exists_embedding_disjoint_range_of_add_le_ENat_card
  rwa [← ENat.coe_add, ENat.card_eq_coe_natCard, ENat.coe_le_coe]

theorem restrictSurjective_of_add_le_ENatCard (hn : m + n ≤ ENat.card α) :
    Surjective (fun (x : Fin (m + n) ↪ α) ↦ (Fin.castAddEmb n).trans x) := by
  intro x
  obtain ⟨y, hxy⟩ :=
    exists_embedding_disjoint_range_of_add_le_ENat_card (s := range x)
      (by simpa [← Nat.card_coe_set_eq, Nat.card_range_of_injective x.injective])
  use append hxy
  ext i
  simp [trans_apply, coe_castAddEmb, append]

theorem restrictSurjective_of_add_le_natCard [Finite α] (hn : m + n ≤ Nat.card α) :
    Surjective (fun x : Fin (m + n) ↪ α ↦ (castAddEmb n).trans x) := by
  apply restrictSurjective_of_add_le_ENatCard
  rwa [← ENat.coe_add, ENat.card_eq_coe_natCard, ENat.coe_le_coe]

end Fin.Embedding
```
