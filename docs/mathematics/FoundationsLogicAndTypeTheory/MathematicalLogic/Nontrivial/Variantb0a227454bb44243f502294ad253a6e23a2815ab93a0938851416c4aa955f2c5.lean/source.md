# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0824e865cd46e3b10f7793478da1283c4531828e` · SHA-256 `27a67dc057f7a7510ad6a053f034fadf8b696bdf53fa60b894ea16c5c45e806b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"deda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3","mathematical_subject":"Logic.Foundations","original_sha256":"deda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/Nontrivial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Tactic.Attr.Register
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Subtype
import Mathlib.Logic.Function.Basic
import Mathlib.Logic.Unique


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3

#align_import logic.nontrivial from "leanprover-community/mathlib"@"48fb5b5280e7c81672afc9524185ae994553ebf4"

/-!
# Nontrivial types

A type is *nontrivial* if it contains at least two elements. This is useful in particular for rings
(where it is equivalent to the fact that zero is different from one) and for vector spaces
(where it is equivalent to the fact that the dimension is positive).

We introduce a typeclass `Nontrivial` formalizing this property.
-/


variable {α : Type*} {β : Type*}

open Classical

/-- Predicate typeclass for expressing that a type is not reduced to a single element. In rings,
this is equivalent to `0 ≠ 1`. In vector spaces, this is equivalent to positive dimension. -/
class Nontrivial (α : Type*) : Prop where
  /-- In a nontrivial type, there exists a pair of distinct terms. -/
  exists_pair_ne : ∃ x y : α, x ≠ y
#align nontrivial Nontrivial

theorem nontrivial_iff : Nontrivial α ↔ ∃ x y : α, x ≠ y :=
  ⟨fun h ↦ h.exists_pair_ne, fun h ↦ ⟨h⟩⟩
#align nontrivial_iff nontrivial_iff

theorem exists_pair_ne (α : Type*) [Nontrivial α] : ∃ x y : α, x ≠ y :=
  Nontrivial.exists_pair_ne
#align exists_pair_ne exists_pair_ne

-- See Note [decidable namespace]
protected theorem Decidable.exists_ne [Nontrivial α] [DecidableEq α] (x : α) : ∃ y, y ≠ x := by
  rcases exists_pair_ne α with ⟨y, y', h⟩
  by_cases hx:x = y
  · rw [← hx] at h
    exact ⟨y', h.symm⟩
  · exact ⟨y, Ne.symm hx⟩
#align decidable.exists_ne Decidable.exists_ne


theorem exists_ne [Nontrivial α] (x : α) : ∃ y, y ≠ x := by
  letI := Classical.decEq α; exact Decidable.exists_ne x
#align exists_ne exists_ne

-- `x` and `y` are explicit here, as they are often needed to guide typechecking of `h`.
theorem nontrivial_of_ne (x y : α) (h : x ≠ y) : Nontrivial α :=
  ⟨⟨x, y, h⟩⟩
#align nontrivial_of_ne nontrivial_of_ne

-- `x` and `y` are explicit here, as they are often needed to guide typechecking of `h`.
theorem nontrivial_of_lt [Preorder α] (x y : α) (h : x < y) : Nontrivial α :=
  ⟨⟨x, y, ne_of_lt h⟩⟩
#align nontrivial_of_lt nontrivial_of_lt

theorem exists_pair_lt (α : Type*) [Nontrivial α] [LinearOrder α] : ∃ x y : α, x < y := by
  rcases exists_pair_ne α with ⟨x, y, hxy⟩
  cases lt_or_gt_of_ne hxy <;> exact ⟨_, _, ‹_›⟩
#align exists_pair_lt exists_pair_lt

theorem nontrivial_iff_lt [LinearOrder α] : Nontrivial α ↔ ∃ x y : α, x < y :=
  ⟨fun h ↦ @exists_pair_lt α h _, fun ⟨x, y, h⟩ ↦ nontrivial_of_lt x y h⟩
#align nontrivial_iff_lt nontrivial_iff_lt

theorem nontrivial_iff_exists_ne (x : α) : Nontrivial α ↔ ∃ y, y ≠ x :=
  ⟨fun h ↦ @exists_ne α h x, fun ⟨_, hy⟩ ↦ nontrivial_of_ne _ _ hy⟩
#align nontrivial_iff_exists_ne nontrivial_iff_exists_ne

theorem Subtype.nontrivial_iff_exists_ne (p : α → Prop) (x : Subtype p) :
    Nontrivial (Subtype p) ↔ ∃ (y : α) (_ : p y), y ≠ x := by
  simp only [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.nontrivial_iff_exists_ne x, Subtype.exists, Ne.def, Subtype.ext_iff]
#align subtype.nontrivial_iff_exists_ne Subtype.nontrivial_iff_exists_ne

instance : Nontrivial Prop :=
  ⟨⟨True, False, true_ne_false⟩⟩

/-- See Note [lower instance priority]

Note that since this and `nonempty_of_inhabited` are the most "obvious" way to find a nonempty
instance if no direct instance can be found, we give this a higher priority than the usual `100`.
-/
instance (priority := 500) Nontrivial.to_nonempty [Nontrivial α] : Nonempty α :=
  let ⟨x, _⟩ := _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.exists_pair_ne α
  ⟨x⟩

/-- An inhabited type is either nontrivial, or has a unique element. -/
noncomputable def nontrivialPSumUnique (α : Type*) [Inhabited α] :
    PSum (Nontrivial α) (Unique α) :=
  if h : Nontrivial α then PSum.inl h
  else
    PSum.inr
      { default := default,
        uniq := fun x : α ↦ by
          by_contra H
          exact h ⟨_, _, H⟩ }
#align nontrivial_psum_unique nontrivialPSumUnique

theorem subsingleton_iff : Subsingleton α ↔ ∀ x y : α, x = y :=
  ⟨by
    intro h
    exact Subsingleton.elim, fun h ↦ ⟨h⟩⟩
#align subsingleton_iff subsingleton_iff

theorem not_nontrivial_iff_subsingleton : ¬Nontrivial α ↔ Subsingleton α := by
  simp only [nontrivial_iff, subsingleton_iff, not_exists, Ne.def, not_not]
#align not_nontrivial_iff_subsingleton not_nontrivial_iff_subsingleton

theorem not_nontrivial (α) [Subsingleton α] : ¬Nontrivial α :=
  fun ⟨⟨x, y, h⟩⟩ ↦ h <| Subsingleton.elim x y
#align not_nontrivial not_nontrivial

theorem not_subsingleton (α) [Nontrivial α] : ¬Subsingleton α :=
  fun _ => not_nontrivial _ ‹_›
#align not_subsingleton not_subsingleton

/-- A type is either a subsingleton or nontrivial. -/
theorem subsingleton_or_nontrivial (α : Type*) : Subsingleton α ∨ Nontrivial α := by
  rw [← not_nontrivial_iff_subsingleton, or_comm]
  exact Classical.em _
#align subsingleton_or_nontrivial subsingleton_or_nontrivial

theorem false_of_nontrivial_of_subsingleton (α : Type*) [Nontrivial α] [Subsingleton α] : False :=
  not_nontrivial _ ‹_›
#align false_of_nontrivial_of_subsingleton false_of_nontrivial_of_subsingleton

instance Option.nontrivial [Nonempty α] : Nontrivial (Option α) := by
  inhabit α
  exact ⟨none, some default, fun .⟩

/-- Pushforward a `Nontrivial` instance along an injective function. -/
protected theorem Function.Injective.nontrivial [Nontrivial α] {f : α → β}
    (hf : Function.Injective f) : Nontrivial β :=
  let ⟨x, y, h⟩ := exists_pair_ne α
  ⟨⟨f x, f y, hf.ne h⟩⟩
#align function.injective.nontrivial Function.Injective.nontrivial

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
#align function.surjective.nontrivial Function.Surjective.nontrivial

/-- An injective function from a nontrivial type has an argument at
which it does not take a given value. -/
protected theorem Function.Injective.exists_ne [Nontrivial α] {f : α → β}
    (hf : Function.Injective f) (y : β) : ∃ x, f x ≠ y := by
  rcases exists_pair_ne α with ⟨x₁, x₂, hx⟩
  by_cases h:f x₂ = y
  · exact ⟨x₁, (hf.ne_iff' h).2 hx⟩
  · exact ⟨x₂, h⟩
#align function.injective.exists_ne Function.Injective.exists_ne


instance nontrivial_prod_right [Nonempty α] [Nontrivial β] : Nontrivial (α × β) :=
  Prod.snd_surjective.nontrivial

instance nontrivial_prod_left [Nontrivial α] [Nonempty β] : Nontrivial (α × β) :=
  Prod.fst_surjective.nontrivial

namespace Pi

variable {I : Type*} {f : I → Type*}

/-- A pi type is nontrivial if it's nonempty everywhere and nontrivial somewhere. -/
theorem nontrivial_at (i' : I) [inst : ∀ i, Nonempty (f i)] [Nontrivial (f i')] :
    Nontrivial (∀ i : I, f i) := by
  letI := Classical.decEq (∀ i : I, f i)
  exact (Function.update_injective (fun i ↦ Classical.choice (inst i)) i').nontrivial
#align pi.nontrivial_at Pi.nontrivial_at

/-- As a convenience, provide an instance automatically if `(f default)` is nontrivial.

If a different index has the non-trivial type, then use `haveI := nontrivial_at that_index`.
-/
instance nontrivial [Inhabited I] [∀ i, Nonempty (f i)] [Nontrivial (f default)] :
    Nontrivial (∀ i : I, f i) :=
  nontrivial_at default

end Pi

instance Function.nontrivial [h : Nonempty α] [Nontrivial β] : Nontrivial (α → β) :=
  h.elim fun a ↦ Pi.nontrivial_at a

@[nontriviality]
protected theorem Subsingleton.le [Preorder α] [Subsingleton α] (x y : α) : x ≤ y :=
  le_of_eq (Subsingleton.elim x y)
#align subsingleton.le Subsingleton.le

@[to_additive]
theorem Subsingleton.eq_one [One α] [Subsingleton α] (a : α) : a = 1 :=
  Subsingleton.elim _ _

namespace Bool

instance : Nontrivial Bool :=
  ⟨⟨true, false, fun .⟩⟩

end Bool
```
