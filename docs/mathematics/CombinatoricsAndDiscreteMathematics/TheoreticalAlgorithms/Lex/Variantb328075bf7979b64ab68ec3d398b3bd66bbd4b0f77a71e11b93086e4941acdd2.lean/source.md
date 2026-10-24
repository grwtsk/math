# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73f46aee5569175c91d7be602ef3d83958937718` · SHA-256 `3c96afe3cc610952b4cf22dfa46600472ecc57d9dcf169bcb89b74552dfd7752`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotLt.Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NotLt.Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238","mathematical_subject":"Computation.DataStructures","original_sha256":"162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/Lex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import all Init.Data.Vector.Basic
import all Init.Data.Array.Lex.Basic
import Init.Data.Range.Polymorphic.Lemmas
public import Init.Data.Array.Lex.Basic
public import Init.Data.BEq
public import Init.Data.Vector.Basic
import Init.Data.Array.Lex.Lemmas
import Init.Data.Vector.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotLt.Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238

public section

open Std

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

/-! ### Lexicographic ordering -/

@[simp] theorem lt_toArray [LT α] {xs ys : Vector α n} : xs.toArray < ys.toArray ↔ xs < ys := Iff.rfl
@[simp] theorem le_toArray [LT α] {xs ys : Vector α n} : xs.toArray ≤ ys.toArray ↔ xs ≤ ys := Iff.rfl

grind_pattern lt_toArray => xs.toArray < ys.toArray
grind_pattern le_toArray => xs.toArray ≤ ys.toArray

@[simp] theorem lt_toList [LT α] {xs ys : Vector α n} : xs.toList < ys.toList ↔ xs < ys := Iff.rfl
@[simp] theorem le_toList [LT α] {xs ys : Vector α n} : xs.toList ≤ ys.toList ↔ xs ≤ ys := Iff.rfl

@[simp]
protected theorem not_lt [LT α] {xs ys : Vector α n} : ¬ xs < ys ↔ ys ≤ xs := Iff.rfl

@[deprecated Vector.not_lt (since := "2025-10-26")]
protected theorem not_lt_iff_ge [LT α] {xs ys : Vector α n} : ¬ xs < ys ↔ ys ≤ xs := Iff.rfl

@[simp]
protected theorem not_le [LT α] {xs ys : Vector α n} :
    ¬ xs ≤ ys ↔ ys < xs :=
  Classical.not_not

@[deprecated Vector.not_le (since := "2025-10-26")]
protected theorem not_le_iff_gt [LT α] {xs ys : Vector α n} :
    ¬ xs ≤ ys ↔ ys < xs :=
  Classical.not_not

@[simp] theorem mk_lt_mk [LT α] :
    Vector.mk (α := α) (n := n) data₁ size₁ < Vector.mk data₂ size₂ ↔ data₁ < data₂ := Iff.rfl

@[simp] theorem mk_le_mk [LT α] :
    Vector.mk (α := α) (n := n) data₁ size₁ ≤ Vector.mk data₂ size₂ ↔ data₁ ≤ data₂ := Iff.rfl

@[simp] theorem mk_lex_mk [BEq α] {lt : α → α → Bool} {xs ys : Array α} {n₁ : xs.size = n} {n₂ : ys.size = n} :
    (Vector.mk xs n₁).lex (Vector.mk ys n₂) lt = xs.lex ys lt := by
  simp [Vector.lex, Array.lex, n₁, n₂, Std.Rco.forIn'_eq_forIn'_toList]
  rfl

@[simp, grind =] theorem lex_toArray [BEq α] {lt : α → α → Bool} {xs ys : Vector α n} :
    xs.toArray.lex ys.toArray lt = xs.lex ys lt := by
  cases xs
  cases ys
  simp

@[simp] theorem lex_toList [BEq α] {lt : α → α → Bool} {xs ys : Vector α n} :
    xs.toList.lex ys.toList lt = xs.lex ys lt := by
  rcases xs with ⟨xs, n₁⟩
  rcases ys with ⟨ys, n₂⟩
  simp

@[simp] theorem lex_empty
    [BEq α] {lt : α → α → Bool} (xs : Vector α 0) : xs.lex #v[] lt = false := by
  cases xs
  simp_all

theorem singleton_lex_singleton [BEq α] {lt : α → α → Bool} : #v[a].lex #v[b] lt = lt a b := by
  simp

protected theorem lt_irrefl [LT α] [Std.Irrefl (· < · : α → α → Prop)] (xs : Vector α n) : ¬ xs < xs :=
  Array.lt_irrefl xs.toArray

instance ltIrrefl [LT α] [Std.Irrefl (· < · : α → α → Prop)] : Std.Irrefl (α := Vector α n) (· < ·) where
  irrefl := Vector.lt_irrefl

@[simp] theorem not_lt_empty [LT α] (xs : Vector α 0) : ¬ xs < #v[] := Array.not_lt_empty xs.toArray
@[simp] theorem empty_le [LT α] (xs : Vector α 0) : #v[] ≤ xs := Array.empty_le xs.toArray

@[simp] theorem le_empty [LT α] {xs : Vector α 0} : xs ≤ #v[] ↔ xs = #v[] := by
  cases xs
  simp

protected theorem le_refl [LT α] [i₀ : Std.Irrefl (· < · : α → α → Prop)] (xs : Vector α n) : xs ≤ xs :=
  Array.le_refl xs.toArray

instance [LT α] [Std.Irrefl (· < · : α → α → Prop)] : Std.Refl (· ≤ · : Vector α n → Vector α n → Prop) where
  refl := Vector.le_refl

protected theorem lt_trans [LT α]
    [i₁ : Trans (· < · : α → α → Prop) (· < ·) (· < ·)]
    {xs ys zs : Vector α n} (h₁ : xs < ys) (h₂ : ys < zs) : xs < zs :=
  Array.lt_trans h₁ h₂

instance [LT α]
    [Trans (· < · : α → α → Prop) (· < ·) (· < ·)] :
    Trans (· < · : Vector α n → Vector α n → Prop) (· < ·) (· < ·) where
  trans h₁ h₂ := Vector.lt_trans h₁ h₂

protected theorem lt_of_le_of_lt [LT α] [LE α] [LawfulOrderLT α] [IsLinearOrder α]
    {xs ys zs : Vector α n} (h₁ : xs ≤ ys) (h₂ : ys < zs) : xs < zs :=
  Array.lt_of_le_of_lt h₁ h₂

@[deprecated Vector.lt_of_le_of_lt (since := "2025-08-01")]
protected theorem lt_of_le_of_lt' [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)]
    [Trans (¬ · < · : α → α → Prop) (¬ · < ·) (¬ · < ·)]
    {xs ys zs : Vector α n} (h₁ : xs ≤ ys) (h₂ : ys < zs) : xs < zs :=
  letI := LE.ofLT α
  haveI : IsLinearOrder α := IsLinearOrder.of_lt
  Array.lt_of_le_of_lt h₁ h₂

protected theorem le_trans [LT α] [LE α] [LawfulOrderLT α] [IsLinearOrder α]
    {xs ys zs : Vector α n} (h₁ : xs ≤ ys) (h₂ : ys ≤ zs) : xs ≤ zs :=
  fun h₃ => h₁ (Vector.lt_of_le_of_lt h₂ h₃)

@[deprecated Vector.le_trans (since := "2025-08-01")]
protected theorem le_trans' [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)]
    [Trans (¬ · < · : α → α → Prop) (¬ · < ·) (¬ · < ·)]
    {xs ys zs : Vector α n} (h₁ : xs ≤ ys) (h₂ : ys ≤ zs) : xs ≤ zs :=
  letI := LE.ofLT α
  haveI : IsLinearOrder α := IsLinearOrder.of_lt
  Array.le_trans h₁ h₂

instance [LT α] [LE α] [LawfulOrderLT α] [IsLinearOrder α] :
    Trans (· ≤ · : Vector α n → Vector α n → Prop) (· ≤ ·) (· ≤ ·) where
  trans h₁ h₂ := Vector.le_trans h₁ h₂

protected theorem lt_asymm [LT α]
    [i : Std.Asymm (· < · : α → α → Prop)]
    {xs ys : Vector α n} (h : xs < ys) : ¬ ys < xs := Array.lt_asymm h

instance [LT α]
    [Std.Asymm (· < · : α → α → Prop)] :
    Std.Asymm (· < · : Vector α n → Vector α n → Prop) where
  asymm _ _ := Vector.lt_asymm

protected theorem le_total [LT α] [i : Std.Asymm (· < · : α → α → Prop)] (xs ys : Vector α n) :
    xs ≤ ys ∨ ys ≤ xs :=
  Array.le_total _ _

protected theorem le_antisymm [LT α] [LE α] [IsLinearOrder α] [LawfulOrderLT α]
    {xs ys : Vector α n} (h₁ : xs ≤ ys) (h₂ : ys ≤ xs) : xs = ys :=
  Vector.toArray_inj.mp <| Array.le_antisymm h₁ h₂

instance [LT α] [Std.Asymm (· < · : α → α → Prop)] :
    Std.Total (· ≤ · : Vector α n → Vector α n → Prop) where
  total := Vector.le_total

instance [LT α] [LE α] [IsLinearOrder α] [LawfulOrderLT α] :
    IsLinearOrder (Vector α n) := by
  apply IsLinearOrder.of_le
  case le_antisymm => constructor; apply Vector.le_antisymm
  case le_total => constructor; apply Vector.le_total
  case le_trans => constructor; apply Vector.le_trans

instance [LT α] [Std.Asymm (· < · : α → α → Prop)] : LawfulOrderLT (Vector α n) where
  lt_iff _ _ := by
    open Classical in
    simp [← Vector.not_le, Decidable.imp_iff_not_or, Std.Total.total]

protected theorem le_of_lt [LT α]
    [i : Std.Asymm (· < · : α → α → Prop)]
    {xs ys : Vector α n} (h : xs < ys) : xs ≤ ys :=
  Array.le_of_lt h

protected theorem le_iff_lt_or_eq [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)]
    {xs ys : Vector α n} : xs ≤ ys ↔ xs < ys ∨ xs = ys := by
  simpa using Array.le_iff_lt_or_eq (xs := xs.toArray) (ys := ys.toArray)

@[simp] theorem lex_eq_true_iff_lt [BEq α] [LawfulBEq α] [LT α] [DecidableLT α]
    {xs ys : Vector α n} : lex xs ys = true ↔ xs < ys := by
  cases xs
  cases ys
  simp

@[simp] theorem lex_eq_false_iff_ge [BEq α] [LawfulBEq α] [LT α] [DecidableLT α]
    {xs ys : Vector α n} : lex xs ys = false ↔ ys ≤ xs := by
  cases xs
  cases ys
  simp

instance [DecidableEq α] [LT α] [DecidableLT α] : DecidableLT (Vector α n) :=
  fun xs ys => decidable_of_iff (lex xs ys = true) lex_eq_true_iff_lt

instance [DecidableEq α] [LT α] [DecidableLT α] : DecidableLE (Vector α n) :=
  fun xs ys => decidable_of_iff (lex ys xs = false) lex_eq_false_iff_ge

/--
`xs` is lexicographically less than `ys` if
there exists an index `i` such that
- for all `j < i`, `l₁[j] == l₂[j]` and
- `l₁[i] < l₂[i]`
-/
theorem lex_eq_true_iff_exists [BEq α] (lt : α → α → Bool) {xs ys : Vector α n} :
    lex xs ys lt = true ↔
      (∃ (i : Nat) (h : i < n), (∀ j, (hj : j < i) → xs[j] == ys[j]) ∧ lt xs[i] ys[i]) := by
  rcases xs with ⟨xs, n₁⟩
  rcases ys with ⟨ys, n₂⟩
  simp [Array.lex_eq_true_iff_exists, n₁, n₂]

/--
`l₁` is *not* lexicographically less than `l₂`
(which you might think of as "`l₂` is lexicographically greater than or equal to `l₁`"") if either
- `l₁` is pairwise equivalent under `· == ·` to `l₂` or
- there exists an index `i` such that
  - for all `j < i`, `l₁[j] == l₂[j]` and
  - `l₂[i] < l₁[i]`

This formulation requires that `==` and `lt` are compatible in the following senses:
- `==` is symmetric
  (we unnecessarily further assume it is transitive, to make use of the existing typeclasses)
- `lt` is irreflexive with respect to `==` (i.e. if `x == y` then `lt x y = false`
- `lt` is asymmetric  (i.e. `lt x y = true → lt y x = false`)
- `lt` is antisymmetric with respect to `==` (i.e. `lt x y = false → lt y x = false → x == y`)
-/
theorem lex_eq_false_iff_exists [BEq α] [PartialEquivBEq α] (lt : α → α → Bool)
    (lt_irrefl : ∀ x y, x == y → lt x y = false)
    (lt_asymm : ∀ x y, lt x y = true → lt y x = false)
    (lt_antisymm : ∀ x y, lt x y = false → lt y x = false → x == y)
    {xs ys : Vector α n} :
    lex xs ys lt = false ↔
      (ys.isEqv xs (· == ·)) ∨
        (∃ (i : Nat) (h : i < n),(∀ j, (hj : j < i) → xs[j] == ys[j]) ∧ lt ys[i] xs[i]) := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, n₂⟩
  simp_all [Array.lex_eq_false_iff_exists]

protected theorem lt_iff_exists [LT α] {xs ys : Vector α n} :
    xs < ys ↔
      (∃ (i : Nat) (h : i < n), (∀ j, (hj : j < i) → xs[j] = ys[j]) ∧ xs[i] < ys[i]) := by
  cases xs
  cases ys
  simp_all [Array.lt_iff_exists]

protected theorem le_iff_exists [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)] {xs ys : Vector α n} :
    xs ≤ ys ↔
      (xs = ys) ∨
        (∃ (i : Nat) (h : i < n), (∀ j, (hj : j < i) → xs[j] = ys[j]) ∧ xs[i] < ys[i]) := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, n₂⟩
  simp [Array.le_iff_exists, ← n₂]

theorem append_left_lt [LT α] {xs : Vector α n} {ys ys' : Vector α m} (h : ys < ys') :
    xs ++ ys < xs ++ ys' := by
  simpa using! Array.append_left_lt h

theorem append_left_le [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)]
    {xs : Vector α n} {ys ys' : Vector α m} (h : ys ≤ ys') :
    xs ++ ys ≤ xs ++ ys' := by
  simpa using! Array.append_left_le h

protected theorem map_lt [LT α] [LT β]
    {xs ys : Vector α n} {f : α → β} (w : ∀ x y, x < y → f x < f y) (h : xs < ys) :
    map f xs < map f ys := by
  simpa using! Array.map_lt w h

protected theorem map_le [LT α] [LT β]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)]
    [Std.Asymm (· < · : β → β → Prop)]
    [Std.Trichotomous (· < · : β → β → Prop)]
    {xs ys : Vector α n} {f : α → β} (w : ∀ x y, x < y → f x < f y) (h : xs ≤ ys) :
    map f xs ≤ map f ys := by
  simpa using! Array.map_le w h

end Vector
```
