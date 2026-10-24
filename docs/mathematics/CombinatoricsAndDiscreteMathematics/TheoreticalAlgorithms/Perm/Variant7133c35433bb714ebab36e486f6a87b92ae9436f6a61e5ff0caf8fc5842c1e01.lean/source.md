# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f699816f0bd2221bce9628a62a9f453a3b5ec34f` · SHA-256 `c72e17a5f5cefa8cf68c46bc965181f94476be4b52ebb739dd054145b6720e28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SetSetPermPrime.Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SetSetPermPrime.Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Nat/Perm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.GetElem
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.Perm
import Init.Data.List.TakeDrop
import Init.Omega
import Init.TacticsExtra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SetSetPermPrime.Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

/-- Helper lemma for `set_set_perm`-/
private theorem set_set_perm' {as : List α} {i j : Nat} (h₁ : i < as.length) (h₂ : i + j < as.length)
    (hj : 0 < j) :
    (as.set i as[i + j]).set (i + j) as[i] ~ as := by
  have : as =
      as.take i ++ as[i] :: (as.take (i + j)).drop (i + 1) ++ as[i + j] :: as.drop (i + j + 1) := by
    simp only [getElem_cons_drop, append_assoc, cons_append]
    rw [← drop_append_of_le_length]
    · simp
    · simp; omega
  conv => lhs; congr; congr; rw [this]
  conv => rhs; rw [this]
  rw [set_append_left _ _ (by simp; omega)]
  rw [set_append_right _ _ (by simp; omega)]
  rw [set_append_right _ _ (by simp; omega)]
  simp only [length_append, length_take, length_set, length_cons, length_drop]
  rw [(show i - min i as.length = 0 by omega)]
  rw [(show i + j - (min i as.length + (min (i + j) as.length - (i + 1) + 1)) = 0 by omega)]
  simp only [set_cons_zero]
  simp only [append_assoc]
  apply Perm.append_left
  apply cons_append_cons_perm

theorem set_set_perm {as : List α} {i j : Nat} (h₁ : i < as.length) (h₂ : j < as.length) :
    (as.set i as[j]).set j as[i] ~ as := by
  if h₃ : i = j then
    simp [h₃]
  else
    if h₃ : i < j then
      let j' := j - i
      have t : j = i + j' := by omega
      generalize j' = j' at t
      subst t
      exact set_set_perm' _ _ (by omega)
    else
      rw [set_comm _ _ (by omega)]
      let i' := i - j
      have t : i = j + i' := by omega
      generalize i' = i' at t
      subst t
      apply set_set_perm' _ _ (by omega)

namespace Perm

/-- Variant of `List.Perm.take` specifying that the permutation is constant after `i` elementwise. -/
theorem take_of_getElem? {l₁ l₂ : List α} (h : l₁ ~ l₂) {i : Nat} (w : ∀ j, i ≤ j → l₁[j]? = l₂[j]?) :
    l₁.take i ~ l₂.take i := by
  refine h.take (Perm.of_eq ?_)
  ext1 j
  simpa using w (i + j) (by omega)

/-- Variant of `List.Perm.drop` specifying that the permutation is constant before `i` elementwise. -/
theorem drop_of_getElem? {l₁ l₂ : List α} (h : l₁ ~ l₂) {i : Nat} (w : ∀ j, j < i → l₁[j]? = l₂[j]?) :
    l₁.drop i ~ l₂.drop i := by
  refine h.drop (Perm.of_eq ?_)
  ext1
  simp only [getElem?_take]
  split <;> simp_all

end Perm

end List
```
