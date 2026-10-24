# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c426d0b3186558cab5cd0504254f7f2cbbc10f6` · SHA-256 `6dcd1c00af5c1eb4e55f9a28e92f57b2ea89421cee7caba8f13d38ba98ac1e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Fold.Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"aa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Fold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Multiset.Dedup

/-!
# The fold operation for a commutative associative operation over a multiset.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69

namespace Multiset

variable {α β : Type*}

/-! ### fold -/


section Fold

variable (op : α → α → α) [hc : Std.Commutative op] [ha : Std.Associative op]

local notation a " * " b => op a b

/-- `fold op b s` folds a commutative associative operation `op` over
  the multiset `s`. -/
def fold : α → Multiset α → α :=
  foldr op

theorem fold_eq_foldr (b : α) (s : Multiset α) :
    fold op b s = foldr op b s :=
  rfl

@[simp]
theorem coe_fold_r (b : α) (l : List α) : fold op b l = l.foldr op b :=
  rfl

theorem coe_fold_l (b : α) (l : List α) : fold op b l = l.foldl op b :=
  (coe_foldr_swap op b l).trans <| by simp [hc.comm]

theorem fold_eq_foldl (b : α) (s : Multiset α) :
    fold op b s = foldl op b s :=
  Quot.inductionOn s fun _ => coe_fold_l _ _ _

@[simp]
theorem fold_zero (b : α) : (0 : Multiset α).fold op b = b :=
  rfl

@[simp]
theorem fold_cons_left : ∀ (b a : α) (s : Multiset α), (a ::ₘ s).fold op b = a * s.fold op b :=
  foldr_cons _

theorem fold_cons_right (b a : α) (s : Multiset α) : (a ::ₘ s).fold op b = s.fold op b * a := by
  simp [hc.comm]

theorem fold_cons'_right (b a : α) (s : Multiset α) : (a ::ₘ s).fold op b = s.fold op (b * a) := by
  rw [fold_eq_foldl, foldl_cons, ← fold_eq_foldl]

theorem fold_cons'_left (b a : α) (s : Multiset α) : (a ::ₘ s).fold op b = s.fold op (a * b) := by
  rw [fold_cons'_right, hc.comm]

theorem fold_add (b₁ b₂ : α) (s₁ s₂ : Multiset α) :
    (s₁ + s₂).fold op (b₁ * b₂) = s₁.fold op b₁ * s₂.fold op b₂ :=
  Multiset.induction_on s₂
    (by rw [Multiset.add_zero, fold_zero, ← fold_cons'_right, ← fold_cons_right op])
    (fun a b h => by rw [fold_cons_left, add_cons, fold_cons_left, h, ← ha.assoc, hc.comm a,
      ha.assoc])

theorem fold_singleton (b a : α) : ({a} : Multiset α).fold op b = a * b :=
  foldr_singleton _ _ _

theorem fold_distrib {f g : β → α} (u₁ u₂ : α) (s : Multiset β) :
    (s.map fun x => f x * g x).fold op (u₁ * u₂) = (s.map f).fold op u₁ * (s.map g).fold op u₂ :=
  Multiset.induction_on s (by simp) (fun a b h => by
    rw [map_cons, fold_cons_left, h, map_cons, fold_cons_left, map_cons,
      fold_cons_right, ha.assoc, ← ha.assoc (g a), hc.comm (g a),
      ha.assoc, hc.comm (g a), ha.assoc])

theorem fold_hom {op' : β → β → β} [Std.Commutative op'] [Std.Associative op'] {m : α → β}
    (hm : ∀ x y, m (op x y) = op' (m x) (m y)) (b : α) (s : Multiset α) :
    (s.map m).fold op' (m b) = m (s.fold op b) :=
  Multiset.induction_on s (by simp) (by simp +contextual [hm])

theorem fold_union_inter [DecidableEq α] (s₁ s₂ : Multiset α) (b₁ b₂ : α) :
    ((s₁ ∪ s₂).fold op b₁ * (s₁ ∩ s₂).fold op b₂) = s₁.fold op b₁ * s₂.fold op b₂ := by
  rw [← fold_add op, union_add_inter, fold_add op]

@[simp]
theorem fold_dedup_idem [DecidableEq α] [hi : Std.IdempotentOp op] (s : Multiset α) (b : α) :
    (dedup s).fold op b = s.fold op b :=
  Multiset.induction_on s (by simp) fun a s IH => by
    by_cases h : a ∈ s <;> simp [IH, h]
    show fold op b s = op a (fold op b s)
    rw [← cons_erase h, fold_cons_left, ← ha.assoc, hi.idempotent]

end Fold

end Multiset
```
