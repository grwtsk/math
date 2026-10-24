# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e56f31265f6f33f759b94073b8b0e8c585e44318` · SHA-256 `4a20598d8d197c8804046120ce21650c4a83e58f712391a64ab5f2c2f02d29ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemOfMemRangePrimeAux.Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MemOfMemRangePrimeAux.Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Range.Basic
import all Init.Data.Range.Basic
public import Init.Data.List.Control
import Init.Data.List.Monadic
import Init.Data.List.Range
import Init.Data.Nat.Div.Lemmas
import Init.TacticsExtra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemOfMemRangePrimeAux.Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b

public section

/-!
# Lemmas about `Std.Legacy.Range`

We provide lemmas rewriting for loops over `Std.Legacy.Range` in terms of `List.range'`.
-/

namespace Std.Legacy.Range

/-- Generalization of `mem_of_mem_range'` used in `forIn'_loop_eq_forIn'_range'` below. -/
private theorem mem_of_mem_range'_aux {r : Range} {a : Nat} (w₁ : (i - r.start) % r.step = 0)
    (w₂ : r.start ≤ i)
    (h : a ∈ List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) : a ∈ r := by
  obtain ⟨j, h', rfl⟩ := List.mem_range'.1 h
  refine ⟨by omega, ?_⟩
  rw [Nat.lt_div_iff_mul_lt r.step_pos, Nat.mul_comm] at h'
  constructor
  · omega
  · rwa [Nat.add_comm, Nat.add_sub_assoc w₂, Nat.mul_add_mod_self_left]

theorem mem_of_mem_range' {r : Range} (h : x ∈ List.range' r.start r.size r.step) : x ∈ r := by
  unfold size at h
  apply mem_of_mem_range'_aux (by simp) (by simp) h

private theorem size_eq (r : Range) (h : i < r.stop) :
    (r.stop - i + r.step - 1) / r.step =
      (r.stop - (i + r.step) + r.step - 1) / r.step + 1 := by
  have w := r.step_pos
  if i + r.step < r.stop then -- Not sure this case split is strictly necessary.
    rw [Nat.div_eq_iff w, Nat.add_one_mul]
    have : (r.stop - (i + r.step) + r.step - 1) / r.step * r.step ≤
        (r.stop - (i + r.step) + r.step - 1) := Nat.div_mul_le_self _ _
    have : r.stop - (i + r.step) + r.step - 1 - r.step <
        (r.stop - (i + r.step) + r.step - 1) / r.step * r.step :=
      Nat.lt_div_mul_self w (by omega)
    omega
  else
    have : (r.stop - i + r.step - 1) / r.step = 1 := by
      rw [Nat.div_eq_iff w, Nat.one_mul]
      omega
    have : (r.stop - (i + r.step) + r.step - 1) / r.step = 0 := by
      rw [Nat.div_eq_iff] <;> omega
    omega

private theorem forIn'_loop_eq_forIn'_range' [Monad m] (r : Range)
    (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) (i) (w₁) (w₂) :
    forIn'.loop r f init i w₁ w₂ =
      forIn' (List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) init
        fun a h => f a (mem_of_mem_range'_aux w₁ w₂ h) := by
  have w := r.step_pos
  rw [forIn'.loop]
  split <;> rename_i h
  · simp only [size_eq r h, List.range'_succ, List.forIn'_cons]
    congr 1
    funext step
    split
    · simp
    · rw [forIn'_loop_eq_forIn'_range']
  · have : (r.stop - i + r.step - 1) / r.step = 0 := by
      rw [Nat.div_eq_iff] <;> omega
    simp [this]

@[simp] theorem forIn'_eq_forIn'_range' [Monad m] (r : Range)
    (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) :
    forIn' r init f =
      forIn' (List.range' r.start r.size r.step) init (fun a h => f a (mem_of_mem_range' h)) := by
  conv => lhs; simp only [forIn', Range.forIn']
  simp only [size]
  rw [forIn'_loop_eq_forIn'_range']

@[simp] theorem forIn_eq_forIn_range' [Monad m] (r : Range)
    (init : β) (f : Nat → β → m (ForInStep β)) :
    forIn r init f = forIn (List.range' r.start r.size r.step) init f := by
  simp only [forIn, forIn'_eq_forIn'_range']

private theorem forM_loop_eq_forM_range' [Monad m] (r : Range) (f : Nat → m PUnit) :
    forM.loop r f i = forM (List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) f := by
  have w := r.step_pos
  rw [forM.loop]
  split <;> rename_i h
  · simp [size_eq r h, List.range'_succ, List.forM_cons]
    congr 1
    funext
    rw [forM_loop_eq_forM_range']
  · have : (r.stop - i + r.step - 1) / r.step = 0 := by
      rw [Nat.div_eq_iff] <;> omega
    simp [this]

@[simp] theorem forM_eq_forM_range' [Monad m] (r : Range) (f : Nat → m PUnit) :
    forM r f = forM (List.range' r.start r.size r.step) f := by
  simp only [forM, Range.forM, forM_loop_eq_forM_range', size]

end Std.Legacy.Range
```
