# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantb1b8912650eecf17773af5a802155fb4bd62f791a7af527083cbe2ef71c9cdce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff5db05029a1f28c600766b2fce746c993dd8ad6` · SHA-256 `5e7019d2db521df1c16ccb97848f63570876b19a112030b73a1dc503460d63c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LeSelfAdd.Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LeSelfAdd.Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"df5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
public import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-! # Adjoining top/bottom elements to ordered monoids.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.LeSelfAdd.Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa

public section

universe u

variable {α : Type u}

namespace WithTop

@[to_dual]
instance [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedAddMonoid (WithTop α) where
  add_le_add_left _ _ := add_le_add_left
  add_le_add_right _ _ := add_le_add_right

instance canonicallyOrderedAdd [Add α] [Preorder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedAdd (WithTop α) where
  le_self_add
  | ⊤, _ => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_self_add
  le_add_self
  | ⊤, ⊤ | ⊤, (b : α) => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_add_self

end WithTop

namespace WithBot

protected theorem le_self_add [Add α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ y + x := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_self_add

protected theorem le_add_self [AddCommMagma α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ x + y := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_add_self

@[simp]
protected theorem top_add_of_ne_bot [PartialOrder α] [OrderTop α] [Add α] [CanonicallyOrderedAdd α]
    {a : WithBot α} (h : a ≠ ⊥) : ⊤ + a = ⊤ := by
  lift a to α using h
  exact WithBot.coe_inj.mpr (by simp [eq_top_iff])

@[simp]
protected theorem add_top_of_ne_bot [PartialOrder α] [OrderTop α] [Add α] [CanonicallyOrderedAdd α]
    {a : WithBot α} (h : a ≠ ⊥) : a + ⊤ = ⊤ := by
  lift a to α using h
  exact WithBot.coe_inj.mpr (by simp [eq_top_iff])

lemma lt_zero_iff_eq_bot {α : Type*} [AddMonoid α] [Preorder α] [CanonicallyOrderedAdd α]
    (a : WithBot α) : a < 0 ↔ a = ⊥ := by
  induction a <;> simp

end WithBot
```
