# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BEq.Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4734b8adab9cc0448e3000874d3d6d8209f8a0f8` · SHA-256 `f94a3ece88d335438b2d80258ac43e52eebfcd37c81d9f4675064d23138894c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEqvEqDecide.Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsEqvEqDecide.Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Nat/BEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Nat.Lemmas
import Init.Data.List.Lemmas
import Init.Data.Bool


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEqvEqDecide.Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

/-! ### isEqv -/

theorem isEqv_eq_decide {as bs : List α} {r : α → α → Bool} :
    isEqv as bs r = if h : as.length = bs.length then
      decide (∀ (i : Nat) (h' : i < as.length), r (as[i]'(h ▸ h')) (bs[i]'(h ▸ h'))) else false := by
  induction as generalizing bs with
  | nil =>
    cases bs <;> simp
  | cons a as ih =>
    cases bs with
    | nil => simp
    | cons b bs =>
      simp only [isEqv, ih, length_cons, Nat.add_right_cancel_iff]
      split <;> simp [Nat.forall_lt_succ_left']

/-! ### beq -/

theorem beq_eq_isEqv [BEq α] {as bs : List α} : as.beq bs = isEqv as bs (· == ·) := by
  induction as generalizing bs with
  | nil =>
    cases bs <;> simp
  | cons a as ih =>
    cases bs with
    | nil => simp
    | cons b bs =>
      simp only [beq_cons_cons, ih, isEqv_eq_decide, length_cons, Nat.add_right_cancel_iff,
        Nat.forall_lt_succ_left', getElem_cons_zero, getElem_cons_succ, Bool.decide_and,
        Bool.decide_eq_true]
      split <;> simp

theorem beq_eq_decide [BEq α] {as bs : List α} :
    (as == bs) = if h : as.length = bs.length then
      decide (∀ (i : Nat) (h' : i < as.length), as[i] == bs[i]'(h ▸ h')) else false := by
  simp [BEq.beq, beq_eq_isEqv, isEqv_eq_decide]

end List
```
