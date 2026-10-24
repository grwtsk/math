# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f5d95e2d0c07b47b809296cf7bc196b714e2f30` · SHA-256 `2a28c47af424d8dfb652e5e2d1a0569f7b4066782e2c708b172cf4e821ff644d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LengthScanl.Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LengthScanl.Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf","mathematical_subject":"Computation.DataStructures","original_sha256":"e78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Scan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
import Mathlib.Order.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Option.Basic

/-! ### List.scanl and List.scanr -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LengthScanl.Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf

open Nat

namespace List

variable {α β : Type*} {f : β → α → β} {b : β} {a : α} {l : List α}

theorem length_scanl : ∀ a l, length (scanl f a l) = l.length + 1
  | _, [] => rfl
  | a, x :: l => by
    rw [scanl, length_cons, length_cons, ← succ_eq_add_one, congr_arg succ]
    exact length_scanl _ _

@[simp]
theorem scanl_nil (b : β) : scanl f b nil = [b] :=
  rfl

@[simp]
theorem scanl_cons : scanl f b (a :: l) = [b] ++ scanl f (f b a) l := by
  simp only [scanl, eq_self_iff_true, singleton_append, and_self_iff]

@[simp]
theorem getElem?_scanl_zero : (scanl f b l)[0]? = some b := by
  cases l
  · simp [scanl_nil]
  · simp [scanl_cons, singleton_append]

@[simp]
theorem getElem_scanl_zero {h : 0 < (scanl f b l).length} : (scanl f b l)[0] = b := by
  cases l
  · simp [scanl_nil]
  · simp [scanl_cons, singleton_append]

theorem getElem?_succ_scanl {i : ℕ} : (scanl f b l)[i + 1]? =
    (scanl f b l)[i]?.bind fun x => l[i]?.map fun y => f x y := by
  induction l generalizing b i with
  | nil =>
    symm
    simp only [scanl, getElem?_nil, Option.map_none, Option.bind_none, getElem?_cons_succ]
  | cons hd tl hl =>
    simp only [scanl_cons, singleton_append]
    cases i
    · simp
    · simp only [hl, getElem?_cons_succ]

@[deprecated (since := "2025-02-21")]
alias get?_succ_scanl := getElem?_succ_scanl

theorem getElem_succ_scanl {i : ℕ} (h : i + 1 < (scanl f b l).length) :
    (scanl f b l)[i + 1] =
      f ((scanl f b l)[i]'(Nat.lt_of_succ_lt h))
        (l[i]'(Nat.lt_of_succ_lt_succ (h.trans_eq (length_scanl b l)))) := by
  induction i generalizing b l with
  | zero =>
    cases l
    · simp only [scanl, length, zero_eq, lt_self_iff_false] at h
    · simp
  | succ i hi =>
    cases l
    · simp only [scanl, length] at h
      exact absurd h (by omega)
    · simp_rw [scanl_cons]
      rw [getElem_append_right]
      · simp only [length, Nat.zero_add 1, succ_add_sub_one, hi]; rfl
      · simp only [length_singleton]; omega

-- scanr
@[simp]
theorem scanr_nil (f : α → β → β) (b : β) : scanr f b [] = [b] :=
  rfl

@[simp]
theorem scanr_cons (f : α → β → β) (b : β) (a : α) (l : List α) :
    scanr f b (a :: l) = foldr f b (a :: l) :: scanr f b l := by
  simp only [scanr, foldr, cons.injEq, and_true]
  induction l generalizing a with
  | nil => rfl
  | cons hd tl ih => simp only [foldr, ih]

end List
```
