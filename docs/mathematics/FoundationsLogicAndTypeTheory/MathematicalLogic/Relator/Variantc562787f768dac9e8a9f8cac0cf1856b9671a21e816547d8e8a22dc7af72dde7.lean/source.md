# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Relator.Variantc562787f768dac9e8a9f8cac0cf1856b9671a21e816547d8e8a22dc7af72dde7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffa39fd9fd49a6f613dd2a6044ff5314a5e5e312` · SHA-256 `967a5222dd6b99c8c0133cf9c63c1b1499eff654bf7a70b34619a7909e6572cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LiftFun.Variant67ea62767e6c3c59288f68febddacc40c297681685e685c498e6d5882951c247","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67ea62767e6c3c59288f68febddacc40c297681685e685c498e6d5882951c247","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LiftFun.Variant67ea62767e6c3c59288f68febddacc40c297681685e685c498e6d5882951c247","mathematical_subject":"Logic.Foundations","original_sha256":"67ea62767e6c3c59288f68febddacc40c297681685e685c498e6d5882951c247","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Relator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/

import Mathlib.Logic.Function.Defs

/-!
# Relator for functions, pairs, sums, and lists.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LiftFun.Variant67ea62767e6c3c59288f68febddacc40c297681685e685c498e6d5882951c247

namespace Relator
universe u₁ u₂ v₁ v₂

/- TODO(johoelzl):
* should we introduce relators of datatypes as recursive function or as inductive
predicate? For now we stick to the recursor approach.
* relation lift for datatypes, Π, Σ, set, and subtype types
* proof composition and identity laws
* implement method to derive relators from datatype
-/

section

variable {α : Sort u₁} {β : Sort u₂} {γ : Sort v₁} {δ : Sort v₂}
variable (R : α → β → Prop) (S : γ → δ → Prop)

/-- The binary relations `R : α → β → Prop` and `S : γ → δ → Prop` induce a binary
    relation on functions `LiftFun : (α → γ) → (β → δ) → Prop`. -/
def LiftFun (f : α → γ) (g : β → δ) : Prop :=
  ∀⦃a b⦄, R a b → S (f a) (g b)

/-- `(R ⇒ S) f g` means `LiftFun R S f g`. -/
scoped infixr:40 " ⇒ " => LiftFun

end

section

variable {α : Type u₁} {β : Type u₂} (R : α → β → Prop)

/-- A relation is "right total" if every element appears on the right. -/
def RightTotal : Prop := ∀ b, ∃ a, R a b

/-- A relation is "left total" if every element appears on the left. -/
def LeftTotal : Prop := ∀ a, ∃ b, R a b

/-- A relation is "bi-total" if it is both right total and left total. -/
def BiTotal : Prop := LeftTotal R ∧ RightTotal R

/-- A relation is "left unique" if every element on the right is paired with at
    most one element on the left. -/
def LeftUnique : Prop := ∀ ⦃a b c⦄, R a c → R b c → a = b

/-- A relation is "right unique" if every element on the left is paired with at
    most one element on the right. -/
def RightUnique : Prop := ∀ ⦃a b c⦄, R a b → R a c → b = c

/-- A relation is "bi-unique" if it is both left unique and right unique. -/
def BiUnique : Prop := LeftUnique R ∧ RightUnique R

variable {R}

lemma RightTotal.rel_forall (h : RightTotal R) :
    ((R ⇒ (· → ·)) ⇒ (· → ·)) (fun p => ∀i, p i) (fun q => ∀i, q i) :=
  fun _ _ Hrel H b => Exists.elim (h b) (fun _ Rab => Hrel Rab (H _))

lemma LeftTotal.rel_exists (h : LeftTotal R) :
    ((R ⇒ (· → ·)) ⇒ (· → ·)) (fun p => ∃i, p i) (fun q => ∃i, q i) :=
  fun _ _ Hrel ⟨a, pa⟩ => (h a).imp fun _ Rab => Hrel Rab pa

lemma BiTotal.rel_forall (h : BiTotal R) :
    ((R ⇒ Iff) ⇒ Iff) (fun p => ∀i, p i) (fun q => ∀i, q i) :=
  fun _ _ Hrel =>
    ⟨fun H b => Exists.elim (h.right b) (fun _ Rab => (Hrel Rab).mp (H _)),
      fun H a => Exists.elim (h.left a) (fun _ Rab => (Hrel Rab).mpr (H _))⟩

lemma BiTotal.rel_exists (h : BiTotal R) :
    ((R ⇒ Iff) ⇒ Iff) (fun p => ∃i, p i) (fun q => ∃i, q i) :=
  fun _ _ Hrel =>
    ⟨fun ⟨a, pa⟩ => (h.left a).imp fun _ Rab => (Hrel Rab).1 pa,
      fun ⟨b, qb⟩ => (h.right b).imp fun _ Rab => (Hrel Rab).2 qb⟩

lemma left_unique_of_rel_eq {eq' : β → β → Prop} (he : (R ⇒ (R ⇒ Iff)) Eq eq') : LeftUnique R :=
  fun a b c (ac : R a c) (bc : R b c) => (he ac bc).mpr ((he bc bc).mp rfl)

end

lemma rel_imp : (Iff ⇒ (Iff ⇒ Iff)) (· → ·) (· → ·) :=
  fun _ _ h _ _ l => imp_congr h l

lemma rel_not : (Iff ⇒ Iff) Not Not :=
  fun _ _ h => not_congr h

lemma bi_total_eq {α : Type u₁} : Relator.BiTotal (@Eq α) :=
  { left := fun a => ⟨a, rfl⟩, right := fun a => ⟨a, rfl⟩ }

variable {α : Type*} {β : Type*} {γ : Type*}
variable {r : α → β → Prop}

lemma LeftUnique.flip (h : LeftUnique r) : RightUnique (flip r) :=
  fun _ _ _ h₁ h₂ => h h₁ h₂

lemma rel_and : ((·↔·) ⇒ (·↔·) ⇒ (·↔·)) (·∧·) (·∧·) :=
  fun _ _ h₁ _ _ h₂ => and_congr h₁ h₂

lemma rel_or : ((·↔·) ⇒ (·↔·) ⇒ (·↔·)) (·∨·) (·∨·) :=
  fun _ _ h₁ _ _ h₂ => or_congr h₁ h₂

lemma rel_iff : ((·↔·) ⇒ (·↔·) ⇒ (·↔·)) (·↔·) (·↔·) :=
  fun _ _ h₁ _ _ h₂ => iff_congr h₁ h₂

lemma rel_eq {r : α → β → Prop} (hr : BiUnique r) : (r ⇒ r ⇒ (·↔·)) (·=·) (·=·) :=
  fun _ _ h₁ _ _ h₂ => ⟨fun h => hr.right h₁ <| h.symm ▸ h₂, fun h => hr.left h₁ <| h.symm ▸ h₂⟩

open Function

variable {r₁₁ : α → α → Prop} {r₁₂ : α → β → Prop} {r₂₁ : β → α → Prop}
  {r₂₃ : β → γ → Prop} {r₁₃ : α → γ → Prop}

namespace LeftTotal

protected lemma refl (hr : ∀ a : α, r₁₁ a a) :
    LeftTotal r₁₁ :=
  fun a ↦ ⟨a, hr _⟩

protected lemma symm (hr : ∀ (a : α) (b : β), r₁₂ a b → r₂₁ b a) :
    LeftTotal r₁₂ → RightTotal r₂₁ :=
  fun h a ↦ (h a).imp (fun _ ↦ hr _ _)

protected lemma trans (hr : ∀ (a : α) (b : β) (c : γ), r₁₂ a b → r₂₃ b c → r₁₃ a c) :
    LeftTotal r₁₂ → LeftTotal r₂₃ → LeftTotal r₁₃ :=
  fun h₁ h₂ a ↦ let ⟨b, hab⟩ := h₁ a; let ⟨c, hbc⟩ := h₂ b; ⟨c, hr _ _ _ hab hbc⟩

end LeftTotal

namespace RightTotal

protected lemma refl (hr : ∀ a : α, r₁₁ a a) : RightTotal r₁₁ :=
  LeftTotal.refl hr

protected lemma symm (hr : ∀ (a : α) (b : β), r₁₂ a b → r₂₁ b a) :
    RightTotal r₁₂ → LeftTotal r₂₁ :=
  LeftTotal.symm (fun _ _ ↦ hr _ _)

protected lemma trans (hr : ∀ (a : α) (b : β) (c : γ), r₁₂ a b → r₂₃ b c → r₁₃ a c) :
    RightTotal r₁₂ → RightTotal r₂₃ → RightTotal r₁₃ :=
  swap <| LeftTotal.trans (fun _ _ _ ↦ swap <| hr _ _ _)

end RightTotal

namespace BiTotal

protected lemma refl (hr : ∀ a : α, r₁₁ a a) :
    BiTotal r₁₁ :=
  ⟨LeftTotal.refl hr, RightTotal.refl hr⟩

protected lemma symm (hr : ∀ (a : α) (b : β), r₁₂ a b → r₂₁ b a) :
    BiTotal r₁₂ → BiTotal r₂₁ :=
  fun h ↦ ⟨h.2.symm hr, h.1.symm hr⟩

protected lemma trans (hr : ∀ (a : α) (b : β) (c : γ), r₁₂ a b → r₂₃ b c → r₁₃ a c) :
    BiTotal r₁₂ → BiTotal r₂₃ → BiTotal r₁₃ :=
  fun h₁ h₂ ↦ ⟨h₁.1.trans hr h₂.1, h₁.2.trans hr h₂.2⟩

end BiTotal

end Relator
```
