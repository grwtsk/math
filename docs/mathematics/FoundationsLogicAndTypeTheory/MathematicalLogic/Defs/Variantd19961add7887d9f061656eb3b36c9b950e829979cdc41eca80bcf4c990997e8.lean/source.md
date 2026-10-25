# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantd19961add7887d9f061656eb3b36c9b950e829979cdc41eca80bcf4c990997e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8e08b32993955ca1091f17357b4d9c80cbec6c2` · SHA-256 `5aa7750f1bfdb6abd0ab593d0b17d595e06011c51892618f4776d7868cc58fb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variant5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Nontrivial.Variant5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e","mathematical_subject":"Logic.Foundations","original_sha256":"5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Nontrivial/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Tactic.Push.Attr

/-!
# Nontrivial types

A type is *nontrivial* if it contains at least two elements. This is useful in particular for rings
(where it is equivalent to the fact that zero is different from one) and for vector spaces
(where it is equivalent to the fact that the dimension is positive).

We introduce a typeclass `Nontrivial` formalizing this property.

Basic results about nontrivial types are in `Mathlib/Basic/Nontrivial/Basic.lean`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variant5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e

public section

variable {α : Type*} {β : Type*}

/-- Predicate typeclass for expressing that a type is not reduced to a single element. In rings,
this is equivalent to `0 ≠ 1`. In vector spaces, this is equivalent to positive dimension. -/
class Nontrivial (α : Type*) : Prop where
  /-- In a nontrivial type, there exists a pair of distinct terms. -/
  exists_pair_ne : ∃ x y : α, x ≠ y

theorem nontrivial_iff : Nontrivial α ↔ ∃ x y : α, x ≠ y :=
  ⟨fun h ↦ h.exists_pair_ne, fun h ↦ ⟨h⟩⟩

theorem exists_pair_ne (α : Type*) [Nontrivial α] : ∃ x y : α, x ≠ y :=
  Nontrivial.exists_pair_ne

/-- Pushforward a `Nontrivial` instance along an injective function. -/
protected theorem Function.Injective.nontrivial [Nontrivial α] {f : α → β}
    (hf : Function.Injective f) : Nontrivial β :=
  let ⟨x, y, h⟩ := exists_pair_ne α
  ⟨⟨f x, f y, hf.ne h⟩⟩

/-- An injective function from a nontrivial type has an argument at
which it does not take a given value. -/
protected theorem Function.Injective.exists_ne [Nontrivial α] {f : α → β}
    (hf : Function.Injective f) (y : β) : ∃ x, f x ≠ y := by
  rcases exists_pair_ne α with ⟨x₁, x₂, hx⟩
  by_cases h : f x₂ = y
  · exact ⟨x₁, (hf.ne_iff' h).2 hx⟩
  · exact ⟨x₂, h⟩

-- See Note [decidable namespace]
protected theorem Decidable.exists_ne [Nontrivial α] [DecidableEq α] (x : α) : ∃ y, y ≠ x := by
  rcases exists_pair_ne α with ⟨y, y', h⟩
  by_cases hx : x = y
  · rw [← hx] at h
    exact ⟨y', h.symm⟩
  · exact ⟨y, Ne.symm hx⟩

theorem exists_ne [Nontrivial α] (x : α) : ∃ y, y ≠ x := by
  classical
  exact Decidable.exists_ne x

-- `x` and `y` are explicit here, as they are often needed to guide typechecking of `h`.
theorem nontrivial_of_ne (x y : α) (h : x ≠ y) : Nontrivial α :=
  ⟨⟨x, y, h⟩⟩

theorem nontrivial_iff_exists_ne (x : α) : Nontrivial α ↔ ∃ y, y ≠ x :=
  ⟨fun h ↦ @exists_ne α h x, fun ⟨_, hy⟩ ↦ nontrivial_of_ne _ _ hy⟩

theorem Function.nontrivial_of_nontrivial (α β : Type*) [Nontrivial (α → β)] :
    Nontrivial β := by
  obtain ⟨f, g, h⟩ := exists_pair_ne (α → β)
  rw [ne_eq, funext_iff, Classical.not_forall] at h
  obtain ⟨a, h⟩ := h
  exact nontrivial_of_ne _ _ h

instance : Nontrivial Prop :=
  ⟨⟨True, False, true_ne_false⟩⟩

/-- See Note [lower instance priority]

Note that since this and `instNonemptyOfInhabited` are the most "obvious" way to find a nonempty
instance if no direct instance can be found, we give this a higher priority than the usual `100`.
-/
instance (priority := 500) Nontrivial.to_nonempty [Nontrivial α] : Nonempty α :=
  let ⟨x, _⟩ := _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variant5355bd507f433008d09632e35b33596c0d46b5f741a60ac72f98e39832c38d2e.exists_pair_ne α
  ⟨x⟩

theorem subsingleton_iff : Subsingleton α ↔ ∀ x y : α, x = y :=
  ⟨by
    intro h
    exact Subsingleton.elim, fun h ↦ ⟨h⟩⟩

@[push]
theorem not_nontrivial_iff_subsingleton : ¬Nontrivial α ↔ Subsingleton α := by
  simp only [nontrivial_iff, subsingleton_iff, not_exists, Classical.not_not]

theorem not_nontrivial (α) [Subsingleton α] : ¬Nontrivial α :=
  fun ⟨⟨x, y, h⟩⟩ ↦ h <| Subsingleton.elim x y

theorem not_subsingleton (α) [Nontrivial α] : ¬Subsingleton α :=
  fun _ => not_nontrivial _ ‹_›

@[push]
lemma not_subsingleton_iff_nontrivial : ¬Subsingleton α ↔ Nontrivial α := by
  rw [← not_nontrivial_iff_subsingleton, Classical.not_not]

/-- A type is either a subsingleton or nontrivial. -/
theorem subsingleton_or_nontrivial (α : Type*) : Subsingleton α ∨ Nontrivial α := by
  rw [← not_nontrivial_iff_subsingleton, or_comm]
  exact Classical.em _

theorem false_of_nontrivial_of_subsingleton (α : Type*) [Nontrivial α] [Subsingleton α] : False :=
  not_nontrivial _ ‹_›

/-- Pullback a `Nontrivial` instance along a surjective function. -/
protected theorem Function.Surjective.nontrivial [Nontrivial β] {f : α → β}
    (hf : Function.Surjective f) : Nontrivial α := by
  rcases exists_pair_ne β with ⟨x, y, h⟩
  rcases hf x with ⟨x', hx'⟩
  rcases hf y with ⟨y', hy'⟩
  have : x' ≠ y' := by
    refine fun H ↦ h ?_
    rw [← hx', ← hy', H]
  exact ⟨⟨x', y', this⟩⟩

namespace Bool

instance : Nontrivial Bool :=
  ⟨⟨true, false, nofun⟩⟩

end Bool

theorem NeZero.nontrivial {α : Type*} [Zero α] (a : α) [NeZero a] : Nontrivial α :=
  ⟨⟨a, 0, NeZero.ne a⟩⟩
```
