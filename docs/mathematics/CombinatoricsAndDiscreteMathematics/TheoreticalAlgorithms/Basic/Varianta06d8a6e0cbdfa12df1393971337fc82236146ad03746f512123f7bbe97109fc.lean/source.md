# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a1e1a12ca985c2237479c2bb99b0252ccb404c1` · SHA-256 `e63c04e6ce660866fb97aa54390c7f13dd123d9711a447f91cbfb7a03f701f3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Merge.Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Sort/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Ext
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.TakeDrop
import Init.Data.Nat.Lemmas
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac

public section

/-!
# Definition of `merge` and `mergeSort`.

These definitions are intended for verification purposes,
and are replaced at runtime by efficient versions in `Init.Data.List.Sort.Impl`.
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

/--
Merges two lists, using `le` to select the first element of the resulting list if both are
non-empty.

If both input lists are sorted according to `le`, then the resulting list is also sorted according
to `le`. `O(|xs| + |ys|)`.

This implementation is not tail-recursive, but it is replaced at runtime by a proven-equivalent
tail-recursive merge.
-/
def merge (xs ys : List α) (le : α → α → Bool := by exact fun a b => a ≤ b) : List α :=
  match xs, ys with
  | [], ys => ys
  | xs, [] => xs
  | x :: xs, y :: ys =>
    if le x y then
      x :: merge xs (y :: ys) le
    else
      y :: merge (x :: xs) ys le

@[simp] theorem nil_merge (ys : List α) : merge [] ys le = ys := by simp [merge]
@[simp] theorem merge_right (xs : List α) : merge xs [] le = xs := by
  induction xs with
  | nil => simp
  | cons x xs ih => simp [merge]

/--
Split a list in two equal parts. If the length is odd, the first part will be one element longer.

This is an implementation detail of `mergeSort`.
-/
def MergeSort.Internal.splitInTwo (l : { l : List α // l.length = n }) :
    { l : List α // l.length = (n+1)/2 } × { l : List α // l.length = n/2 } :=
  let r := splitAt ((n+1)/2) l.1
  (⟨r.1, by simp [r, splitAt_eq, l.2]; omega⟩, ⟨r.2, by simp [r, splitAt_eq, l.2]; omega⟩)

open MergeSort.Internal in
set_option linter.unusedVariables false in
set_option backward.isDefEq.respectTransparency false in
/--
A stable merge sort.

This function is a simplified implementation that's designed to be easy to reason about, rather than
for efficiency. In particular, it uses the non-tail-recursive `List.merge` function and traverses
lists unnecessarily.

It is replaced at runtime by an efficient implementation that has been proven to be equivalent.
-/
-- Because we want the sort to be stable, it is essential that we split the list in two contiguous
-- sublists.
def mergeSort : ∀ (xs : List α) (le : α → α → Bool := by exact fun a b => a ≤ b), List α
  | [], _ => []
  | [a], _ => [a]
  | a :: b :: xs, le =>
    let lr := splitInTwo ⟨a :: b :: xs, rfl⟩
    have := by simpa using lr.2.2
    have := by simpa using lr.1.2
    merge (mergeSort lr.1 le) (mergeSort lr.2 le) le
termination_by xs => xs.length

/--
Given an ordering relation `le : α → α → Bool`,
construct the lexicographic ordering on `α × Nat`.
which first compares the first components using `le`,
but if these are equivalent (in the sense `le a.2 b.2 && le b.2 a.2`)
then compares the second components using `≤`.

This function is only used in stating the stability properties of `mergeSort`.
-/
def zipIdxLE (le : α → α → Bool) (a b : α × Nat) : Bool :=
  if le a.1 b.1 then if le b.1 a.1 then a.2 ≤ b.2 else true else false

end List
```
