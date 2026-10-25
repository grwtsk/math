# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `237517c4fd387fb7537f7fef81352c691ce60913` · SHA-256 `70dd0ed417214ec04877e4a65458dfd9339c4adca43f847c45ace63fffb5ba2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NontrivialOfLt.Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.NontrivialOfLt.Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d","mathematical_subject":"Logic.Foundations","original_sha256":"90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Nontrivial/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Data.Prod.Basic
import Mathlib.Logic.Function.Basic
import Mathlib.Logic.Nontrivial.Defs
import Mathlib.Logic.Unique
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Tactic.Attr.Register

/-!
# Nontrivial types

Results about `Nontrivial`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NontrivialOfLt.Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d

variable {α : Type*} {β : Type*}

-- `x` and `y` are explicit here, as they are often needed to guide typechecking of `h`.
theorem nontrivial_of_lt [Preorder α] (x y : α) (h : x < y) : Nontrivial α :=
  ⟨⟨x, y, ne_of_lt h⟩⟩

theorem exists_pair_lt (α : Type*) [Nontrivial α] [LinearOrder α] : ∃ x y : α, x < y := by
  rcases exists_pair_ne α with ⟨x, y, hxy⟩
  cases lt_or_gt_of_ne hxy <;> exact ⟨_, _, ‹_›⟩

theorem nontrivial_iff_lt [LinearOrder α] : Nontrivial α ↔ ∃ x y : α, x < y :=
  ⟨fun h ↦ @exists_pair_lt α h _, fun ⟨x, y, h⟩ ↦ nontrivial_of_lt x y h⟩

theorem Subtype.nontrivial_iff_exists_ne (p : α → Prop) (x : Subtype p) :
    Nontrivial (Subtype p) ↔ ∃ (y : α) (_ : p y), y ≠ x := by
  simp only [_root_.nontrivial_iff_exists_ne x, Subtype.exists, Ne, Subtype.ext_iff]

open Classical in
/-- An inhabited type is either nontrivial, or has a unique element. -/
noncomputable def nontrivialPSumUnique (α : Type*) [Inhabited α] :
    Nontrivial α ⊕' Unique α :=
  if h : Nontrivial α then PSum.inl h
  else
    PSum.inr
      { default := default,
        uniq := fun x : α ↦ by
          by_contra H
          exact h ⟨_, _, H⟩ }

instance Option.nontrivial [Nonempty α] : Nontrivial (Option α) := by
  inhabit α
  exact ⟨none, some default, nofun⟩

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

instance nontrivial_prod_right [Nonempty α] [Nontrivial β] : Nontrivial (α × β) :=
  Prod.snd_surjective.nontrivial

instance nontrivial_prod_left [Nontrivial α] [Nonempty β] : Nontrivial (α × β) :=
  Prod.fst_surjective.nontrivial

namespace Pi

variable {I : Type*} {f : I → Type*}

open Classical in
/-- A pi type is nontrivial if it's nonempty everywhere and nontrivial somewhere. -/
theorem nontrivial_at (i' : I) [inst : ∀ i, Nonempty (f i)] [Nontrivial (f i')] :
    Nontrivial (∀ i : I, f i) := by
  letI := Classical.decEq (∀ i : I, f i)
  exact (Function.update_injective (fun i ↦ Classical.choice (inst i)) i').nontrivial

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
```
