-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitOnPPrepend.Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SplitOnPPrepend.Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/SplitOn/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.List.Basic
public import Init.NotationExtra
import Init.Data.Array.Bootstrap
import Init.Data.List.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitOnPPrepend.Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f

public section

set_option doc.verso true

namespace List

/--
Split a list at every element satisfying a predicate, and then prepend {lean}`acc.reverse` to the
first element of the result.

* {lean}`[1, 1, 2, 3, 2, 4, 4].splitOnPPrepend (· == 2) [0, 5] = [[5, 0, 1, 1], [3], [4, 4]]`
-/
noncomputable def splitOnPPrepend (p : α → Bool) : (l : List α) → (acc : List α) → List (List α)
| [], acc => [acc.reverse]
| a :: t, acc => if p a then acc.reverse :: splitOnPPrepend p t [] else splitOnPPrepend p t (a::acc)

/--
Split a list at every element satisfying a predicate. The separators are not in the result.

Examples:
* {lean}`[1, 1, 2, 3, 2, 4, 4].splitOnP (· == 2) = [[1, 1], [3], [4, 4]]`
-/
noncomputable def splitOnP (p : α → Bool) (l : List α) : List (List α) :=
  splitOnPPrepend p l []

@[deprecated splitOnPPrepend (since := "2026-02-26")]
noncomputable def splitOnP.go (p : α → Bool) (l acc : List α) : List (List α) :=
  splitOnPPrepend p l acc

/-- Tail recursive version of {name}`splitOnP`. -/
@[inline]
def splitOnPTR (p : α → Bool) (l : List α) : List (List α) := go l #[] #[] where
  @[specialize] go : List α → Array α → Array (List α) → List (List α)
  | [], acc, r => r.toListAppend [acc.toList]
  | a :: t, acc, r => bif p a then go t #[] (r.push acc.toList) else go t (acc.push a) r

@[csimp] theorem splitOnP_eq_splitOnPTR : @splitOnP = @splitOnPTR := by
  funext α P l
  simp only [splitOnPTR]
  suffices ∀ xs acc r,
    splitOnPTR.go P xs acc r = r.toList ++ splitOnPPrepend P xs acc.toList.reverse from
      (this l #[] #[]).symm
  intro xs acc r
  induction xs generalizing acc r with
  | nil => simp [splitOnPPrepend, splitOnPTR.go]
  | cons x xs IH => cases h : P x <;> simp [splitOnPPrepend, splitOnPTR.go, *]

/--
Split a list at every occurrence of a separator element. The separators are not in the result.

Examples:
* {lean}`[1, 1, 2, 3, 2, 4, 4].splitOn 2 = [[1, 1], [3], [4, 4]]`
-/
@[inline] def splitOn [BEq α] (a : α) (as : List α) : List (List α) :=
  as.splitOnP (· == a)

end List
