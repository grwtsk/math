# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantcbe7fcddb74ab32ce1f33d44e70dc2e333e7a21fec229de10ef09304a04d9914

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9252a3b7f605bdb8afa200fe762b74af01ae75e` · SHA-256 `5573f9be6905f3e6f867d209395bb8d5d26ac1e71e011a19d365bb448cf0675e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Countable.Variantd42047c8b18f28b7eba8ceca5867e472fcb8e840ac3499f88d3cd1d01451bb9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d42047c8b18f28b7eba8ceca5867e472fcb8e840ac3499f88d3cd1d01451bb9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Countable.Variantd42047c8b18f28b7eba8ceca5867e472fcb8e840ac3499f88d3cd1d01451bb9f","mathematical_subject":"Logic.Foundations","original_sha256":"d42047c8b18f28b7eba8ceca5867e472fcb8e840ac3499f88d3cd1d01451bb9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Countable/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Basic.Finite.Defs
public import Mathlib.Data.Bool.Basic
public import Mathlib.Data.Subtype
public import Mathlib.Tactic.CrossRefAttribute
public import Mathlib.Tactic.MkIffOfInductiveProp

/-!
# Countable and uncountable types

In this file we define a typeclass `Countable` saying that a given `Sort*` is countable
and a typeclass `Uncountable` saying that a given `Type*` is uncountable.

See also `Encodable` for a version that singles out
a specific encoding of elements of `α` by natural numbers.

This file also provides a few instances of these typeclasses.
More instances can be found in other files.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Countable.Variantd42047c8b18f28b7eba8ceca5867e472fcb8e840ac3499f88d3cd1d01451bb9f

public section

open Function

universe u v

variable {α : Sort u} {β : Sort v}

/-!
### Definition and basic properties
-/

/-- A type `α` is countable if there exists an injective map `α → ℕ`. -/
@[mk_iff countable_iff_exists_injective, wikidata Q66707394]
class Countable (α : Sort u) : Prop where
  /-- A type `α` is countable if there exists an injective map `α → ℕ`. -/
  exists_injective_nat' : ∃ f : α → ℕ, Injective f

lemma Countable.exists_injective_nat (α : Sort u) [Countable α] : ∃ f : α → ℕ, Injective f :=
  Countable.exists_injective_nat'

instance : Countable ℕ :=
  ⟨⟨id, injective_id⟩⟩

export Countable (exists_injective_nat)

protected theorem Function.Injective.countable [Countable β] {f : α → β} (hf : Injective f) :
    Countable α :=
  let ⟨g, hg⟩ := exists_injective_nat β
  ⟨⟨g ∘ f, hg.comp hf⟩⟩

protected theorem Function.Surjective.countable [Countable α] {f : α → β} (hf : Surjective f) :
    Countable β :=
  (injective_surjInv hf).countable

theorem exists_surjective_nat (α : Sort u) [Nonempty α] [Countable α] : ∃ f : ℕ → α, Surjective f :=
  let ⟨f, hf⟩ := exists_injective_nat α
  ⟨invFun f, invFun_surjective hf⟩

theorem countable_iff_exists_surjective [Nonempty α] : Countable α ↔ ∃ f : ℕ → α, Surjective f :=
  ⟨@exists_surjective_nat _ _, fun ⟨_, hf⟩ ↦ hf.countable⟩

theorem Countable.of_equiv (α : Sort*) [Countable α] (e : α ≃ β) : Countable β :=
  e.symm.injective.countable

theorem Equiv.countable_iff (e : α ≃ β) : Countable α ↔ Countable β :=
  ⟨fun h => @Countable.of_equiv _ _ h e, fun h => @Countable.of_equiv _ _ h e.symm⟩

instance {β : Type v} [Countable β] : Countable (ULift.{u} β) :=
  Countable.of_equiv _ Equiv.ulift.symm

/-!
### Operations on `Sort*`s
-/


instance [Countable α] : Countable (PLift α) :=
  Equiv.plift.injective.countable

instance (priority := 100) Subsingleton.to_countable [Subsingleton α] : Countable α :=
  ⟨⟨fun _ => 0, fun x y _ => Subsingleton.elim x y⟩⟩

instance (priority := 500) Subtype.countable [Countable α] {p : α → Prop} :
    Countable { x // p x } :=
  Subtype.val_injective.countable

instance {n : ℕ} : Countable (Fin n) :=
  Function.Injective.countable (@Fin.eq_of_val_eq n)

instance (priority := 100) Finite.to_countable [Finite α] : Countable α :=
  let ⟨_, ⟨e⟩⟩ := Finite.exists_equiv_fin α
  Countable.of_equiv _ e.symm

instance : Countable PUnit.{u} :=
  Subsingleton.to_countable

instance (priority := 100) Prop.countable (p : Prop) : Countable p :=
  Subsingleton.to_countable

instance Bool.countable : Countable Bool :=
  ⟨⟨fun b => cond b 0 1, Bool.injective_iff.2 Nat.one_ne_zero⟩⟩

instance Prop.countable' : Countable Prop :=
  Countable.of_equiv Bool Equiv.propEquivBool.symm

instance (priority := 500) Quotient.countable [Countable α] {r : α → α → Prop} :
    Countable (Quot r) :=
  Quot.mk_surjective.countable

instance (priority := 500) [Countable α] {s : Setoid α} : Countable (Quotient s) :=
  inferInstanceAs <| Countable (@Quot α _)

/-!
### Uncountable types
-/

/-- A type `α` is uncountable if it is not countable. -/
@[mk_iff uncountable_iff_not_countable]
class Uncountable (α : Sort*) : Prop where
  /-- A type `α` is uncountable if it is not countable. -/
  not_countable : ¬Countable α

@[push]
lemma not_uncountable_iff : ¬Uncountable α ↔ Countable α := by
  rw [uncountable_iff_not_countable, not_not]

@[push]
lemma not_countable_iff : ¬Countable α ↔ Uncountable α := (uncountable_iff_not_countable α).symm

@[simp]
lemma not_uncountable [Countable α] : ¬Uncountable α := not_uncountable_iff.2 ‹_›

@[simp]
lemma not_countable [Uncountable α] : ¬Countable α := Uncountable.not_countable

protected theorem Function.Injective.uncountable [Uncountable α] {f : α → β} (hf : Injective f) :
    Uncountable β :=
  ⟨fun _ ↦ not_countable hf.countable⟩

protected theorem Function.Surjective.uncountable [Uncountable β] {f : α → β} (hf : Surjective f) :
    Uncountable α := (injective_surjInv hf).uncountable

lemma not_injective_uncountable_countable [Uncountable α] [Countable β] (f : α → β) :
    ¬Injective f := fun hf ↦ not_countable hf.countable

lemma not_surjective_countable_uncountable [Countable α] [Uncountable β] (f : α → β) :
    ¬Surjective f := fun hf ↦
  not_countable hf.countable

theorem uncountable_iff_forall_not_surjective [Nonempty α] :
    Uncountable α ↔ ∀ f : ℕ → α, ¬Surjective f := by
  rw [← not_countable_iff, countable_iff_exists_surjective, not_exists]

theorem Uncountable.of_equiv (α : Sort*) [Uncountable α] (e : α ≃ β) : Uncountable β :=
  e.injective.uncountable

theorem Equiv.uncountable_iff (e : α ≃ β) : Uncountable α ↔ Uncountable β :=
  ⟨fun h => @Uncountable.of_equiv _ _ h e, fun h => @Uncountable.of_equiv _ _ h e.symm⟩

instance {β : Type v} [Uncountable β] : Uncountable (ULift.{u} β) :=
  .of_equiv _ Equiv.ulift.symm

instance [Uncountable α] : Uncountable (PLift α) :=
  .of_equiv _ Equiv.plift.symm

instance (priority := 100) [Uncountable α] : Infinite α :=
  ⟨fun _ ↦ not_countable (α := α) inferInstance⟩
```
