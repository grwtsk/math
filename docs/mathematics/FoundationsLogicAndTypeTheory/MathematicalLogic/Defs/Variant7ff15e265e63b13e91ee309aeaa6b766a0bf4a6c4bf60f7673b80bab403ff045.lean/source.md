# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d9c974e1159dba2c39863e8868e989315245776` · SHA-256 `3498681fd8880c2c54f5c18e49dcc0141e770180449ed8b2a309c32b5547e51c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Small.Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9","mathematical_subject":"Logic.Foundations","original_sha256":"acfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Small/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Equiv.Defs
import Mathlib.Tactic.MkIffOfInductiveProp
import Mathlib.Tactic.PPWithUniv

/-!
# Small types

A type is `w`-small if there exists an equivalence to some `S : Type w`.

We provide a noncomputable model `Shrink α : Type w`, and `equivShrink α : α ≃ Shrink α`.

A subsingleton type is `w`-small for any `w`.

If `α ≃ β`, then `Small.{w} α ↔ Small.{w} β`.

See `Mathlib/Logic/Small/Basic.lean` for further instances and theorems.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9

universe u w v v'

/-- A type is `Small.{w}` if there exists an equivalence to some `S : Type w`.
-/
@[mk_iff, pp_with_univ]
class Small (α : Type v) : Prop where
  /-- If a type is `Small.{w}`, then there exists an equivalence with some `S : Type w` -/
  equiv_small : ∃ S : Type w, Nonempty (α ≃ S)

/-- Constructor for `Small α` from an explicit witness type and equivalence.
-/
theorem Small.mk' {α : Type v} {S : Type w} (e : α ≃ S) : Small.{w} α :=
  ⟨⟨S, ⟨e⟩⟩⟩

/-- An arbitrarily chosen model in `Type w` for a `w`-small type.
-/
@[pp_with_univ]
def Shrink (α : Type v) [Small.{w} α] : Type w :=
  Classical.choose (@Small.equiv_small α _)

/-- The noncomputable equivalence between a `w`-small type and a model.
-/
noncomputable def equivShrink (α : Type v) [Small.{w} α] : α ≃ Shrink α :=
  Nonempty.some (Classical.choose_spec (@Small.equiv_small α _))

@[ext]
theorem Shrink.ext {α : Type v} [Small.{w} α] {x y : Shrink α}
    (w : (equivShrink _).symm x = (equivShrink _).symm y) : x = y := by
  simpa using w

-- It would be nice to mark this as `aesop cases` if
-- https://github.com/JLimperg/aesop/issues/59
-- is resolved.
@[induction_eliminator]
protected noncomputable def Shrink.rec {α : Type*} [Small.{w} α] {F : Shrink α → Sort v}
    (h : ∀ X, F (equivShrink _ X)) : ∀ X, F X :=
  fun X => ((equivShrink _).apply_symm_apply X) ▸ (h _)

@[simp]
lemma Shrink.rec_equivShrink {α : Type*} [Small.{w} α] {F : Shrink α → Sort v}
    {f : (a : α) → F (equivShrink α a)} (a : α) : Shrink.rec f (equivShrink _ a) = f a := by
  simp only [Shrink.rec, eqRec_eq_cast, cast_eq_iff_heq]
  rw [Equiv.symm_apply_apply]

instance small_self (α : Type v) : Small.{v} α :=
  Small.mk' <| Equiv.refl α

theorem small_map {α : Type*} {β : Type*} [hβ : Small.{w} β] (e : α ≃ β) : Small.{w} α :=
  let ⟨_, ⟨f⟩⟩ := hβ.equiv_small
  Small.mk' (e.trans f)

theorem small_lift (α : Type u) [hα : Small.{v} α] : Small.{max v w} α :=
  let ⟨⟨_, ⟨f⟩⟩⟩ := hα
  Small.mk' <| f.trans (Equiv.ulift.{w}).symm

/-- Due to https://github.com/leanprover/lean4/issues/2297, this is useless as an instance.

See however `Logic.UnivLE`, whose API is able to indirectly provide this instance. -/
lemma small_max (α : Type v) : Small.{max w v} α :=
  small_lift.{v, w} α

instance small_zero (α : Type) : Small.{w} α := small_max α

instance (priority := 100) small_succ (α : Type v) : Small.{v+1} α :=
  small_lift.{v, v+1} α

instance small_ulift (α : Type u) [Small.{v} α] : Small.{v} (ULift.{w} α) :=
  small_map Equiv.ulift

theorem small_type : Small.{max (u + 1) v} (Type u) :=
  small_max.{max (u + 1) v} _

section

theorem small_congr {α : Type*} {β : Type*} (e : α ≃ β) : Small.{w} α ↔ Small.{w} β :=
  ⟨fun h => @small_map _ _ h e.symm, fun h => @small_map _ _ h e⟩

instance small_sigma {α} (β : α → Type*) [Small.{w} α] [∀ a, Small.{w} (β a)] :
    Small.{w} (Σa, β a) :=
  ⟨⟨Σa' : Shrink α, Shrink (β ((equivShrink α).symm a')),
      ⟨Equiv.sigmaCongr (equivShrink α) fun a => by simpa using equivShrink (β a)⟩⟩⟩

theorem not_small_type : ¬Small.{u} (Type max u v)
  | ⟨⟨S, ⟨e⟩⟩⟩ =>
    @Function.cantor_injective (Σα, e.symm α) (fun a => ⟨_, cast (e.3 _).symm a⟩) fun a b e => by
      dsimp at e
      injection e with h₁ h₂
      simpa using h₂

end
```
