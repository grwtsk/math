# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nonempty.Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0134c08032aaa3946e6bf9fa4b8a1832d1d091e3` · SHA-256 `2b9997692fadb3fc799ef91e30a3ce52c166b997c36aeab5df88309323665482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonemptyForall.Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.NonemptyForall.Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a","mathematical_subject":"Logic.Foundations","original_sha256":"64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Nonempty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Logic.Function.Defs

/-!
# Nonempty types

This file proves a few extra facts about `Nonempty`, which is defined in core Lean.

## Main declarations

* `Nonempty.some`: Extracts a witness of nonemptiness using choice. Takes `Nonempty α` explicitly.
* `Classical.arbitrary`: Extracts a witness of nonemptiness using choice. Takes `Nonempty α` as an
  instance.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonemptyForall.Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a

section
variable {α β : Sort*}

@[simp]
theorem Nonempty.forall {α} {p : Nonempty α → Prop} : (∀ h : Nonempty α, p h) ↔ ∀ a, p ⟨a⟩ :=
  Iff.intro (fun h _ ↦ h _) fun h ⟨a⟩ ↦ h a

@[simp]
theorem Nonempty.exists {α} {p : Nonempty α → Prop} : (∃ h : Nonempty α, p h) ↔ ∃ a, p ⟨a⟩ :=
  Iff.intro (fun ⟨⟨a⟩, h⟩ ↦ ⟨a, h⟩) fun ⟨a, h⟩ ↦ ⟨⟨a⟩, h⟩

-- Note: we set low priority here, to ensure it is not applied before `exists_prop`
-- and `exists_const`.
@[simp low]
theorem exists_const_iff {α : Sort*} {P : Prop} : (∃ _ : α, P) ↔ Nonempty α ∧ P :=
  Iff.intro (fun ⟨a, h⟩ ↦ ⟨⟨a⟩, h⟩) fun ⟨⟨a⟩, h⟩ ↦ ⟨a, h⟩

theorem exists_true_iff_nonempty {α : Sort*} : (∃ _ : α, True) ↔ Nonempty α :=
  Iff.intro (fun ⟨a, _⟩ ↦ ⟨a⟩) fun ⟨a⟩ ↦ ⟨a, trivial⟩

theorem Nonempty.imp {α} {p : Prop} : (Nonempty α → p) ↔ (α → p) :=
  Nonempty.forall

theorem not_nonempty_iff_imp_false {α : Sort*} : ¬Nonempty α ↔ α → False :=
  Nonempty.imp

@[simp]
theorem nonempty_psigma {α} {β : α → Sort*} : Nonempty (PSigma β) ↔ ∃ a : α, Nonempty (β a) :=
  Iff.intro (fun ⟨⟨a, c⟩⟩ ↦ ⟨a, ⟨c⟩⟩) fun ⟨a, ⟨c⟩⟩ ↦ ⟨⟨a, c⟩⟩

@[simp]
theorem nonempty_subtype {α} {p : α → Prop} : Nonempty (Subtype p) ↔ ∃ a : α, p a :=
  Iff.intro (fun ⟨⟨a, h⟩⟩ ↦ ⟨a, h⟩) fun ⟨a, h⟩ ↦ ⟨⟨a, h⟩⟩

@[simp]
theorem nonempty_pprod {α β} : Nonempty (PProd α β) ↔ Nonempty α ∧ Nonempty β :=
  Iff.intro (fun ⟨⟨a, b⟩⟩ ↦ ⟨⟨a⟩, ⟨b⟩⟩) fun ⟨⟨a⟩, ⟨b⟩⟩ ↦ ⟨⟨a, b⟩⟩

@[simp]
theorem nonempty_psum {α β} : Nonempty (α ⊕' β) ↔ Nonempty α ∨ Nonempty β :=
  Iff.intro
    (fun ⟨h⟩ ↦
      match h with
      | PSum.inl a => Or.inl ⟨a⟩
      | PSum.inr b => Or.inr ⟨b⟩)
    fun h ↦
    match h with
    | Or.inl ⟨a⟩ => ⟨PSum.inl a⟩
    | Or.inr ⟨b⟩ => ⟨PSum.inr b⟩

@[simp]
theorem nonempty_plift {α} : Nonempty (PLift α) ↔ Nonempty α :=
  Iff.intro (fun ⟨⟨a⟩⟩ ↦ ⟨a⟩) fun ⟨a⟩ ↦ ⟨⟨a⟩⟩

/-- Using `Classical.choice`, lifts a (`Prop`-valued) `Nonempty` instance to a (`Type`-valued)
`Inhabited` instance. `Classical.inhabited_of_nonempty` already exists, in `Init/Classical.lean`,
but the assumption is not a type class argument, which makes it unsuitable for some applications. -/
noncomputable def Classical.inhabited_of_nonempty' {α} [h : Nonempty α] : Inhabited α :=
  ⟨Classical.choice h⟩

/-- Using `Classical.choice`, extracts a term from a `Nonempty` type. -/
protected noncomputable abbrev Nonempty.some {α} (h : Nonempty α) : α :=
  Classical.choice h

/-- Using `Classical.choice`, extracts a term from a `Nonempty` type. -/
protected noncomputable abbrev Classical.arbitrary (α) [h : Nonempty α] : α :=
  Classical.choice h

/-- Given `f : α → β`, if `α` is nonempty then `β` is also nonempty.
`Nonempty` cannot be a `functor`, because `Functor` is restricted to `Type`. -/
theorem Nonempty.map {α β} (f : α → β) : Nonempty α → Nonempty β
  | ⟨h⟩ => ⟨f h⟩

protected theorem Nonempty.map2 {α β γ : Sort*} (f : α → β → γ) :
    Nonempty α → Nonempty β → Nonempty γ
  | ⟨x⟩, ⟨y⟩ => ⟨f x y⟩

protected theorem Nonempty.congr {α β} (f : α → β) (g : β → α) : Nonempty α ↔ Nonempty β :=
  ⟨Nonempty.map f, Nonempty.map g⟩

theorem Nonempty.elim_to_inhabited {α : Sort*} [h : Nonempty α] {p : Prop} (f : Inhabited α → p) :
    p :=
  h.elim <| f ∘ Inhabited.mk

theorem Classical.nonempty_pi {ι} {α : ι → Sort*} : Nonempty (∀ i, α i) ↔ ∀ i, Nonempty (α i) :=
  ⟨fun ⟨f⟩ a ↦ ⟨f a⟩, @Pi.instNonempty _ _⟩

theorem subsingleton_of_not_nonempty {α : Sort*} (h : ¬Nonempty α) : Subsingleton α :=
  ⟨fun x ↦ False.elim <| not_nonempty_iff_imp_false.mp h x⟩

theorem Function.Surjective.nonempty [h : Nonempty β] {f : α → β} (hf : Function.Surjective f) :
    Nonempty α :=
  let ⟨y⟩ := h
  let ⟨x, _⟩ := hf y
  ⟨x⟩

end

section
variable {α β : Type*} {γ : α → Type*}

@[simp]
theorem nonempty_sigma : Nonempty (Σa : α, γ a) ↔ ∃ a : α, Nonempty (γ a) :=
  Iff.intro (fun ⟨⟨a, c⟩⟩ ↦ ⟨a, ⟨c⟩⟩) fun ⟨a, ⟨c⟩⟩ ↦ ⟨⟨a, c⟩⟩

@[simp]
theorem nonempty_sum : Nonempty (α ⊕ β) ↔ Nonempty α ∨ Nonempty β :=
  Iff.intro
    (fun ⟨h⟩ ↦
      match h with
      | Sum.inl a => Or.inl ⟨a⟩
      | Sum.inr b => Or.inr ⟨b⟩)
    fun h ↦
    match h with
    | Or.inl ⟨a⟩ => ⟨Sum.inl a⟩
    | Or.inr ⟨b⟩ => ⟨Sum.inr b⟩

@[simp]
theorem nonempty_prod : Nonempty (α × β) ↔ Nonempty α ∧ Nonempty β :=
  Iff.intro (fun ⟨⟨a, b⟩⟩ ↦ ⟨⟨a⟩, ⟨b⟩⟩) fun ⟨⟨a⟩, ⟨b⟩⟩ ↦ ⟨⟨a, b⟩⟩

@[simp]
theorem nonempty_ulift : Nonempty (ULift α) ↔ Nonempty α :=
  Iff.intro (fun ⟨⟨a⟩⟩ ↦ ⟨a⟩) fun ⟨a⟩ ↦ ⟨⟨a⟩⟩

end
```
