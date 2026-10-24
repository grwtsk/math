# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `066d8dc25cd143224d57cdf6ad87f250dc9d3dce` · SHA-256 `dede623aed9a0e9cd48d6d757a399b08d63085e0627ab68b6140475f900f464a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LE.Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LE.Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca","mathematical_subject":"Algebra.OrderTheory","original_sha256":"9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Sigma/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Sigma.Lex
import Mathlib.Util.Notation3
import Mathlib.Data.Sigma.Basic
import Mathlib.Order.Lattice
import Mathlib.Order.BoundedOrder.Basic

/-!
# Orders on a sigma type

This file defines two orders on a sigma type:
* The disjoint sum of orders. `a` is less `b` iff `a` and `b` are in the same summand and `a` is
  less than `b` there.
* The lexicographical order. `a` is less than `b` if its summand is strictly less than the summand
  of `b` or they are in the same summand and `a` is less than `b` there.

We make the disjoint sum of orders the default set of instances. The lexicographic order goes on a
type synonym.

## Notation

* `_root_.Lex (Sigma α)`: Sigma type equipped with the lexicographic order.
  Type synonym of `Σ i, α i`.

## See also

Related files are:
* `Data.Finset.CoLex`: Colexicographic order on finite sets.
* `Data.List.Lex`: Lexicographic order on lists.
* `Data.Pi.Lex`: Lexicographic order on `Πₗ i, α i`.
* `Data.PSigma.Order`: Lexicographic order on `Σₗ' i, α i`. Basically a twin of this file.
* `Data.Prod.Lex`: Lexicographic order on `α × β`.

## TODO

Upgrade `Equiv.sigma_congr_left`, `Equiv.sigma_congr`, `Equiv.sigma_assoc`,
`Equiv.sigma_prod_of_equiv`, `Equiv.sigma_equiv_prod`, ... to order isomorphisms.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LE.Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca

namespace Sigma

variable {ι : Type*} {α : ι → Type*}

/-! ### Disjoint sum of orders on `Sigma` -/

/-- Disjoint sum of orders. `⟨i, a⟩ ≤ ⟨j, b⟩` iff `i = j` and `a ≤ b`. -/
protected inductive LE [∀ i, LE (α i)] : ∀ _a _b : Σ i, α i, Prop
  | fiber (i : ι) (a b : α i) : a ≤ b → Sigma.LE ⟨i, a⟩ ⟨i, b⟩

/-- Disjoint sum of orders. `⟨i, a⟩ < ⟨j, b⟩` iff `i = j` and `a < b`. -/
protected inductive LT [∀ i, LT (α i)] : ∀ _a _b : Σi, α i, Prop
  | fiber (i : ι) (a b : α i) : a < b → Sigma.LT ⟨i, a⟩ ⟨i, b⟩

protected instance [∀ i, LE (α i)] : LE (Σi, α i) where
  le := Sigma.LE

protected instance [∀ i, LT (α i)] : LT (Σi, α i) where
  lt := Sigma.LT

@[simp]
theorem mk_le_mk_iff [∀ i, LE (α i)] {i : ι} {a b : α i} : (⟨i, a⟩ : Sigma α) ≤ ⟨i, b⟩ ↔ a ≤ b :=
  ⟨fun ⟨_, _, _, h⟩ => h, Sigma.LE.fiber _ _ _⟩

@[simp]
theorem mk_lt_mk_iff [∀ i, LT (α i)] {i : ι} {a b : α i} : (⟨i, a⟩ : Sigma α) < ⟨i, b⟩ ↔ a < b :=
  ⟨fun ⟨_, _, _, h⟩ => h, Sigma.LT.fiber _ _ _⟩

theorem le_def [∀ i, LE (α i)] {a b : Σi, α i} : a ≤ b ↔ ∃ h : a.1 = b.1, h.rec a.2 ≤ b.2 := by
  constructor
  · rintro ⟨i, a, b, h⟩
    exact ⟨rfl, h⟩
  · obtain ⟨i, a⟩ := a
    obtain ⟨j, b⟩ := b
    rintro ⟨rfl : i = j, h⟩
    exact LE.fiber _ _ _ h

theorem lt_def [∀ i, LT (α i)] {a b : Σi, α i} : a < b ↔ ∃ h : a.1 = b.1, h.rec a.2 < b.2 := by
  constructor
  · rintro ⟨i, a, b, h⟩
    exact ⟨rfl, h⟩
  · obtain ⟨i, a⟩ := a
    obtain ⟨j, b⟩ := b
    rintro ⟨rfl : i = j, h⟩
    exact LT.fiber _ _ _ h

protected instance preorder [∀ i, Preorder (α i)] : Preorder (Σi, α i) :=
  { le_refl := fun ⟨i, a⟩ => Sigma.LE.fiber i a a le_rfl,
    le_trans := by
      rintro _ _ _ ⟨i, a, b, hab⟩ ⟨_, _, c, hbc⟩
      exact LE.fiber i a c (hab.trans hbc),
    lt_iff_le_not_le := fun _ _ => by
      constructor
      · rintro ⟨i, a, b, hab⟩
        rwa [mk_le_mk_iff, mk_le_mk_iff, ← lt_iff_le_not_le]
      · rintro ⟨⟨i, a, b, hab⟩, h⟩
        rw [mk_le_mk_iff] at h
        exact mk_lt_mk_iff.2 (hab.lt_of_not_le h) }

instance [∀ i, PartialOrder (α i)] : PartialOrder (Σi, α i) :=
  { Sigma.preorder with
    le_antisymm := by
      rintro _ _ ⟨i, a, b, hab⟩ ⟨_, _, _, hba⟩
      exact congr_arg (Sigma.mk _ ·) <| hab.antisymm hba }

instance [∀ i, Preorder (α i)] [∀ i, DenselyOrdered (α i)] : DenselyOrdered (Σi, α i) where
  dense := by
    rintro ⟨i, a⟩ ⟨_, _⟩ ⟨_, _, b, h⟩
    obtain ⟨c, ha, hb⟩ := exists_between h
    exact ⟨⟨i, c⟩, LT.fiber i a c ha, LT.fiber i c b hb⟩

/-! ### Lexicographical order on `Sigma` -/


namespace Lex
/-- The notation `Σₗ i, α i` refers to a sigma type equipped with the lexicographic order. -/
notation3 "Σₗ "(...)", "r:(scoped p => _root_.Lex (Sigma p)) => r

/-- The lexicographical `≤` on a sigma type. -/
protected instance LE [LT ι] [∀ i, LE (α i)] : LE (Σₗ i, α i) where
  le := Lex (· < ·) fun _ => (· ≤ ·)

/-- The lexicographical `<` on a sigma type. -/
protected instance LT [LT ι] [∀ i, LT (α i)] : LT (Σₗ i, α i) where
  lt := Lex (· < ·) fun _ => (· < ·)

theorem le_def [LT ι] [∀ i, LE (α i)] {a b : Σₗ i, α i} :
    a ≤ b ↔ a.1 < b.1 ∨ ∃ h : a.1 = b.1, h.rec a.2 ≤ b.2 :=
  Sigma.lex_iff

theorem lt_def [LT ι] [∀ i, LT (α i)] {a b : Σₗ i, α i} :
    a < b ↔ a.1 < b.1 ∨ ∃ h : a.1 = b.1, h.rec a.2 < b.2 :=
  Sigma.lex_iff

/-- The lexicographical preorder on a sigma type. -/
instance preorder [Preorder ι] [∀ i, Preorder (α i)] : Preorder (Σₗ i, α i) :=
  { Sigma.Lex.LE, Sigma.Lex.LT with
    le_refl := fun ⟨_, a⟩ => Lex.right a a le_rfl,
    le_trans := fun _ _ _ => trans_of ((Lex (· < ·)) fun _ => (· ≤ ·)),
    lt_iff_le_not_le := by
      refine fun a b => ⟨fun hab => ⟨hab.mono_right fun i a b => le_of_lt, ?_⟩, ?_⟩
      · rintro (⟨b, a, hji⟩ | ⟨b, a, hba⟩) <;> obtain ⟨_, _, hij⟩ | ⟨_, _, hab⟩ := hab
        · exact hij.not_lt hji
        · exact lt_irrefl _ hji
        · exact lt_irrefl _ hij
        · exact hab.not_le hba
      · rintro ⟨⟨a, b, hij⟩ | ⟨a, b, hab⟩, hba⟩
        · exact Sigma.Lex.left _ _ hij
        · exact Sigma.Lex.right _ _ (hab.lt_of_not_le fun h => hba <| Sigma.Lex.right _ _ h) }

/-- The lexicographical partial order on a sigma type. -/
instance partialOrder [Preorder ι] [∀ i, PartialOrder (α i)] :
    PartialOrder (Σₗ i, α i) :=
  { Lex.preorder with
    le_antisymm := fun _ _ => antisymm_of ((Lex (· < ·)) fun _ => (· ≤ ·)) }



/-- The lexicographical linear order on a sigma type. -/
instance linearOrder [LinearOrder ι] [∀ i, LinearOrder (α i)] :
    LinearOrder (Σₗ i, α i) :=
  { Lex.partialOrder with
    le_total := total_of ((Lex (· < ·)) fun _ => (· ≤ ·)),
    toDecidableEq := Sigma.instDecidableEqSigma
    toDecidableLE := Lex.decidable _ _
    toDecidableLT := Lex.decidable _ _ }

/-- The lexicographical linear order on a sigma type. -/
instance orderBot [PartialOrder ι] [OrderBot ι] [∀ i, Preorder (α i)] [OrderBot (α ⊥)] :
    OrderBot (Σₗ i, α i) where
  bot := ⟨⊥, ⊥⟩
  bot_le := fun ⟨a, b⟩ => by
    obtain rfl | ha := eq_bot_or_bot_lt a
    · exact Lex.right _ _ bot_le
    · exact Lex.left _ _ ha

/-- The lexicographical linear order on a sigma type. -/
instance orderTop [PartialOrder ι] [OrderTop ι] [∀ i, Preorder (α i)] [OrderTop (α ⊤)] :
    OrderTop (Σₗ i, α i) where
  top := ⟨⊤, ⊤⟩
  le_top := fun ⟨a, b⟩ => by
    obtain rfl | ha := eq_top_or_lt_top a
    · exact Lex.right _ _ le_top
    · exact Lex.left _ _ ha

/-- The lexicographical linear order on a sigma type. -/
instance boundedOrder [PartialOrder ι] [BoundedOrder ι] [∀ i, Preorder (α i)] [OrderBot (α ⊥)]
    [OrderTop (α ⊤)] : BoundedOrder (Σₗ i, α i) :=
  { Lex.orderBot, Lex.orderTop with }

instance denselyOrdered [Preorder ι] [DenselyOrdered ι] [∀ i, Nonempty (α i)] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] : DenselyOrdered (Σₗ i, α i) where
  dense := by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | ⟨_, b, h⟩)
    · obtain ⟨k, hi, hj⟩ := exists_between h
      obtain ⟨c⟩ : Nonempty (α k) := inferInstance
      exact ⟨⟨k, c⟩, left _ _ hi, left _ _ hj⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ _ ha, right _ _ hb⟩

instance denselyOrdered_of_noMaxOrder [Preorder ι] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] [∀ i, NoMaxOrder (α i)] :
    DenselyOrdered (Σₗ i, α i) where
  dense := by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | ⟨_, b, h⟩)
    · obtain ⟨c, ha⟩ := exists_gt a
      exact ⟨⟨i, c⟩, right _ _ ha, left _ _ h⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ _ ha, right _ _ hb⟩

instance denselyOrdered_of_noMinOrder [Preorder ι] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] [∀ i, NoMinOrder (α i)] :
    DenselyOrdered (Σₗ i, α i) where
  dense := by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | ⟨_, b, h⟩)
    · obtain ⟨c, hb⟩ := exists_lt b
      exact ⟨⟨j, c⟩, left _ _ h, right _ _ hb⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ _ ha, right _ _ hb⟩

instance noMaxOrder_of_nonempty [Preorder ι] [∀ i, Preorder (α i)] [NoMaxOrder ι]
    [∀ i, Nonempty (α i)] : NoMaxOrder (Σₗ i, α i) where
  exists_gt := by
    rintro ⟨i, a⟩
    obtain ⟨j, h⟩ := exists_gt i
    obtain ⟨b⟩ : Nonempty (α j) := inferInstance
    exact ⟨⟨j, b⟩, left _ _ h⟩

instance noMinOrder_of_nonempty [Preorder ι] [∀ i, Preorder (α i)] [NoMinOrder ι]
    [∀ i, Nonempty (α i)] : NoMinOrder (Σₗ i, α i) where
  exists_lt := by
    rintro ⟨i, a⟩
    obtain ⟨j, h⟩ := exists_lt i
    obtain ⟨b⟩ : Nonempty (α j) := inferInstance
    exact ⟨⟨j, b⟩, left _ _ h⟩

instance noMaxOrder [Preorder ι] [∀ i, Preorder (α i)] [∀ i, NoMaxOrder (α i)] :
    NoMaxOrder (Σₗ i, α i) where
  exists_gt := by
    rintro ⟨i, a⟩
    obtain ⟨b, h⟩ := exists_gt a
    exact ⟨⟨i, b⟩, right _ _ h⟩

instance noMinOrder [Preorder ι] [∀ i, Preorder (α i)] [∀ i, NoMinOrder (α i)] :
    NoMinOrder (Σₗ i, α i) where
  exists_lt := by
    rintro ⟨i, a⟩
    obtain ⟨b, h⟩ := exists_lt a
    exact ⟨⟨i, b⟩, right _ _ h⟩

end Lex

end Sigma
```
