# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Relation.Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0501a89d73058c3f9c9a17f71c7ea00b890da85` · SHA-256 `1f3c7b439b42cf1e4be38bd2c9c8c2d6f382752aa2c97c8d3892181eb558ddc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ReflTransGenOfSuccOfLe.Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ReflTransGenOfSuccOfLe.Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0","mathematical_subject":"Algebra.OrderTheory","original_sha256":"3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/SuccPred/Relation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Order.SuccPred.Archimedean

/-!
# Relations on types with a `SuccOrder`

This file contains properties about relations on types with a `SuccOrder`
and their closure operations (like the transitive closure).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ReflTransGenOfSuccOfLe.Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0

open Function Order Relation Set

section PartialSucc

variable {α : Type*} [PartialOrder α] [SuccOrder α] [IsSuccArchimedean α]

/-- For `n ≤ m`, `(n, m)` is in the reflexive-transitive closure of `~` if `i ~ succ i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_succ_of_le (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ico n m, r i (succ i))
    (hnm : n ≤ m) : ReflTransGen r n m := by
  revert h; refine Succ.rec ?_ ?_ hnm
  · intro _
    exact ReflTransGen.refl
  · intro m hnm ih h
    have : ReflTransGen r n m := ih fun i hi => h i ⟨hi.1, hi.2.trans_le <| le_succ m⟩
    rcases (le_succ m).eq_or_lt with hm | hm
    · rwa [← hm]
    exact this.tail (h m ⟨hnm, hm⟩)

/-- For `m ≤ n`, `(n, m)` is in the reflexive-transitive closure of `~` if `succ i ~ i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_succ_of_ge (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ico m n, r (succ i) i)
    (hmn : m ≤ n) : ReflTransGen r n m := by
  rw [← reflTransGen_swap]
  exact reflTransGen_of_succ_of_le (swap r) h hmn

/-- For `n < m`, `(n, m)` is in the transitive closure of a relation `~` if `i ~ succ i`
  for all `i` between `n` and `m`. -/
theorem transGen_of_succ_of_lt (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ico n m, r i (succ i))
    (hnm : n < m) : TransGen r n m :=
  (reflTransGen_iff_eq_or_transGen.mp <| reflTransGen_of_succ_of_le r h hnm.le).resolve_left
    hnm.ne'

/-- For `m < n`, `(n, m)` is in the transitive closure of a relation `~` if `succ i ~ i`
  for all `i` between `n` and `m`. -/
theorem transGen_of_succ_of_gt (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ico m n, r (succ i) i)
    (hmn : m < n) : TransGen r n m :=
  (reflTransGen_iff_eq_or_transGen.mp <| reflTransGen_of_succ_of_ge r h hmn.le).resolve_left
    hmn.ne

end PartialSucc

section LinearSucc

variable {α : Type*} [LinearOrder α] [SuccOrder α] [IsSuccArchimedean α]

/-- `(n, m)` is in the reflexive-transitive closure of `~` if `i ~ succ i` and `succ i ~ i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_succ (r : α → α → Prop) {n m : α} (h1 : ∀ i ∈ Ico n m, r i (succ i))
    (h2 : ∀ i ∈ Ico m n, r (succ i) i) : ReflTransGen r n m :=
  (le_total n m).elim (reflTransGen_of_succ_of_le r h1) <| reflTransGen_of_succ_of_ge r h2

/-- For `n ≠ m`,`(n, m)` is in the transitive closure of a relation `~` if `i ~ succ i` and
  `succ i ~ i` for all `i` between `n` and `m`. -/
theorem transGen_of_succ_of_ne (r : α → α → Prop) {n m : α} (h1 : ∀ i ∈ Ico n m, r i (succ i))
    (h2 : ∀ i ∈ Ico m n, r (succ i) i) (hnm : n ≠ m) : TransGen r n m :=
  (reflTransGen_iff_eq_or_transGen.mp (reflTransGen_of_succ r h1 h2)).resolve_left hnm.symm

/-- `(n, m)` is in the transitive closure of a reflexive relation `~` if `i ~ succ i` and
  `succ i ~ i` for all `i` between `n` and `m`. -/
theorem transGen_of_succ_of_reflexive (r : α → α → Prop) {n m : α} (hr : Reflexive r)
    (h1 : ∀ i ∈ Ico n m, r i (succ i)) (h2 : ∀ i ∈ Ico m n, r (succ i) i) : TransGen r n m := by
  rcases eq_or_ne m n with (rfl | hmn); · exact TransGen.single (hr m)
  exact transGen_of_succ_of_ne r h1 h2 hmn.symm

end LinearSucc

section PartialPred

variable {α : Type*} [PartialOrder α] [PredOrder α] [IsPredArchimedean α]

/-- For `m ≤ n`, `(n, m)` is in the reflexive-transitive closure of `~` if `i ~ pred i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_pred_of_ge (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ioc m n, r i (pred i))
    (hnm : m ≤ n) : ReflTransGen r n m :=
  reflTransGen_of_succ_of_le (α := αᵒᵈ) r (fun x hx => h x ⟨hx.2, hx.1⟩) hnm

/-- For `n ≤ m`, `(n, m)` is in the reflexive-transitive closure of `~` if `pred i ~ i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_pred_of_le (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ioc n m, r (pred i) i)
    (hmn : n ≤ m) : ReflTransGen r n m :=
  reflTransGen_of_succ_of_ge (α := αᵒᵈ) r (fun x hx => h x ⟨hx.2, hx.1⟩) hmn

/-- For `m < n`, `(n, m)` is in the transitive closure of a relation `~` for `n ≠ m` if `i ~ pred i`
  for all `i` between `n` and `m`. -/
theorem transGen_of_pred_of_gt (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ioc m n, r i (pred i))
    (hnm : m < n) : TransGen r n m :=
  transGen_of_succ_of_lt (α := αᵒᵈ) r (fun x hx => h x ⟨hx.2, hx.1⟩) hnm

/-- For `n < m`, `(n, m)` is in the transitive closure of a relation `~` for `n ≠ m` if `pred i ~ i`
  for all `i` between `n` and `m`. -/
theorem transGen_of_pred_of_lt (r : α → α → Prop) {n m : α} (h : ∀ i ∈ Ioc n m, r (pred i) i)
    (hmn : n < m) : TransGen r n m :=
  transGen_of_succ_of_gt (α := αᵒᵈ) r (fun x hx => h x ⟨hx.2, hx.1⟩) hmn

end PartialPred

section LinearPred

variable {α : Type*} [LinearOrder α] [PredOrder α] [IsPredArchimedean α]

/-- `(n, m)` is in the reflexive-transitive closure of `~` if `i ~ pred i` and `pred i ~ i`
  for all `i` between `n` and `m`. -/
theorem reflTransGen_of_pred (r : α → α → Prop) {n m : α} (h1 : ∀ i ∈ Ioc m n, r i (pred i))
    (h2 : ∀ i ∈ Ioc n m, r (pred i) i) : ReflTransGen r n m :=
  reflTransGen_of_succ (α := αᵒᵈ) r (fun x hx => h1 x ⟨hx.2, hx.1⟩) fun x hx =>
    h2 x ⟨hx.2, hx.1⟩

/-- For `n ≠ m`, `(n, m)` is in the transitive closure of a relation `~` if `i ~ pred i` and
  `pred i ~ i` for all `i` between `n` and `m`. -/
theorem transGen_of_pred_of_ne (r : α → α → Prop) {n m : α} (h1 : ∀ i ∈ Ioc m n, r i (pred i))
    (h2 : ∀ i ∈ Ioc n m, r (pred i) i) (hnm : n ≠ m) : TransGen r n m :=
  transGen_of_succ_of_ne (α := αᵒᵈ) r (fun x hx => h1 x ⟨hx.2, hx.1⟩)
    (fun x hx => h2 x ⟨hx.2, hx.1⟩) hnm

/-- `(n, m)` is in the transitive closure of a reflexive relation `~` if `i ~ pred i` and
  `pred i ~ i` for all `i` between `n` and `m`. -/
theorem transGen_of_pred_of_reflexive (r : α → α → Prop) {n m : α} (hr : Reflexive r)
    (h1 : ∀ i ∈ Ioc m n, r i (pred i)) (h2 : ∀ i ∈ Ioc n m, r (pred i) i) : TransGen r n m :=
  transGen_of_succ_of_reflexive (α := αᵒᵈ) r hr (fun x hx => h1 x ⟨hx.2, hx.1⟩) fun x hx =>
    h2 x ⟨hx.2, hx.1⟩

end LinearPred
```
