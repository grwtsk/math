# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Shrink.Variant8a45a51898ca5b098f6b20e348dcdecb8c36797fc970a0ea9182429116c627b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a164bdb949d72595ff85bc44478eaf9710bb08df` · SHA-256 `eb1a8f4dfd8e2a14fb1cf9839b6cdd0faa1e8b886fae5df749382de9a413f484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EquivShrinkBot.Variant5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.EquivShrinkBot.Variant5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Order.SuccPred.Basic
public import Mathlib.Logic.Small.Defs

/-!
# Order instances on Shrink

If `α : Type v` is `u`-small, we transport various order related
instances on `α` to `Shrink.{u} α`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EquivShrinkBot.Variant5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4

@[expose] public section

universe u

variable {α : Type*} [Small.{u} α]

section Bot
variable [Bot α]

@[to_dual]
noncomputable instance : Bot (Shrink.{u} α) where
  bot := equivShrink _ ⊥

@[to_dual (attr := simp)]
lemma equivShrink_bot : equivShrink.{u} α ⊥ = ⊥ := rfl

@[to_dual (attr := simp)]
lemma equivShrink_symm_bot : (equivShrink.{u} α).symm ⊥ = ⊥ :=
  (equivShrink.{u} α).injective (by simp)

end Bot

section Preorder
variable [Preorder α]

noncomputable instance : Preorder (Shrink.{u} α) :=
  Preorder.lift (equivShrink α).symm

variable (α) in
/-- The order isomorphism `α ≃o Shrink.{u} α`. -/
noncomputable def orderIsoShrink : α ≃o Shrink.{u} α where
  toEquiv := equivShrink α
  map_rel_iff' {a b} := by
    obtain ⟨a, rfl⟩ := (equivShrink.{u} α).symm.surjective a
    obtain ⟨b, rfl⟩ := (equivShrink.{u} α).symm.surjective b
    simp only [Equiv.apply_symm_apply]
    rfl

@[simp]
lemma orderIsoShrink_apply (a : α) :
    orderIsoShrink α a = equivShrink α a := rfl

@[simp]
lemma orderIsoShrink_symm_apply (a : Shrink.{u} α) :
    (orderIsoShrink α).symm a = (equivShrink α).symm a := rfl

@[simp]
theorem equivShrink_le_equivShrink {x y : α} : equivShrink α x ≤ equivShrink α y ↔ x ≤ y :=
  (orderIsoShrink α).map_rel_iff

@[simp]
theorem equivShrink_lt_equivShrink {x y : α} : equivShrink α x < equivShrink α y ↔ x < y :=
  (orderIsoShrink α).toRelIsoLT.map_rel_iff

@[to_dual]
noncomputable instance [OrderBot α] : OrderBot (Shrink.{u} α) where
  bot_le a := by simp [← (orderIsoShrink.{u} α).symm.le_iff_le]

@[to_dual]
noncomputable instance [SuccOrder α] : SuccOrder (Shrink.{u} α) :=
  SuccOrder.ofOrderIso (orderIsoShrink.{u} α)

@[to_dual]
instance [WellFoundedLT α] : WellFoundedLT (Shrink.{u} α) :=
  (orderIsoShrink.{u} α).symm.toRelIsoLT.toRelEmbedding.wellFounded'

end Preorder

noncomputable instance [PartialOrder α] : PartialOrder (Shrink.{u} α) :=
  (equivShrink _).symm.injective.partialOrder _ .rfl .rfl

noncomputable instance [LinearOrder α] : LinearOrder (Shrink.{u} α) :=
  .lift' _ (equivShrink _).symm.injective
```
