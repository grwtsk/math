# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CardEmbedding.Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49d37d98385fc218c0414b265760519e1274bd2c` · SHA-256 `a0fd6fa51dd11d8eeea62bff4871d4c1978cd581b000024f11904bfebbb7b44e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CardEmbeddingEqOfUnique.Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CardEmbeddingEqOfUnique.Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/CardEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Set.Finite.Range
import Mathlib.Logic.Equiv.Embedding

/-!
# Number of embeddings

This file establishes the cardinality of `α ↪ β` in full generality.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CardEmbeddingEqOfUnique.Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c

local notation "|" x "|" => Finset.card x

local notation "‖" x "‖" => Fintype.card x

open Function

open Nat

namespace Fintype

theorem card_embedding_eq_of_unique {α β : Type*} [Unique α] [Fintype β] [Fintype (α ↪ β)] :
    ‖α ↪ β‖ = ‖β‖ :=
  card_congr Equiv.uniqueEmbeddingEquivResult

-- Establishes the cardinality of the type of all injections between two finite types.
-- Porting note: `induction α using Fintype.induction_empty_option` can't work with the `Fintype α`
-- instance so instead we make an ugly refine and `dsimp` a lot.
@[simp]
theorem card_embedding_eq {α β : Type*} [Fintype α] [Fintype β] [emb : Fintype (α ↪ β)] :
    ‖α ↪ β‖ = ‖β‖.descFactorial ‖α‖ := by
  rw [Subsingleton.elim emb Embedding.fintype]
  refine Fintype.induction_empty_option (P := fun t ↦ ‖t ↪ β‖ = ‖β‖.descFactorial ‖t‖)
        (fun α₁ α₂ h₂ e ih ↦ ?_) (?_) (fun γ h ih ↦ ?_) α <;> dsimp only at * <;> clear! α
  · letI := Fintype.ofEquiv _ e.symm
    rw [← card_congr (Equiv.embeddingCongr e (Equiv.refl β)), ih, card_congr e]
  · rw [card_pempty, Nat.descFactorial_zero, card_eq_one_iff]
    exact ⟨Embedding.ofIsEmpty, fun x ↦ DFunLike.ext _ _ isEmptyElim⟩
  · classical
    rw [card_option, Nat.descFactorial_succ, card_congr (Embedding.optionEmbeddingEquiv γ β),
        card_sigma, ← ih]
    simp only [Fintype.card_compl_set, Fintype.card_range, Finset.sum_const, Finset.card_univ,
      Nat.nsmul_eq_mul, mul_comm]

/-- The cardinality of embeddings from an infinite type to a finite type is zero.
This is a re-statement of the pigeonhole principle. -/
theorem card_embedding_eq_of_infinite {α β : Type*} [Infinite α] [Finite β] [Fintype (α ↪ β)] :
    ‖α ↪ β‖ = 0 :=
  card_eq_zero

end Fintype
```
