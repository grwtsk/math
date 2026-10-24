# Complete source: GRWTSK.Topology.GeneralTopology.Array.Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00a1f1e2a113485dd159b4c2a7dddb16ac9a1785` · SHA-256 `510a926159a68f8c7680bb03abb01a24d9893f86b3b6574852cc0c3bebe876ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ToListToArray.Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ToListToArray.Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Option/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
import all Init.Data.Option.Instances
public import Init.Control.Lawful
public import Init.Data.Option.Lemmas
import Init.Data.Array.Bootstrap
import Init.Data.Array.Lemmas
import Init.Data.Bool
import Init.Data.List.Zip
import Init.Data.Option.List


namespace GRWTSK.Topology.GeneralTopology.ToListToArray.Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c

public section

namespace Option

@[simp, grind =] theorem mem_toArray {a : α} {o : Option α} : a ∈ o.toArray ↔ o = some a := by
  cases o <;> simp [eq_comm]

@[simp, grind =] theorem forIn'_toArray [Monad m] (o : Option α) (b : β) (f : (a : α) → a ∈ o.toArray → β → m (ForInStep β)) :
    forIn' o.toArray b f = forIn' o b fun a m b => f a (by simpa using m) b := by
  cases o <;> simp <;> rfl

@[simp, grind =] theorem forIn_toArray [Monad m] (o : Option α) (b : β) (f : α → β → m (ForInStep β)) :
    forIn o.toArray b f = forIn o b f := by
  cases o <;> simp <;> rfl

@[simp, grind =] theorem foldlM_toArray [Monad m] [LawfulMonad m] (o : Option β) (a : α) (f : α → β → m α) :
    o.toArray.foldlM f a = o.elim (pure a) (fun b => f a b) := by
  cases o <;> simp

@[simp, grind =] theorem foldrM_toArray [Monad m] [LawfulMonad m] (o : Option β) (a : α) (f : β → α → m α) :
    o.toArray.foldrM f a = o.elim (pure a) (fun b => f b a) := by
  cases o <;> simp

@[simp, grind =] theorem foldl_toArray (o : Option β) (a : α) (f : α → β → α) :
    o.toArray.foldl f a = o.elim a (fun b => f a b) := by
  cases o <;> simp

@[simp, grind =] theorem foldr_toArray (o : Option β) (a : α) (f : β → α → α) :
    o.toArray.foldr f a = o.elim a (fun b => f b a) := by
  cases o <;> simp

@[simp, grind =]
theorem toList_toArray {o : Option α} : o.toArray.toList = o.toList := by
  cases o <;> simp

@[simp, grind =]
theorem toArray_toList {o : Option α} : o.toList.toArray = o.toArray := by
  cases o <;> simp

theorem toArray_filter {o : Option α} {p : α → Bool} :
    (o.filter p).toArray = o.toArray.filter p := by
  rw [← toArray_toList, toList_filter, ← List.filter_toArray, toArray_toList]

theorem toArray_bind {o : Option α} {f : α → Option β} :
    (o.bind f).toArray = o.toArray.flatMap (Option.toArray ∘ f) := by
  cases o <;> simp

theorem toArray_join {o : Option (Option α)} : o.join.toArray = o.toArray.flatMap Option.toArray := by
  simp [toArray_bind, ← bind_id_eq_join]

theorem toArray_map {o : Option α} {f : α → β} : (o.map f).toArray = o.toArray.map f := by
  cases o <;> simp

theorem toArray_min [Min α] {o o' : Option α} :
    (min o o').toArray = o.toArray.zipWith min o'.toArray := by
  cases o <;> cases o' <;> simp

@[simp]
theorem size_toArray_le {o : Option α} : o.toArray.size ≤ 1 := by
  cases o <;> simp

@[grind =]
theorem size_toArray {o : Option α} :
    o.toArray.size = if o.isSome then 1 else 0 := by
  cases o <;> simp

@[simp]
theorem toArray_eq_empty_iff {o : Option α} : o.toArray = #[] ↔ o = none := by
  cases o <;> simp

@[simp]
theorem toArray_eq_singleton_iff {o : Option α} : o.toArray = #[a] ↔ o = some a := by
  cases o <;> simp

theorem size_toArray_eq_zero_iff {o : Option α} :
    o.toArray.size = 0 ↔ o = none := by
  simp

@[simp]
theorem size_toArray_eq_one_iff {o : Option α} :
    o.toArray.size = 1 ↔ o.isSome := by
  cases o <;> simp

theorem size_toArray_choice_eq_one [Nonempty α] : (choice α).toArray.size = 1 := by
  simp

end Option
```
