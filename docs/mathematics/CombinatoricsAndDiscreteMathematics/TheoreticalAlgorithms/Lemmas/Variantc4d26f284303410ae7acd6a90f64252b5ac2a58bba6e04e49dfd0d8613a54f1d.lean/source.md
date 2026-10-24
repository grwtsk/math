# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ea4c19a7d2389a016cb56a8232fedd1e6c0404` · SHA-256 `cba9e01e1927b428b97d8eb3d31f3d58835e53f72ecb56e3c0cd6727b8d08151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToArrayInjective.Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToArrayInjective.Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7","mathematical_subject":"Computation.DataStructures","original_sha256":"801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/.lake/packages/batteries/Batteries/Data/Vector/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Shreyas Srinivas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shreyas Srinivas, François G. Dorais, Eric Wieser
-/

import Batteries.Data.Vector.Basic
import Batteries.Data.List.Basic
import Batteries.Data.List.Lemmas
import Batteries.Data.Array.Lemmas
import Batteries.Tactic.Lint.Simp


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToArrayInjective.Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7

namespace Vector

theorem toArray_injective : ∀ {v w : Vector α n}, v.toArray = w.toArray → v = w
  | {..}, {..}, rfl => rfl


/-! ### mk lemmas -/

@[simp] theorem get_mk (a : Array α) (h : a.size = n) (i) :
    (Vector.mk a h).get i = a[i] := rfl

@[simp] theorem getD_mk (a : Array α) (h : a.size = n) (i x) :
    (Vector.mk a h).getD i x = a.getD i x := rfl

@[simp] theorem uget_mk (a : Array α) (h : a.size = n) (i) (hi : i.toNat < n) :
    (Vector.mk a h).uget i hi = a.uget i (by simp [h, hi]) := rfl

@[deprecated (since := "2024-11-25")] alias setN_mk := set_mk

@[deprecated (since := "2024-11-25")] alias swapN_mk := swap_mk

@[deprecated (since := "2024-11-25")] alias swapAtN_mk := swapAt_mk

/-! ### toArray lemmas -/

@[deprecated (since := "2024-11-25")] alias toArray_setD := toArray_setIfInBounds
@[deprecated (since := "2024-11-25")] alias toArray_setN := toArray_set
@[deprecated (since := "2024-11-25")] alias toArray_swap! := toArray_swapIfInBounds
@[deprecated (since := "2024-11-25")] alias toArray_swapN := toArray_swap
@[deprecated (since := "2024-11-25")] alias toArray_swapAtN := toArray_swapAt

/-! ### tail lemmas -/

theorem tail_eq_of_zero {v : Vector α 0} : v.tail = #v[] := Vector.eq_empty

theorem tail_eq_of_ne_zero [NeZero n] {v : Vector α n} :
    v.tail = v.eraseIdx 0 n.pos_of_neZero := dif_pos _

@[simp] theorem toList_tail {v : Vector α n} :
    v.tail.toList = v.toList.tail :=
  match n with
  | 0 => by simp [Vector.eq_empty]
  | _ + 1 => by simp [tail_eq_of_ne_zero]

/-! ### getElem lemmas -/

theorem getElem_tail {v : Vector α n} {i : Nat} (hi : i < n - 1) :
    v.tail[i] = v[i + 1] :=
  match n with
  | _ + 1 =>
    getElem_congr_coll tail_eq_of_ne_zero |>.trans <|
    getElem_eraseIdx (Nat.zero_lt_succ _) hi

/-! ### get lemmas -/

@[simp] theorem get_push_last (v : Vector α n) (a : α) :
    (v.push a).get (Fin.last n) = a :=
  getElem_push_last

@[simp] theorem get_push_castSucc (v : Vector α n) (a : α) (i : Fin n) :
    (v.push a).get (Fin.castSucc i) = v.get i :=
  getElem_push_lt _

@[simp] theorem get_map (v : Vector α n) (f : α → β) (i : Fin n) :
    (v.map f).get i = f (v.get i) :=
  getElem_map _ _

@[simp] theorem get_reverse (v : Vector α n) (i : Fin n) :
    v.reverse.get i = v.get (i.rev) :=
  getElem_reverse _ |>.trans <| congrArg v.get <| Fin.ext <| by simp; omega

@[simp] theorem get_replicate (n : Nat) (a : α) (i : Fin n) : (replicate n a).get i = a :=
  getElem_replicate _

@[simp] theorem get_range (n : Nat) (i : Fin n) : (range n).get i = i :=
  getElem_range _

@[simp] theorem get_ofFn (f : Fin n → α) (i : Fin n) : (ofFn f).get i = f i :=
  getElem_ofFn _

@[simp] theorem get_cast (v : Vector α m) (h : m = n) (i : Fin n) :
    (v.cast h).get i = v.get (i.cast h.symm) :=
  getElem_cast _

@[simp] theorem get_tail (v : Vector α (n + 1)) (i : Fin n) :
    v.tail.get i = v.get i.succ := getElem_tail _
```
