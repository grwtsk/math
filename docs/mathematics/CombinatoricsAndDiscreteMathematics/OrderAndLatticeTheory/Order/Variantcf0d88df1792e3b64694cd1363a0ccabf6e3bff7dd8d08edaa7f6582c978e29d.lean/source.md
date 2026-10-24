# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58fa5e79e3eb2f252244e36e3448e411204ef2b2` · SHA-256 `56c916dd3f51a5c3ee5a169dc2c7e17806a9b20b34eaa9fac07fcc92b2d48e57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Lex.Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883","mathematical_subject":"Algebra.OrderTheory","original_sha256":"dc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/PSigma/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Minchao Wu
-/
import Mathlib.Data.Sigma.Lex
import Mathlib.Order.BoundedOrder
import Mathlib.Mathport.Notation
import Init.NotationExtra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883

#align_import data.psigma.order from "leanprover-community/mathlib"@"62a5626868683c104774de8d85b9855234ac807c"

/-!
# Lexicographic order on a sigma type
This file defines the lexicographic order on `Σₗ' i, α i`. `a` is less than `b` if its summand is
strictly less than the summand of `b` or they are in the same summand and `a` is less than `b`
there.
## Notation
* `Σₗ' i, α i`: Sigma type equipped with the lexicographic order. A type synonym of `Σ' i, α i`.
## See also
Related files are:
* `Data.Finset.Colex`: Colexicographic order on finite sets.
* `Data.List.Lex`: Lexicographic order on lists.
* `Data.Pi.Lex`: Lexicographic order on `Πₗ i, α i`.
* `Data.Sigma.Order`: Lexicographic order on `Σₗ i, α i`. Basically a twin of this file.
* `Data.Prod.Lex`: Lexicographic order on `α × β`.
## TODO
Define the disjoint order on `Σ' i, α i`, where `x ≤ y` only if `x.fst = y.fst`.
Prove that a sigma type is a `NoMaxOrder`, `NoMinOrder`, `DenselyOrdered` when its summands
are.
-/


variable {ι : Type*} {α : ι → Type*}

namespace PSigma

/-- The notation `Σₗ' i, α i` refers to a sigma type which is locally equipped with the
lexicographic order.-/
notation3 "Σₗ' "(...)", "r:(scoped p => _root_.Lex (PSigma p)) => r

namespace Lex

/-- The lexicographical `≤` on a sigma type. -/
instance le [LT ι] [∀ i, LE (α i)] : LE (Σₗ' i, α i) :=
  ⟨Lex (· < ·) fun _ => (· ≤ ·)⟩
#align psigma.lex.has_le PSigma.Lex.le

/-- The lexicographical `<` on a sigma type. -/
instance lt [LT ι] [∀ i, LT (α i)] : LT (Σₗ' i, α i) :=
  ⟨Lex (· < ·) fun _ => (· < ·)⟩
#align psigma.lex.has_lt PSigma.Lex.lt

instance preorder [Preorder ι] [∀ i, Preorder (α i)] : Preorder (Σₗ' i, α i) :=
  { Lex.le, Lex.lt with
    le_refl := fun ⟨i, a⟩ => Lex.right _ le_rfl,
    le_trans := by
      rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩ ⟨a₃, b₃⟩ ⟨h₁r⟩ ⟨h₂r⟩
      · left
        apply lt_trans
        repeat' assumption
      · left
        assumption
      · left
        assumption
      · right
        apply le_trans
        repeat' assumption,
    lt_iff_le_not_le := by
      refine' fun a b => ⟨fun hab => ⟨hab.mono_right fun i a b => le_of_lt, _⟩, _⟩
      · rintro (⟨i, a, hji⟩ | ⟨i, hba⟩) <;> obtain ⟨_, _, hij⟩ | ⟨_, hab⟩ := hab
        · exact hij.not_lt hji
        · exact lt_irrefl _ hji
        · exact lt_irrefl _ hij
        · exact hab.not_le hba
      · rintro ⟨⟨j, b, hij⟩ | ⟨i, hab⟩, hba⟩
        · exact Lex.left _ _ hij
        · exact Lex.right _ (hab.lt_of_not_le fun h => hba <| Lex.right _ h) }
#align psigma.lex.preorder PSigma.Lex.preorder

/-- Dictionary / lexicographic partial_order for dependent pairs. -/
instance partialOrder [PartialOrder ι] [∀ i, PartialOrder (α i)] : PartialOrder (Σₗ' i, α i) :=
  { Lex.preorder with
    le_antisymm := by
      rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩ (⟨_, _, hlt₁⟩ | ⟨_, hlt₁⟩) (⟨_, _, hlt₂⟩ | ⟨_, hlt₂⟩)
      · exact (lt_irrefl a₁ <| hlt₁.trans hlt₂).elim
      · exact (lt_irrefl a₁ hlt₁).elim
      · exact (lt_irrefl a₁ hlt₂).elim
      · rw [hlt₁.antisymm hlt₂] }
#align psigma.lex.partial_order PSigma.Lex.partialOrder

/-- Dictionary / lexicographic linear_order for pairs. -/
instance linearOrder [LinearOrder ι] [∀ i, LinearOrder (α i)] : LinearOrder (Σₗ' i, α i) :=
  { Lex.partialOrder with
    le_total := by
      rintro ⟨i, a⟩ ⟨j, b⟩
      obtain hij | rfl | hji := lt_trichotomy i j
      · exact Or.inl (Lex.left _ _ hij)
      · obtain hab | hba := le_total a b
        · exact Or.inl (Lex.right _ hab)
        · exact Or.inr (Lex.right _ hba)
      · exact Or.inr (Lex.left _ _ hji),
    decidableEq := PSigma.decidableEq, decidableLE := Lex.decidable _ _,
    decidableLT := Lex.decidable _ _ }
#align psigma.lex.linear_order PSigma.Lex.linearOrder

/-- The lexicographical linear order on a sigma type. -/
instance orderBot [PartialOrder ι] [OrderBot ι] [∀ i, Preorder (α i)] [OrderBot (α ⊥)] :
    OrderBot (Σₗ' i, α i) where
  bot := ⟨⊥, ⊥⟩
  bot_le := fun ⟨a, b⟩ => by
    obtain rfl | ha := eq_bot_or_bot_lt a
    · exact Lex.right _ bot_le
    · exact Lex.left _ _ ha
#align psigma.lex.order_bot PSigma.Lex.orderBot

/-- The lexicographical linear order on a sigma type. -/
instance orderTop [PartialOrder ι] [OrderTop ι] [∀ i, Preorder (α i)] [OrderTop (α ⊤)] :
    OrderTop (Σₗ' i, α i) where
  top := ⟨⊤, ⊤⟩
  le_top := fun ⟨a, b⟩ => by
    obtain rfl | ha := eq_top_or_lt_top a
    · exact Lex.right _ le_top
    · exact Lex.left _ _ ha
#align psigma.lex.order_top PSigma.Lex.orderTop

/-- The lexicographical linear order on a sigma type. -/
instance boundedOrder [PartialOrder ι] [BoundedOrder ι] [∀ i, Preorder (α i)] [OrderBot (α ⊥)]
    [OrderTop (α ⊤)] : BoundedOrder (Σₗ' i, α i) :=
  { Lex.orderBot, Lex.orderTop with }
#align psigma.lex.bounded_order PSigma.Lex.boundedOrder

instance denselyOrdered [Preorder ι] [DenselyOrdered ι] [∀ i, Nonempty (α i)] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] : DenselyOrdered (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | @⟨_, _, b, h⟩)
    · obtain ⟨k, hi, hj⟩ := exists_between h
      obtain ⟨c⟩ : Nonempty (α k) := inferInstance
      exact ⟨⟨k, c⟩, left _ _ hi, left _ _ hj⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ ha, right _ hb⟩⟩
#align psigma.lex.densely_ordered PSigma.Lex.denselyOrdered

instance denselyOrdered_of_noMaxOrder [Preorder ι] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] [∀ i, NoMaxOrder (α i)] : DenselyOrdered (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | @⟨_, _, b, h⟩)
    · obtain ⟨c, ha⟩ := exists_gt a
      exact ⟨⟨i, c⟩, right _ ha, left _ _ h⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ ha, right _ hb⟩⟩
#align psigma.lex.densely_ordered_of_no_max_order PSigma.Lex.denselyOrdered_of_noMaxOrder

instance densely_ordered_of_noMinOrder [Preorder ι] [∀ i, Preorder (α i)]
    [∀ i, DenselyOrdered (α i)] [∀ i, NoMinOrder (α i)] : DenselyOrdered (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩ ⟨j, b⟩ (⟨_, _, h⟩ | @⟨_, _, b, h⟩)
    · obtain ⟨c, hb⟩ := exists_lt b
      exact ⟨⟨j, c⟩, left _ _ h, right _ hb⟩
    · obtain ⟨c, ha, hb⟩ := exists_between h
      exact ⟨⟨i, c⟩, right _ ha, right _ hb⟩⟩
#align psigma.lex.densely_ordered_of_no_min_order PSigma.Lex.densely_ordered_of_noMinOrder

instance noMaxOrder_of_nonempty [Preorder ι] [∀ i, Preorder (α i)] [NoMaxOrder ι]
    [∀ i, Nonempty (α i)] : NoMaxOrder (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩
    obtain ⟨j, h⟩ := exists_gt i
    obtain ⟨b⟩ : Nonempty (α j) := inferInstance
    exact ⟨⟨j, b⟩, left _ _ h⟩⟩
#align psigma.lex.no_max_order_of_nonempty PSigma.Lex.noMaxOrder_of_nonempty

-- porting note: this statement was incorrect in mathlib3, hence the `#noalign`.
instance noMinOrder_of_nonempty [Preorder ι] [∀ i, Preorder (α i)] [NoMinOrder ι]
    [∀ i, Nonempty (α i)] : NoMinOrder (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩
    obtain ⟨j, h⟩ := exists_lt i
    obtain ⟨b⟩ : Nonempty (α j) := inferInstance
    exact ⟨⟨j, b⟩, left _ _ h⟩⟩
#noalign psigma.lex.no_min_order_of_nonempty

instance noMaxOrder [Preorder ι] [∀ i, Preorder (α i)] [∀ i, NoMaxOrder (α i)] :
    NoMaxOrder (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩
    obtain ⟨b, h⟩ := exists_gt a
    exact ⟨⟨i, b⟩, right _ h⟩⟩
#align psigma.lex.no_max_order PSigma.Lex.noMaxOrder

instance noMinOrder [Preorder ι] [∀ i, Preorder (α i)] [∀ i, NoMinOrder (α i)] :
    NoMinOrder (Σₗ' i, α i) :=
  ⟨by
    rintro ⟨i, a⟩
    obtain ⟨b, h⟩ := exists_lt a
    exact ⟨⟨i, b⟩, right _ h⟩⟩
#align psigma.lex.no_min_order PSigma.Lex.noMinOrder

end Lex

end PSigma
```
