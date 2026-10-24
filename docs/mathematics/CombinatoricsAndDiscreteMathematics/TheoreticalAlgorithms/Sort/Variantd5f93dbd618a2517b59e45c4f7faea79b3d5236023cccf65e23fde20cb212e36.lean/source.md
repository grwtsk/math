# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `534536d0a471c965b9f9300e2ef21d5827d59d16` · SHA-256 `b3ac3a1a3eaec514ac9ee8c306ab752c17f71677dec248e9c345189b07edb611`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Sort.Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Sort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.List.Sort
import Mathlib.Data.Multiset.Range
import Mathlib.Util.Qq

/-!
# Construct a sorted list from a multiset.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5

variable {α β : Type*}

namespace Multiset

open List

section sort

variable (r : α → α → Prop) [DecidableRel r] [IsTrans α r] [IsAntisymm α r] [IsTotal α r]
variable (r' : β → β → Prop) [DecidableRel r'] [IsTrans β r'] [IsAntisymm β r'] [IsTotal β r']

/-- `sort s` constructs a sorted list from the multiset `s`.
  (Uses merge sort algorithm.) -/
def sort (s : Multiset α) : List α :=
  Quot.liftOn s (mergeSort · (r · ·)) fun _ _ h =>
    eq_of_perm_of_sorted ((mergeSort_perm _ _).trans <| h.trans (mergeSort_perm _ _).symm)
      (sorted_mergeSort IsTrans.trans
        (fun a b => by simpa using IsTotal.total a b) _)
      (sorted_mergeSort IsTrans.trans
        (fun a b => by simpa using IsTotal.total a b) _)

@[simp]
theorem coe_sort (l : List α) : sort r l = mergeSort l (r · ·) :=
  rfl

@[simp]
theorem sort_sorted (s : Multiset α) : Sorted r (sort r s) :=
  Quot.inductionOn s (sorted_mergeSort' _)

@[simp]
theorem sort_eq (s : Multiset α) : ↑(sort r s) = s :=
  Quot.inductionOn s fun _ => Quot.sound <| mergeSort_perm _ _

@[simp]
theorem mem_sort {s : Multiset α} {a : α} : a ∈ sort r s ↔ a ∈ s := by rw [← mem_coe, sort_eq]

@[simp]
theorem length_sort {s : Multiset α} : (sort r s).length = card s :=
  Quot.inductionOn s <| length_mergeSort

@[simp]
theorem sort_zero : sort r 0 = [] :=
  List.mergeSort_nil

@[simp]
theorem sort_singleton (a : α) : sort r {a} = [a] :=
  List.mergeSort_singleton a

theorem map_sort (f : α → β) (s : Multiset α)
    (hs : ∀ a ∈ s, ∀ b ∈ s, r a b ↔ r' (f a) (f b)) :
    (s.sort r).map f = (s.map f).sort r' := by
  revert s
  exact Quot.ind fun l h => map_mergeSort (l := l) (by simpa using h)

theorem sort_cons (a : α) (s : Multiset α) :
    (∀ b ∈ s, r a b) → sort r (a ::ₘ s) = a :: sort r s := by
  refine Quot.inductionOn s fun l => ?_
  simpa [mergeSort_eq_insertionSort] using insertionSort_cons r (a := a) (l := l)

@[simp]
theorem sort_range (n : ℕ) : sort (· ≤ ·) (range n) = List.range n :=
  List.mergeSort_eq_self _ (sorted_le_range n)

end sort

open Qq in
universe u in
unsafe instance {α : Type u} [Lean.ToLevel.{u}] [Lean.ToExpr α] :
    Lean.ToExpr (Multiset α) :=
  haveI u' := Lean.toLevel.{u}
  haveI α' : Q(Type u') := Lean.toTypeExpr α
  { toTypeExpr := q(Multiset $α')
    toExpr s := show Q(Multiset $α') from
      if Multiset.card s = 0 then
        q(0)
      else
        mkSetLiteralQ (α := q($α')) q(Multiset $α') (s.unquot.map Lean.toExpr)}

-- TODO: use a sort order if available, gh-18166
unsafe instance [Repr α] : Repr (Multiset α) where
  reprPrec s _ :=
    if Multiset.card s = 0 then
      "0"
    else
      Std.Format.bracket "{" (Std.Format.joinSep (s.unquot.map repr) ("," ++ Std.Format.line)) "}"

end Multiset
```
