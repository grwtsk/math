# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetD.Variant8fcb69e077cf5caf8159c0e61e3c38703b6b7ef3fb30986d6c537f06088b22ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14fbb4fdcb7bf088648c1d0f33af7e7c26ad6ba8` · SHA-256 `54f61d14aa68b58a98752b782d69d8ee3951affca6f36b5883670bf23e5420cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetDEqGetElem.Variantabdbcc1372ca023c2596274078e43224fbd44514b5ddaba4bab891acd7694289","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abdbcc1372ca023c2596274078e43224fbd44514b5ddaba4bab891acd7694289","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GetDEqGetElem.Variantabdbcc1372ca023c2596274078e43224fbd44514b5ddaba4bab891acd7694289","mathematical_subject":"Computation.DataStructures","original_sha256":"abdbcc1372ca023c2596274078e43224fbd44514b5ddaba4bab891acd7694289","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/GetD.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey, Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn,
Mario Carneiro
-/
module

public import Mathlib.Basic.Logic.Basic
public import Mathlib.Data.List.Defs

/-! # getD and getI

This file provides theorems for working with the `getD` and `getI` functions. These are used to
access an element of a list by numerical index, with a default value as a fallback when the index
is out of range.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetDEqGetElem.Variantabdbcc1372ca023c2596274078e43224fbd44514b5ddaba4bab891acd7694289

@[expose] public section

assert_not_imported Mathlib.Algebra.Order.Group.Nat

namespace List

universe u v

variable {α : Type u} {β : Type v} (l : List α) (x : α) (xs : List α) (n : ℕ)

section getD

variable (d : α)

theorem getD_eq_getElem {n : ℕ} (hn : n < l.length) : l.getD n d = l[n] := by
  grind

theorem getD_eq_getElem? (i : Fin l.length) : l.getD i d = l[i]?.get (by simp) := by
  simp only [getD_eq_getElem?_getD, Fin.is_lt, getElem?_pos, Option.getD_some, Fin.getElem_fin,
    Option.get_some]

theorem getD_eq_get (i : Fin l.length) : l.getD i d = l.get i :=
  getD_eq_getElem ..

theorem getD_map {n : ℕ} (f : α → β) : (map f l).getD n (f d) = f (l.getD n d) := by
  simp only [getD_eq_getElem?_getD, getElem?_map, Option.getD_map]

theorem getD_eq_default {n : ℕ} (hn : l.length ≤ n) : l.getD n d = d := by
  grind

theorem getD_reverse {l : List α} (i) (h : i < length l) :
    getD l.reverse i = getD l (l.length - 1 - i) := by
  grind

/-- An empty list can always be decidably checked for the presence of an element.
Not an instance because it would clash with `DecidableEq α`. -/
@[instance_reducible]
def decidableGetDNilNe (a : α) : DecidablePred fun i : ℕ => getD ([] : List α) i a ≠ a :=
  fun _ => isFalse fun H => H getD_nil

@[simp]
theorem getElem?_getD_singleton_default_eq (n : ℕ) : [d][n]?.getD d = d := by
  grind

@[simp]
theorem getElem?_getD_replicate_default_eq (r n : ℕ) : (replicate r d)[n]?.getD d = d := by
  grind

theorem getD_replicate {y i n} (h : i < n) : getD (replicate n x) i y = x := by
  grind

theorem getD_append (l l' : List α) (d : α) (n : ℕ) (h : n < l.length) :
    (l ++ l').getD n d = l.getD n d := by
  grind

theorem getD_append_right (l l' : List α) (d : α) (n : ℕ) (h : l.length ≤ n) :
    (l ++ l').getD n d = l'.getD (n - l.length) d := by
  grind

theorem getD_surjective_iff {l : List α} {d : α} :
    (l.getD · d).Surjective ↔ (∀ x, x = d ∨ x ∈ l) := by
  apply forall_congr'
  have : ∃ x, l.length ≤ x := ⟨_, Nat.le_refl _⟩
  simp only [getD_eq_getElem?_getD, getD_getElem?, dite_eq_iff, Nat.not_lt, exists_prop, exists_or,
    exists_and_right, this, mem_iff_getElem?, getElem?_eq_some_iff]
  grind

theorem getD_surjective {l : List α} (h : ∀ x, x ∈ l) (d : α) : (l.getD · d).Surjective :=
  getD_surjective_iff.mpr fun _ ↦ .inr <| h _

end getD

section getI

variable [Inhabited α]

@[simp]
theorem getI_nil : getI ([] : List α) n = default :=
  rfl

@[simp]
theorem getI_cons_zero : getI (x :: xs) 0 = x :=
  rfl

@[simp]
theorem getI_cons_succ : getI (x :: xs) (n + 1) = getI xs n :=
  rfl

theorem getI_eq_getElem {n : ℕ} (hn : n < l.length) : l.getI n = l[n] :=
  getD_eq_getElem l default hn

theorem getI_eq_default {n : ℕ} (hn : l.length ≤ n) : l.getI n = default :=
  getD_eq_default _ _ hn

theorem getD_default_eq_getI {n : ℕ} : l.getD n default = l.getI n :=
  rfl

theorem getI_append (l l' : List α) (n : ℕ) (h : n < l.length) :
    (l ++ l').getI n = l.getI n := getD_append _ _ _ _ h

theorem getI_append_right (l l' : List α) (n : ℕ) (h : l.length ≤ n) :
    (l ++ l').getI n = l'.getI (n - l.length) :=
  getD_append_right _ _ _ _ h

theorem getI_eq_getElem?_getD (n : ℕ) : l.getI n = (l[n]?).getD default := by
  rw [← getD_default_eq_getI, getD_eq_getElem?_getD]

theorem getI_zero_eq_headI : l.getI 0 = l.headI := by cases l <;> rfl

end getI

end List
```
