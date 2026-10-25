# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Well.Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7145372a06606baccb12e5a6cc49dc1e1e4f564b` · SHA-256 `283ece3cee12e38859cc462703653c043afb75d88bbf0291c0ff169ab0e637ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.WellOrderExtension.Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.WellOrderExtension.Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef","mathematical_subject":"Logic.SetTheory","original_sha256":"37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Extension/Well.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Junyan Xu
-/
import Mathlib.Data.Prod.Lex
import Mathlib.SetTheory.Ordinal.Rank

/-!
# Extend a well-founded order to a well-order

This file constructs a well-order (linear well-founded order) which is an extension of a given
well-founded order.

## Proof idea

We can map our order into two well-orders:
* the first map respects the order but isn't necessarily injective. Namely, this is the *rank*
  function `IsWellFounded.rank : α → Ordinal`.
* the second map is injective but doesn't necessarily respect the order. This is an arbitrary
  embedding into `Cardinal` given by `embeddingToCardinal`.

Then their lexicographic product is a well-founded linear order which our original order injects in.

## Implementation note

The definition in `mathlib` 3 used an auxiliary well-founded order on `α` lifted from `Cardinal`,
instead of using `Cardinal` directly. The new definition is definitionally equal
to the `mathlib` 3 version but avoids non-standard instances.

## Tags

well founded relation, well order, extension
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.WellOrderExtension.Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef

universe u

variable {α : Type u} {r : α → α → Prop}

namespace IsWellFounded

variable {α : Type u} (r : α → α → Prop) [IsWellFounded α r]

/-- An arbitrary well order on `α` that extends `r`.

The construction maps `r` into two well-orders: the first map is `IsWellFounded.rank`, which is not
necessarily injective but respects the order `r`; the other map is the identity (with an arbitrarily
chosen well-order on `α`), which is injective but doesn't respect `r`.

By taking the lexicographic product of the two, we get both properties, so we can pull it back and
get a well-order that extend our original order `r`. Another way to view this is that we choose an
arbitrary well-order to serve as a tiebreak between two elements of same rank.
-/
noncomputable def wellOrderExtension : LinearOrder α :=
  @LinearOrder.lift' α (Ordinal ×ₗ Cardinal) _ (fun a : α => (rank r a, embeddingToCardinal a))
    fun _ _ h => embeddingToCardinal.injective <| congr_arg Prod.snd h

instance wellOrderExtension.isWellFounded_lt : IsWellFounded α (wellOrderExtension r).lt :=
  ⟨InvImage.wf (fun a : α => (rank r a, embeddingToCardinal a)) <|
    Ordinal.lt_wf.prod_lex Cardinal.lt_wf⟩

instance wellOrderExtension.isWellOrder_lt : IsWellOrder α (wellOrderExtension r).lt where

/-- Any well-founded relation can be extended to a well-ordering on that type. -/
theorem exists_well_order_ge : ∃ s, r ≤ s ∧ IsWellOrder α s :=
  ⟨(wellOrderExtension r).lt, fun _ _ h => Prod.Lex.left _ _ (rank_lt_of_rel h), ⟨⟩⟩

end IsWellFounded

/-- A type alias for `α`, intended to extend a well-founded order on `α` to a well-order. -/
def WellOrderExtension (α : Type*) : Type _ := α

instance [Inhabited α] : Inhabited (WellOrderExtension α) := ‹_›

/-- "Identity" equivalence between a well-founded order and its well-order extension. -/
def toWellOrderExtension : α ≃ WellOrderExtension α :=
  Equiv.refl _

noncomputable instance [LT α] [h : WellFoundedLT α] : LinearOrder (WellOrderExtension α) :=
  h.wellOrderExtension

instance WellOrderExtension.wellFoundedLT [LT α] [WellFoundedLT α] :
    WellFoundedLT (WellOrderExtension α) :=
  IsWellFounded.wellOrderExtension.isWellFounded_lt (α := α) (· < ·)

theorem toWellOrderExtension_strictMono [Preorder α] [WellFoundedLT α] :
    StrictMono (toWellOrderExtension : α → WellOrderExtension α) := fun _ _ h =>
  Prod.Lex.left _ _ <| IsWellFounded.rank_lt_of_rel h
```
