# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListOfFn.Variant70e3a59a10c20a4c41b73bc63641036344b318f45d08012536df4804954951f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bde742b09b594f735acf9a6cbf1ab96a111395b` · SHA-256 `bd101461860272ff7aa7dd218321a84a2154be587e80469640e793bdd77d7b25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemProdListOfFn.Variantf9546e36cd21b62a1b01d5eefb5922977ffc4c95ca2c56dd6beac2736f869073","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9546e36cd21b62a1b01d5eefb5922977ffc4c95ca2c56dd6beac2736f869073","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemProdListOfFn.Variantf9546e36cd21b62a1b01d5eefb5922977ffc4c95ca2c56dd6beac2736f869073","mathematical_subject":"Computation.DataStructures","original_sha256":"f9546e36cd21b62a1b01d5eefb5922977ffc4c95ca2c56dd6beac2736f869073","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Pointwise/Set/ListOfFn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.List.OfFn
import Mathlib.Algebra.BigOperators.Group.List.Defs
import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations with lists of sets

This file proves some lemmas about pointwise algebraic operations with lists of sets.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemProdListOfFn.Variantf9546e36cd21b62a1b01d5eefb5922977ffc4c95ca2c56dd6beac2736f869073

namespace Set

variable {α : Type*} [Monoid α] {s : Set α} {n : ℕ}

open Pointwise

@[to_additive]
theorem mem_prod_list_ofFn {a : α} {s : Fin n → Set α} :
    a ∈ (List.ofFn s).prod ↔ ∃ f : ∀ i : Fin n, s i, (List.ofFn fun i ↦ (f i : α)).prod = a := by
  induction' n with n ih generalizing a
  · simp_rw [List.ofFn_zero, List.prod_nil, Fin.exists_fin_zero_pi, eq_comm, Set.mem_one]
  · simp_rw [List.ofFn_succ, List.prod_cons, Fin.exists_fin_succ_pi, Fin.cons_zero, Fin.cons_succ,
      mem_mul, @ih, exists_exists_eq_and, SetCoe.exists, exists_prop]

@[to_additive]
theorem mem_list_prod {l : List (Set α)} {a : α} :
    a ∈ l.prod ↔
      ∃ l' : List (Σs : Set α, ↥s),
        List.prod (l'.map fun x ↦ (Sigma.snd x : α)) = a ∧ l'.map Sigma.fst = l := by
  induction' l using List.ofFnRec with n f
  simp only [mem_prod_list_ofFn, List.exists_iff_exists_tuple, List.map_ofFn, Function.comp,
    List.ofFn_inj', Sigma.mk.inj_iff, and_left_comm, exists_and_left, exists_eq_left, heq_eq_eq]
  constructor
  · rintro ⟨fi, rfl⟩
    exact ⟨fun i ↦ ⟨_, fi i⟩, rfl, rfl⟩
  · rintro ⟨fi, rfl, rfl⟩
    exact ⟨fun i ↦ _, rfl⟩

@[to_additive]
theorem mem_pow {a : α} {n : ℕ} :
    a ∈ s ^ n ↔ ∃ f : Fin n → s, (List.ofFn fun i ↦ (f i : α)).prod = a := by
  rw [← mem_prod_list_ofFn, List.ofFn_const, List.prod_replicate]

end Set
```
