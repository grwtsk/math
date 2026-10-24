# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccOrder.Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27b94a43ab07e86fdaeea8fa13cfe677a674db92` · SHA-256 `8a80fecb9128d67fbc5281a6299e33b6e53ccc01538a857a687a3cd2ab768352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IicCoeSuccOfNotIsMax.Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IicCoeSuccOfNotIsMax.Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/SuccOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.LatticeIntervals
import Mathlib.Order.SuccPred.Basic

/-!
# Successors in intervals

If `j` is an element of a partially ordered set equipped
with a successor function, then for any element `i : Set.Iic j`
which is not the maximum, we have `↑(Order.succ i) = Order.succ ↑i`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IicCoeSuccOfNotIsMax.Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d

namespace Set

variable {J : Type*} [PartialOrder J]

lemma Iic.coe_succ_of_not_isMax
    [SuccOrder J] {j : J} {i : Set.Iic j} (hi : ¬ IsMax i) :
    (Order.succ i).1 = Order.succ i.1 := by
  rw [coe_succ_of_mem]
  apply Order.succ_le_of_lt
  exact lt_of_le_of_ne (α := Set.Iic j) le_top (by simpa using hi)

lemma Iic.succ_eq_of_not_isMax
    [SuccOrder J] {j : J} {i : Set.Iic j} (hi : ¬ IsMax i) :
    Order.succ i = ⟨Order.succ i.1, by
      rw [← coe_succ_of_not_isMax hi]
      apply Subtype.coe_prop⟩ := by
  ext
  simp only [coe_succ_of_not_isMax hi]

lemma Ici.coe_pred_of_not_isMin
    [PredOrder J] {j : J} {i : Set.Ici j} (hi : ¬ IsMin i) :
    (Order.pred i).1 = Order.pred i.1 := by
  rw [coe_pred_of_mem]
  apply Order.le_pred_of_lt
  exact lt_of_le_of_ne (α := Set.Ici j) bot_le (Ne.symm (by simpa using hi))

lemma Ici.pred_eq_of_not_isMin
    [PredOrder J] {j : J} {i : Set.Ici j} (hi : ¬ IsMin i) :
    Order.pred i = ⟨Order.pred i.1, by
      rw [← coe_pred_of_not_isMin hi]
      apply Subtype.coe_prop⟩ := by
  ext
  simp only [coe_pred_of_not_isMin hi]

end Set
```
