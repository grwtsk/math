# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entails.Variantcec82a294fd728c842d221d77578a8d54d7d9b6f429d6d1f896e9c86886e6b94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93f4cc0aadcfae51b4ea412951f9e60c1a7c068f` · SHA-256 `ada230716fbe0bc25c0d14152b944b1a6b1477382cf5c3e01dab91bba9537e0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entails.Variantca27c77f54a5700bf5f99cda34589f42719ac5d6004adcfe2e2c70f9af9f6233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca27c77f54a5700bf5f99cda34589f42719ac5d6004adcfe2e2c70f9af9f6233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Entails.Variantca27c77f54a5700bf5f99cda34589f42719ac5d6004adcfe2e2c70f9af9f6233","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ca27c77f54a5700bf5f99cda34589f42719ac5d6004adcfe2e2c70f9af9f6233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/Entails.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune, Henrik Böving
-/
module

prelude
public import Init.PropLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entails.Variantca27c77f54a5700bf5f99cda34589f42719ac5d6004adcfe2e2c70f9af9f6233

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

/--
For variables of type `α` and formulas of type `β`, `Entails.eval a f` is meant to determine whether
a formula `f` is true under assignment `a`.
-/
class Entails (α : Type u) (β : Type v) where
  eval : (α → Bool) → β → Prop

/--
`a ⊨ f` reads formula `f` is true under assignment `a`.
-/
scoped infix:25 " ⊨ " => Entails.eval

/--
`a ⊭ f` reads formula `f` is false under assignment `a`.
-/
scoped notation:25 a:25 " ⊭ " f:30 => ¬(Entails.eval a f)

/--
`f` is not true under any assignment.
-/
def Unsatisfiable (α : Type u) {σ : Type v} [Entails α σ] (f : σ) : Prop :=
  ∀ (a : α → Bool), a ⊭ f

/-- `f1` and `f2` are logically equivalent -/
def Liff (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2] (f1 : σ1)
    (f2 : σ2) : Prop :=
  ∀ (a : α → Bool), a ⊨ f1 ↔ a ⊨ f2

/-- `f1` logically implies `f2` -/
def Limplies (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2] (f1 : σ1)
    (f2 : σ2) : Prop :=
  ∀ (a : α → Bool), a ⊨ f1 → a ⊨ f2

/-- `f1` is unsat iff `f2` is unsat -/
def Equisat (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2] (f1 : σ1)
    (f2 : σ2) : Prop :=
  Unsatisfiable α f1 ↔ Unsatisfiable α f2

/--
For any given assignment `f1` or `f2` is not true.
-/
def Incompatible (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2] (f1 : σ1)
    (f2 : σ2) : Prop :=
  ∀ (a : α → Bool), (a ⊭ f1) ∨ (a ⊭ f2)

protected theorem Liff.refl {α : Type u} {σ : Type v} [Entails α σ] (f : σ) : Liff α f f :=
  (fun _ => Iff.rfl)

protected theorem Liff.symm {α : Type u} {σ1 : Type v} {σ2 : Type 2} [Entails α σ1] [Entails α σ2]
    (f1 : σ1) (f2 : σ2) :
    Liff α f1 f2 → Liff α f2 f1 := by
  intro h p
  rw [h p]

protected theorem Liff.trans {α : Type u} {σ1 : Type v} {σ2 : Type w} {σ3 : Type x} [Entails α σ1]
    [Entails α σ2] [Entails α σ3] (f1 : σ1) (f2 : σ2) (f3 : σ3) :
    Liff α f1 f2 → Liff α f2 f3 → Liff α f1 f3 := by
  intro f1_eq_f2 f2_eq_f3 a
  rw [f1_eq_f2 a, f2_eq_f3 a]

protected theorem Limplies.refl {α : Type u} {σ : Type v} [Entails α σ] (f : σ) : Limplies α f f :=
  (fun _ => id)

protected theorem Limplies.trans {α : Type u} {σ1 : Type v} {σ2 : Type w} {σ3 : Type x}
    [Entails α σ1] [Entails α σ2] [Entails α σ3] (f1 : σ1) (f2 : σ2) (f3 : σ3) :
    Limplies α f1 f2 → Limplies α f2 f3 → Limplies α f1 f3 := by
  intro f1_implies_f2 f2_implies_f3 a a_entails_f1
  exact f2_implies_f3 a <| f1_implies_f2 a a_entails_f1

theorem liff_iff_limplies_and_limplies {α : Type u} {σ1 : Type v} {σ2 : Type w} [Entails α σ1]
    [Entails α σ2] (f1 : σ1) (f2 : σ2) :
    Liff α f1 f2 ↔ Limplies α f1 f2 ∧ Limplies α f2 f1 := by
  simp [Liff, Limplies, iff_iff_implies_and_implies, forall_and]

theorem liff_unsat {α : Type u} {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2] (f1 : σ1)
    (f2 : σ2) (h : Liff α f1 f2) :
    Unsatisfiable α f1 ↔ Unsatisfiable α f2 := by
  simp only [Liff] at h
  simp [Unsatisfiable, h]

theorem limplies_unsat {α : Type u} {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2]
    (f1 : σ1) (f2 : σ2) (h : Limplies α f2 f1) :
    Unsatisfiable α f1 → Unsatisfiable α f2 := by
  intro f1_unsat a a_entails_f2
  exact f1_unsat a <| h a a_entails_f2

theorem incompatible_of_unsat (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1] [Entails α σ2]
    (f1 : σ1) (f2 : σ2) :
    Unsatisfiable α f1 → Incompatible α f1 f2 := by
  intro h a
  exact Or.inl <| h a

theorem unsat_of_limplies_and_incompatible (α : Type u) {σ1 : Type v} {σ2 : Type w} [Entails α σ1]
    [Entails α σ2] (f1 : σ1) (f2 : σ2) :
    Limplies α f1 f2 → Incompatible α f1 f2 → Unsatisfiable α f1 := by
  intro h1 h2 a af1
  cases h2 a
  next h2 =>
    exact h2 af1
  next h2 =>
    exact h2 <| h1 a af1

protected theorem Incompatible.symm {α : Type u} {σ1 : Type v} {σ2 : Type w} [Entails α σ1]
    [Entails α σ2] (f1 : σ1) (f2 : σ2) :
    Incompatible α f1 f2 ↔ Incompatible α f2 f1 := by
  constructor
  · intro h a
    exact Or.symm <| h a
  · intro h a
    exact Or.symm <| h a

end Internal
end LRAT
end Std.Tactic.BVDecide
```
