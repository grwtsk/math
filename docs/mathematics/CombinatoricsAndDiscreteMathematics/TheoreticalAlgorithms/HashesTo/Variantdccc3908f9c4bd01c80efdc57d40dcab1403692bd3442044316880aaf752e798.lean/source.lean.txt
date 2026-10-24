-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashesToNil.Variant83bdfc0cbeebed42e8d67149517dc5562da51a7e883724b18d2453fbe0e6ee4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83bdfc0cbeebed42e8d67149517dc5562da51a7e883724b18d2453fbe0e6ee4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HashesToNil.Variant83bdfc0cbeebed42e8d67149517dc5562da51a7e883724b18d2453fbe0e6ee4f","mathematical_subject":"Computation.DataStructures","original_sha256":"83bdfc0cbeebed42e8d67149517dc5562da51a7e883724b18d2453fbe0e6ee4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/Internal/HashesTo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.LawfulHashable
public import Std.Data.Internal.List.Associative
public import Std.Data.DHashMap.Internal.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashesToNil.Variant83bdfc0cbeebed42e8d67149517dc5562da51a7e883724b18d2453fbe0e6ee4f

public section

/-!
This is an internal implementation file of the hash map. Users of the hash map should not rely on
the contents of this file.

File contents: lemmas about `HashesTo` (defined in `Internal.Defs`)
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v

namespace Std.DHashMap.Internal.List
open Std.Internal.List

variable {α : Type u} {β : α → Type v}

@[simp]
theorem hashesTo_nil [BEq α] [Hashable α] {i : Nat} {size : Nat} :
    HashesTo ([] : List ((a : α) × β a)) i size where
  hash_self := by simp

theorem hashesTo_cons [BEq α] [Hashable α] {i : Nat} {size : Nat} {l : List ((a : α) × β a)} {k : α}
    {v : β k} (h : (h' : 0 < size) → (mkIdx size h' (hash k)).1.toNat = i) :
    HashesTo l i size → HashesTo (⟨k, v⟩ :: l) i size := by
  refine fun ⟨ih⟩ => ⟨fun h' k' hk => ?_⟩
  simp only [List.mem_cons] at hk
  rcases hk with (rfl|hk)
  · exact h h'
  · exact ih h' _ hk

theorem HashesTo.containsKey_eq_false [BEq α] [Hashable α] [LawfulHashable α]
    {l : List ((a : α) × β a)} {i : Nat} {size : Nat} (hs : 0 < size) (h : HashesTo l i size)
    (k : α) : (mkIdx size hs (hash k)).1.toNat ≠ i → containsKey k l = false := by
  rw [← Decidable.not_imp_not]
  simp only [Bool.not_eq_false, containsKey_eq_true_iff_exists_mem]
  rintro ⟨⟨k', v⟩, hmem, heq⟩
  simp [← h.hash_self hs _ hmem, hash_eq heq]

end Std.DHashMap.Internal.List
