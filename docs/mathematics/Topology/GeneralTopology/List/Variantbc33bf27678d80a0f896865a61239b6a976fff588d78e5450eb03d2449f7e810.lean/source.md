# Complete source: GRWTSK.Topology.GeneralTopology.List.Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4756927fbe31f6827c2f1fb214c7a90e107a74db` · SHA-256 `b80589a45fe1801091c4c570845e01978f740dab190a9f61413e101d77cc277f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PairwiseToList.Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PairwiseToList.Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Option/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import all Init.Data.List.Control
import all Init.Data.Option.Instances
public import Init.Data.List.Control
public import Init.Data.Option.Lemmas
import Init.Data.Bool
import Init.Data.List.Lemmas


namespace GRWTSK.Topology.GeneralTopology.PairwiseToList.Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6

public section

namespace Option

@[simp, grind =] theorem mem_toList {a : α} {o : Option α} : a ∈ o.toList ↔ o = some a := by
  cases o <;> simp [eq_comm]

@[simp, grind =] theorem forIn'_toList [Monad m] (o : Option α) (b : β) (f : (a : α) → a ∈ o.toList → β → m (ForInStep β)) :
    forIn' o.toList b f = forIn' o b fun a m b => f a (by simpa using m) b := by
  cases o <;> rfl

@[simp, grind =] theorem forIn_toList [Monad m] (o : Option α) (b : β) (f : α → β → m (ForInStep β)) :
    forIn o.toList b f = forIn o b f := by
  cases o <;> rfl

@[simp, grind =] theorem foldlM_toList [Monad m] [LawfulMonad m] (o : Option β) (a : α) (f : α → β → m α) :
    o.toList.foldlM f a = o.elim (pure a) (fun b => f a b) := by
  cases o <;> simp

@[simp, grind =] theorem foldrM_toList [Monad m] [LawfulMonad m] (o : Option β) (a : α) (f : β → α → m α) :
    o.toList.foldrM f a = o.elim (pure a) (fun b => f b a) := by
  cases o <;> simp

@[simp, grind =] theorem foldl_toList (o : Option β) (a : α) (f : α → β → α) :
    o.toList.foldl f a = o.elim a (fun b => f a b) := by
  cases o <;> simp

@[simp, grind =] theorem foldr_toList (o : Option β) (a : α) (f : β → α → α) :
    o.toList.foldr f a = o.elim a (fun b => f b a) := by
  cases o <;> simp

@[simp, grind ←]
theorem pairwise_toList {P : α → α → Prop} {o : Option α} : o.toList.Pairwise P := by
  cases o <;> simp

@[simp, grind =]
theorem head?_toList {o : Option α} : o.toList.head? = o := by
  cases o <;> simp

theorem toList_filter {o : Option α} {p : α → Bool} : (o.filter p).toList = o.toList.filter p :=
  match o with
  | none => rfl
  | some a =>
    match h : p a with
    | false => by simp [filter_some_neg h, h]
    | true => by simp [filter_some_pos h, h]

theorem toList_bind {o : Option α} {f : α → Option β} :
    (o.bind f).toList = o.toList.flatMap (Option.toList ∘ f) := by
  cases o <;> simp

theorem toList_join {o : Option (Option α)} : o.join.toList = o.toList.flatMap Option.toList := by
  simp [toList_bind, ← bind_id_eq_join]

theorem toList_map {o : Option α} {f : α → β} : (o.map f).toList = o.toList.map f := by
  cases o <;> simp

theorem toList_min [Min α] {o o' : Option α} :
    (min o o').toList = o.toList.zipWith min o'.toList := by
  cases o <;> cases o' <;> simp

@[simp]
theorem length_toList_le {o : Option α} : o.toList.length ≤ 1 := by
  cases o <;> simp

@[grind =]
theorem length_toList {o : Option α} :
    o.toList.length = if o.isSome then 1 else 0 := by
  cases o <;> simp

@[simp]
theorem toList_eq_nil_iff {o : Option α} : o.toList = [] ↔ o = none := by
  cases o <;> simp

@[simp]
theorem toList_eq_singleton_iff {o : Option α} : o.toList = [a] ↔ o = some a := by
  cases o <;> simp

theorem length_toList_eq_zero_iff {o : Option α} :
    o.toList.length = 0 ↔ o = none := by
  simp

@[simp]
theorem length_toList_eq_one_iff {o : Option α} :
    o.toList.length = 1 ↔ o.isSome := by
  cases o <;> simp

theorem length_toList_choice_eq_one [Nonempty α] : (choice α).toList.length = 1 := by
  simp

end Option
```
