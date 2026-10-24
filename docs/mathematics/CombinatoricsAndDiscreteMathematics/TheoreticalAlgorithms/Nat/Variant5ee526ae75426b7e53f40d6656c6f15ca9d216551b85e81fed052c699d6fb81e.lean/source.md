# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cb6088ce98c40197b2a5ccc00a1ae28e2177bcd` · SHA-256 `c8a7b1c422746a409a97cbc0cb84c66fb03ea6c9350d06a30a68580fb8875d69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SumPosIffExistsPosNat.Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SumPosIffExistsPosNat.Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0","mathematical_subject":"Computation.DataStructures","original_sha256":"458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Sebastian Graf, Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Array.Nat
public import Init.BinderPredicates
import Init.Data.Vector.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SumPosIffExistsPosNat.Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

protected theorem sum_pos_iff_exists_pos_nat {xs : Vector Nat n} : 0 < xs.sum ↔ ∃ x ∈ xs, 0 < x := by
  simp [← sum_toArray, Array.sum_pos_iff_exists_pos_nat]

protected theorem sum_eq_zero_iff_forall_eq_nat {xs : Vector Nat n} :
    xs.sum = 0 ↔ ∀ x ∈ xs, x = 0 := by
  simp [← sum_toArray, Array.sum_eq_zero_iff_forall_eq_nat]

@[simp] theorem sum_replicate_nat {n : Nat} {a : Nat} : (replicate n a).sum = n * a := by
  simp [← sum_toArray, Array.sum_replicate_nat]

theorem sum_append_nat {as₁ : Vector Nat n} {as₂ : Vector Nat m} :
    (as₁ ++ as₂).sum = as₁.sum + as₂.sum := by
  simp [← sum_toArray]

theorem sum_reverse_nat (xs : Vector Nat n) : xs.reverse.sum = xs.sum := by
  simp [sum_reverse]

theorem sum_eq_foldl_nat {xs : Vector Nat n} : xs.sum = xs.foldl (b := 0) (· + ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.add_comm, ← sum_eq_foldr, sum_reverse_nat]

protected theorem prod_pos_iff_forall_pos_nat {xs : Vector Nat n} : 0 < xs.prod ↔ ∀ x ∈ xs, 0 < x := by
  simp [← prod_toArray, Array.prod_pos_iff_forall_pos_nat]

protected theorem prod_eq_zero_iff_exists_zero_nat {xs : Vector Nat n} :
    xs.prod = 0 ↔ ∃ x ∈ xs, x = 0 := by
  simp [← prod_toArray, Array.prod_eq_zero_iff_exists_zero_nat]

@[simp] theorem prod_replicate_nat {n : Nat} {a : Nat} : (replicate n a).prod = a ^ n := by
  simp [← prod_toArray, Array.prod_replicate_nat]

theorem prod_append_nat {as₁ : Vector Nat n} {as₂ : Vector Nat m} :
    (as₁ ++ as₂).prod = as₁.prod * as₂.prod := by
  simp [← prod_toArray]

theorem prod_reverse_nat (xs : Vector Nat n) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_nat {xs : Vector Nat n} : xs.prod = xs.foldl (b := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.mul_comm, ← prod_eq_foldr, prod_reverse_nat]

end Vector
```
