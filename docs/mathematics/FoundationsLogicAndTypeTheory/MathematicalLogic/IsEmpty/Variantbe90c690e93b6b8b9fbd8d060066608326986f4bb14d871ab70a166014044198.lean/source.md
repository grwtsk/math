# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEmpty.Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f5b997cfdd8678ed0db9c782628c1a439eb068d` · SHA-256 `b8ffafbbcbc547ff0e84db32adaf0fcf5c35401adbf065163c6085d640682351`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEmpty.Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsEmpty.Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f","mathematical_subject":"Logic.Foundations","original_sha256":"8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/IsEmpty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Logic.Function.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEmpty.Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f

#align_import logic.is_empty from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# Types that are empty

In this file we define a typeclass `IsEmpty`, which expresses that a type has no elements.

## Main declaration

* `IsEmpty`: a typeclass that expresses that a type is empty.
-/

set_option autoImplicit true


variable {α β γ : Sort*}

/-- `IsEmpty α` expresses that `α` is empty. -/
class IsEmpty (α : Sort*) : Prop where
  protected false : α → False
#align is_empty IsEmpty

instance instIsEmptyEmpty : IsEmpty Empty :=
  ⟨Empty.elim⟩

instance instIsEmptyPEmpty : IsEmpty PEmpty :=
  ⟨PEmpty.elim⟩

instance : IsEmpty False :=
  ⟨id⟩

instance Fin.isEmpty : IsEmpty (Fin 0) :=
  ⟨fun n ↦ Nat.not_lt_zero n.1 n.2⟩

protected theorem Function.isEmpty [IsEmpty β] (f : α → β) : IsEmpty α :=
  ⟨fun x ↦ IsEmpty.false (f x)⟩
#align function.is_empty Function.isEmpty

instance {p : α → Sort*} [h : Nonempty α] [∀ x, IsEmpty (p x)] : IsEmpty (∀ x, p x) :=
  h.elim fun x ↦ Function.isEmpty <| Function.eval x

instance PProd.isEmpty_left [IsEmpty α] : IsEmpty (PProd α β) :=
  Function.isEmpty PProd.fst

instance PProd.isEmpty_right [IsEmpty β] : IsEmpty (PProd α β) :=
  Function.isEmpty PProd.snd

instance Prod.isEmpty_left {α β} [IsEmpty α] : IsEmpty (α × β) :=
  Function.isEmpty Prod.fst

instance Prod.isEmpty_right {α β} [IsEmpty β] : IsEmpty (α × β) :=
  Function.isEmpty Prod.snd

instance [IsEmpty α] [IsEmpty β] : IsEmpty (PSum α β) :=
  ⟨fun x ↦ PSum.rec IsEmpty.false IsEmpty.false x⟩

instance instIsEmptySum {α β} [IsEmpty α] [IsEmpty β] : IsEmpty (Sum α β) :=
  ⟨fun x ↦ Sum.rec IsEmpty.false IsEmpty.false x⟩

/-- subtypes of an empty type are empty -/
instance [IsEmpty α] (p : α → Prop) : IsEmpty (Subtype p) :=
  ⟨fun x ↦ IsEmpty.false x.1⟩

/-- subtypes by an all-false predicate are false. -/
theorem Subtype.isEmpty_of_false {p : α → Prop} (hp : ∀ a, ¬p a) : IsEmpty (Subtype p) :=
  ⟨fun x ↦ hp _ x.2⟩
#align subtype.is_empty_of_false Subtype.isEmpty_of_false

/-- subtypes by false are false. -/
instance Subtype.isEmpty_false : IsEmpty { _a : α // False } :=
  Subtype.isEmpty_of_false fun _ ↦ id

instance Sigma.isEmpty_left {α} [IsEmpty α] {E : α → Type*} : IsEmpty (Sigma E) :=
  Function.isEmpty Sigma.fst

example [h : Nonempty α] [IsEmpty β] : IsEmpty (α → β) := by infer_instance

/-- Eliminate out of a type that `IsEmpty` (without using projection notation). -/
@[elab_as_elim]
def isEmptyElim [IsEmpty α] {p : α → Sort*} (a : α) : p a :=
  (IsEmpty.false a).elim
#align is_empty_elim isEmptyElim

theorem isEmpty_iff : IsEmpty α ↔ α → False :=
  ⟨@IsEmpty.false α, IsEmpty.mk⟩
#align is_empty_iff isEmpty_iff

namespace IsEmpty

open Function

/-- Eliminate out of a type that `IsEmpty` (using projection notation). -/
@[elab_as_elim]
protected def elim {α : Sort u} (_ : IsEmpty α) {p : α → Sort*} (a : α) : p a :=
  isEmptyElim a
#align is_empty.elim IsEmpty.elim

/-- Non-dependent version of `IsEmpty.elim`. Helpful if the elaborator cannot elaborate `h.elim a`
  correctly. -/
protected def elim' {β : Sort*} (h : IsEmpty α) (a : α) : β :=
  (h.false a).elim
#align is_empty.elim' IsEmpty.elim'

protected theorem prop_iff {p : Prop} : IsEmpty p ↔ ¬p :=
  isEmpty_iff
#align is_empty.prop_iff IsEmpty.prop_iff

variable [IsEmpty α]

@[simp]
theorem forall_iff {p : α → Prop} : (∀ a, p a) ↔ True :=
  iff_true_intro isEmptyElim
#align is_empty.forall_iff IsEmpty.forall_iff

@[simp]
theorem exists_iff {p : α → Prop} : (∃ a, p a) ↔ False :=
  iff_false_intro fun ⟨x, _⟩ ↦ IsEmpty.false x
#align is_empty.exists_iff IsEmpty.exists_iff

-- see Note [lower instance priority]
instance (priority := 100) : Subsingleton α :=
  ⟨isEmptyElim⟩

end IsEmpty

@[simp]
theorem not_nonempty_iff : ¬Nonempty α ↔ IsEmpty α :=
  ⟨fun h ↦ ⟨fun x ↦ h ⟨x⟩⟩, fun h1 h2 ↦ h2.elim h1.elim⟩
#align not_nonempty_iff not_nonempty_iff

@[simp]
theorem not_isEmpty_iff : ¬IsEmpty α ↔ Nonempty α :=
  not_iff_comm.mp not_nonempty_iff
#align not_is_empty_iff not_isEmpty_iff

@[simp]
theorem isEmpty_Prop {p : Prop} : IsEmpty p ↔ ¬p := by
  simp only [← not_nonempty_iff, nonempty_Prop]
#align is_empty_Prop isEmpty_Prop

@[simp]
theorem isEmpty_pi {π : α → Sort*} : IsEmpty (∀ a, π a) ↔ ∃ a, IsEmpty (π a) := by
  simp only [← not_nonempty_iff, Classical.nonempty_pi, not_forall]
#align is_empty_pi isEmpty_pi

@[simp]
theorem isEmpty_sigma {α} {E : α → Type*} : IsEmpty (Sigma E) ↔ ∀ a, IsEmpty (E a) := by
  simp only [← not_nonempty_iff, nonempty_sigma, not_exists]
#align is_empty_sigma isEmpty_sigma

@[simp]
theorem isEmpty_psigma {α} {E : α → Sort*} : IsEmpty (PSigma E) ↔ ∀ a, IsEmpty (E a) := by
  simp only [← not_nonempty_iff, nonempty_psigma, not_exists]
#align is_empty_psigma isEmpty_psigma

@[simp]
theorem isEmpty_subtype (p : α → Prop) : IsEmpty (Subtype p) ↔ ∀ x, ¬p x := by
  simp only [← not_nonempty_iff, nonempty_subtype, not_exists]
#align is_empty_subtype isEmpty_subtype

@[simp]
theorem isEmpty_prod {α β : Type*} : IsEmpty (α × β) ↔ IsEmpty α ∨ IsEmpty β := by
  simp only [← not_nonempty_iff, nonempty_prod, not_and_or]
#align is_empty_prod isEmpty_prod

@[simp]
theorem isEmpty_pprod : IsEmpty (PProd α β) ↔ IsEmpty α ∨ IsEmpty β := by
  simp only [← not_nonempty_iff, nonempty_pprod, not_and_or]
#align is_empty_pprod isEmpty_pprod

@[simp]
theorem isEmpty_sum {α β} : IsEmpty (Sum α β) ↔ IsEmpty α ∧ IsEmpty β := by
  simp only [← not_nonempty_iff, nonempty_sum, not_or]
#align is_empty_sum isEmpty_sum

@[simp]
theorem isEmpty_psum {α β} : IsEmpty (PSum α β) ↔ IsEmpty α ∧ IsEmpty β := by
  simp only [← not_nonempty_iff, nonempty_psum, not_or]
#align is_empty_psum isEmpty_psum

@[simp]
theorem isEmpty_ulift {α} : IsEmpty (ULift α) ↔ IsEmpty α := by
  simp only [← not_nonempty_iff, nonempty_ulift]
#align is_empty_ulift isEmpty_ulift

@[simp]
theorem isEmpty_plift {α} : IsEmpty (PLift α) ↔ IsEmpty α := by
  simp only [← not_nonempty_iff, nonempty_plift]
#align is_empty_plift isEmpty_plift

theorem wellFounded_of_isEmpty {α} [IsEmpty α] (r : α → α → Prop) : WellFounded r :=
  ⟨isEmptyElim⟩
#align well_founded_of_empty wellFounded_of_isEmpty

variable (α)

theorem isEmpty_or_nonempty : IsEmpty α ∨ Nonempty α :=
  (em <| IsEmpty α).elim Or.inl <| Or.inr ∘ not_isEmpty_iff.mp
#align is_empty_or_nonempty isEmpty_or_nonempty

@[simp]
theorem not_isEmpty_of_nonempty [h : Nonempty α] : ¬IsEmpty α :=
  not_isEmpty_iff.mpr h
#align not_is_empty_of_nonempty not_isEmpty_of_nonempty

variable {α}

theorem Function.extend_of_isEmpty [IsEmpty α] (f : α → β) (g : α → γ) (h : β → γ) :
    Function.extend f g h = h :=
  funext fun _ ↦ (Function.extend_apply' _ _ _) fun ⟨a, _⟩ ↦ isEmptyElim a
#align function.extend_of_empty Function.extend_of_isEmpty
```
