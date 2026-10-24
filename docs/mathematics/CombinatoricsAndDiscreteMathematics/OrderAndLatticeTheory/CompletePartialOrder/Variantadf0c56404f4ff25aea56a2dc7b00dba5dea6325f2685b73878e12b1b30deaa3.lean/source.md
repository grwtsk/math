# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompletePartialOrder.Variantadf0c56404f4ff25aea56a2dc7b00dba5dea6325f2685b73878e12b1b30deaa3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf75b62e80219067d6682dde83229d004d67b380` · SHA-256 `f73d929bcb6376e57231f1d56380dc211555cea36b9a828ee398822ca49f9dc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompletePartialOrder.Variant790d6b38f872cf0d5cd0e6e55185d9b5b020becb705326ba53b9c8a4125c0520","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"790d6b38f872cf0d5cd0e6e55185d9b5b020becb705326ba53b9c8a4125c0520","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CompletePartialOrder.Variant790d6b38f872cf0d5cd0e6e55185d9b5b020becb705326ba53b9c8a4125c0520","mathematical_subject":"Algebra.OrderTheory","original_sha256":"790d6b38f872cf0d5cd0e6e55185d9b5b020becb705326ba53b9c8a4125c0520","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/CompletePartialOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
module

public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Order.OmegaCompletePartialOrder
public import Mathlib.Order.ConditionallyCompletePartialOrder.Defs
public import Mathlib.Order.CompleteLattice.Defs

/-!
# Complete Partial Orders

This file considers complete partial orders (sometimes called directedly complete partial orders).
These are partial orders for which every directed set has a least upper bound.

## Main declarations

- `CompletePartialOrder`: Typeclass for (directly) complete partial orders.

## Main statements

- `CompletePartialOrder.toOmegaCompletePartialOrder`: A complete partial order is an ω-complete
  partial order.
- `CompleteLattice.toCompletePartialOrder`: A complete lattice is a complete partial order.

## References

- [B. A. Davey and H. A. Priestley, Introduction to lattices and order][davey_priestley]

## Tags

complete partial order, directedly complete partial order
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompletePartialOrder.Variant790d6b38f872cf0d5cd0e6e55185d9b5b020becb705326ba53b9c8a4125c0520

@[expose] public section

variable {ι : Sort*} {α β : Type*}

section CompletePartialOrder

/--
Complete partial orders are partial orders where every directed set has a least upper bound.
-/
class CompletePartialOrder (α : Type*) extends PartialOrder α, SupSet α, OrderBot α where
  /-- For each directed set `d`, `sSup d` is the least upper bound of `d`. -/
  lubOfDirected : ∀ d, DirectedOn (· ≤ ·) d → IsLUB d (sSup d)

/-- Create a `CompletePartialOrder` from a `PartialOrder` and `SupSet`
such that for every directed set `d`, `sSup d` is the least upper bound of `d`.

The bottom element is defined as `sSup ∅`.
-/
@[reducible]
def CompletePartialOrder.ofLubOfDirected (α : Type*) [H1 : PartialOrder α] [H2 : SupSet α]
    (lub_of_directed : ∀ d : Set α, DirectedOn (· ≤ ·) d → IsLUB d (sSup d)) :
    CompletePartialOrder α where
  __ := H1; __ := H2
  bot := sSup ∅
  bot_le := isLUB_empty_iff.mp <| lub_of_directed ∅ IsChain.empty.directedOn
  lubOfDirected := lub_of_directed

variable [CompletePartialOrder α] [Preorder β] {f : ι → α} {d : Set α} {a : α}

protected lemma DirectedOn.isLUB_sSup : DirectedOn (· ≤ ·) d → IsLUB d (sSup d) :=
CompletePartialOrder.lubOfDirected _

protected lemma DirectedOn.le_sSup (hd : DirectedOn (· ≤ ·) d) (ha : a ∈ d) : a ≤ sSup d :=
hd.isLUB_sSup.1 ha

protected lemma DirectedOn.sSup_le (hd : DirectedOn (· ≤ ·) d) (ha : ∀ b ∈ d, b ≤ a) : sSup d ≤ a :=
hd.isLUB_sSup.2 ha

protected lemma Directed.le_iSup (hf : Directed (· ≤ ·) f) (i : ι) : f i ≤ ⨆ j, f j :=
hf.directedOn_range.le_sSup <| Set.mem_range_self _

protected lemma Directed.iSup_le (hf : Directed (· ≤ ·) f) (ha : ∀ i, f i ≤ a) : ⨆ i, f i ≤ a :=
hf.directedOn_range.sSup_le <| Set.forall_mem_range.2 ha

--TODO: We could mimic more `sSup`/`iSup` lemmas

/-- Scott-continuity takes on a simpler form in complete partial orders. -/
lemma CompletePartialOrder.scottContinuous {f : α → β} :
    ScottContinuous f ↔
    ∀ ⦃d : Set α⦄, d.Nonempty → DirectedOn (· ≤ ·) d → IsLUB (f '' d) (f (sSup d)) := by
  refine ⟨fun h d hd₁ hd₂ ↦ h hd₁ hd₂ hd₂.isLUB_sSup, fun h d hne hd a hda ↦ ?_⟩
  rw [hda.unique hd.isLUB_sSup]
  exact h hne hd

open OmegaCompletePartialOrder

/-- A complete partial order is an ω-complete partial order. -/
instance (priority := 100) CompletePartialOrder.toOmegaCompletePartialOrder :
    OmegaCompletePartialOrder α where
  ωSup c := ⨆ n, c n
  le_ωSup c := c.directed.le_iSup
  ωSup_le c _ := c.directed.iSup_le

/-- A complete partial order is an conditionally complete partial order. -/
instance (priority := 100) : ConditionallyCompletePartialOrderSup α where
  isLUB_csSup_of_directed _ h_dir _ _ := h_dir.isLUB_sSup

end CompletePartialOrder

/-- A complete lattice is a complete partial order. -/
instance (priority := 100) CompleteLattice.toCompletePartialOrder [CompleteLattice α] :
    CompletePartialOrder α where
  sSup := sSup
  lubOfDirected _ _ := isLUB_sSup _
```
