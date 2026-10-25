# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Equivalence.Variant27ad442711809ef19871f19db4160d42f9930178f25cda8518b4f5bcc85193a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31885b422e40a809c37108e7d692e0be93b8f269` · SHA-256 `7842e125c549d2654f0d56e6c4aa55921aff41afebff44669274c313cb09a205`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Imp.Variantd7dcd5a181a14910aae29b083211e4d4a4366477b71678feaa37c88bb2aa6d3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7dcd5a181a14910aae29b083211e4d4a4366477b71678feaa37c88bb2aa6d3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.Imp.Variantd7dcd5a181a14910aae29b083211e4d4a4366477b71678feaa37c88bb2aa6d3f","mathematical_subject":"Logic.ModelTheory","original_sha256":"d7dcd5a181a14910aae29b083211e4d4a4366477b71678feaa37c88bb2aa6d3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/ModelTheory/Equivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.ModelTheory.Satisfiability

/-!
# Equivalence of Formulas

## Main Definitions
- `FirstOrder.Language.Theory.Imp`: `φ ⟹[T] ψ` indicates that `φ` implies `ψ` in models of `T`.
- `FirstOrder.Language.Theory.Iff`: `φ ⇔[T] ψ` indicates that `φ` and `ψ` are equivalent formulas or
  sentences in models of `T`.

## TODO
- Define the quotient of `L.Formula α` modulo `⇔[T]` and its Boolean Algebra structure.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Imp.Variantd7dcd5a181a14910aae29b083211e4d4a4366477b71678feaa37c88bb2aa6d3f

universe u v w w'

open Cardinal CategoryTheory

open Cardinal FirstOrder

namespace FirstOrder

namespace Language

variable {L : Language.{u, v}} {T : L.Theory} {α : Type w} {n : ℕ}
variable {M : Type*} [Nonempty M] [L.Structure M] [M ⊨ T]

namespace Theory

/-- `φ ⟹[T] ψ` indicates that `φ` implies `ψ` in models of `T`. -/
protected def Imp (T : L.Theory) (φ ψ : L.BoundedFormula α n) : Prop :=
  T ⊨ᵇ φ.imp ψ

@[inherit_doc FirstOrder.Language.Theory.Imp]
scoped[FirstOrder] notation:51 φ:50 " ⟹[" T "] " ψ:51 => Language.Theory.Imp T φ ψ

namespace Imp

@[refl]
protected theorem refl (φ : L.BoundedFormula α n) : φ ⟹[T] φ := fun _ _ _ => id

instance : IsRefl (L.BoundedFormula α n) T.Imp := ⟨Imp.refl⟩

@[trans]
protected theorem trans {φ ψ θ : L.BoundedFormula α n} (h1 : φ ⟹[T] ψ) (h2 : ψ ⟹[T] θ) :
    φ ⟹[T] θ := fun M v xs => (h2 M v xs) ∘ (h1 M v xs)

instance : IsTrans (L.BoundedFormula α n) T.Imp := ⟨fun _ _ _ => Imp.trans⟩

end Imp

section Imp

lemma bot_imp (φ : L.BoundedFormula α n) : ⊥ ⟹[T] φ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_bot, false_implies]

lemma imp_top (φ : L.BoundedFormula α n) : φ ⟹[T] ⊤ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_top, implies_true]

lemma imp_sup_left (φ ψ : L.BoundedFormula α n) : φ ⟹[T] φ ⊔ ψ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_sup]
  exact Or.inl

lemma imp_sup_right (φ ψ : L.BoundedFormula α n) : ψ ⟹[T] φ ⊔ ψ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_sup]
  exact Or.inr

lemma sup_imp {φ ψ θ : L.BoundedFormula α n} (h₁ : φ ⟹[T] θ) (h₂ : ψ ⟹[T] θ) :
    φ ⊔ ψ ⟹[T] θ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_sup]
  exact fun h => h.elim (h₁ M v xs) (h₂ M v xs)

lemma sup_imp_iff {φ ψ θ : L.BoundedFormula α n} :
    (φ ⊔ ψ ⟹[T] θ) ↔ (φ ⟹[T] θ) ∧ (ψ ⟹[T] θ) :=
  ⟨fun h => ⟨(imp_sup_left _ _).trans h, (imp_sup_right _ _).trans h⟩,
    fun ⟨h₁, h₂⟩ => sup_imp h₁ h₂⟩

lemma inf_imp_left (φ ψ : L.BoundedFormula α n) : φ ⊓ ψ ⟹[T] φ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_inf]
  exact And.left

lemma inf_imp_right (φ ψ : L.BoundedFormula α n) : φ ⊓ ψ ⟹[T] ψ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_inf]
  exact And.right

lemma imp_inf {φ ψ θ : L.BoundedFormula α n} (h₁ : φ ⟹[T] ψ) (h₂ : φ ⟹[T] θ) :
    φ ⟹[T] ψ ⊓ θ := fun M v xs => by
  simp only [BoundedFormula.realize_imp, BoundedFormula.realize_inf]
  exact fun h => ⟨h₁ M v xs h, h₂ M v xs h⟩

lemma imp_inf_iff {φ ψ θ : L.BoundedFormula α n} :
    (φ ⟹[T] ψ ⊓ θ) ↔ (φ ⟹[T] ψ) ∧ (φ ⟹[T] θ) :=
  ⟨fun h => ⟨h.trans (inf_imp_left _ _), h.trans (inf_imp_right _ _)⟩,
    fun ⟨h₁, h₂⟩ => imp_inf h₁ h₂⟩

end Imp

/-- Two (bounded) formulas are semantically equivalent over a theory `T` when they have the same
interpretation in every model of `T`. (This is also known as logical equivalence, which also has a
proof-theoretic definition.) -/
protected def Iff (T : L.Theory) (φ ψ : L.BoundedFormula α n) : Prop :=
  T ⊨ᵇ φ.iff ψ

@[inherit_doc FirstOrder.Language.Theory.Iff]
scoped[FirstOrder]
notation:51 φ:50 " ⇔[" T "] " ψ:51 => Language.Theory.Iff T φ ψ

theorem iff_iff_imp_and_imp {φ ψ : L.BoundedFormula α n} :
    (φ ⇔[T] ψ) ↔ (φ ⟹[T] ψ) ∧ (ψ ⟹[T] φ) := by
  simp only [Theory.Imp, ModelsBoundedFormula, BoundedFormula.realize_imp, ← forall_and,
    Theory.Iff, BoundedFormula.realize_iff, iff_iff_implies_and_implies]

theorem imp_antisymm {φ ψ : L.BoundedFormula α n} (h₁ : φ ⟹[T] ψ) (h₂ : ψ ⟹[T] φ) :
    φ ⇔[T] ψ :=
  iff_iff_imp_and_imp.2 ⟨h₁, h₂⟩

namespace Iff

protected theorem mp {φ ψ : L.BoundedFormula α n} (h : φ ⇔[T] ψ) :
    φ ⟹[T] ψ := (iff_iff_imp_and_imp.1 h).1

protected theorem mpr {φ ψ : L.BoundedFormula α n} (h : φ ⇔[T] ψ) :
    ψ ⟹[T] φ := (iff_iff_imp_and_imp.1 h).2

@[refl]
protected theorem refl (φ : L.BoundedFormula α n) : φ ⇔[T] φ :=
  fun M v xs => by rw [BoundedFormula.realize_iff]

instance : IsRefl (L.BoundedFormula α n) T.Iff :=
  ⟨Iff.refl⟩

@[symm]
protected theorem symm {φ ψ : L.BoundedFormula α n}
    (h : φ ⇔[T] ψ) : ψ ⇔[T] φ := fun M v xs => by
  rw [BoundedFormula.realize_iff, Iff.comm, ← BoundedFormula.realize_iff]
  exact h M v xs

instance : IsSymm (L.BoundedFormula α n) T.Iff :=
  ⟨fun _ _ => Iff.symm⟩

@[trans]
protected theorem trans {φ ψ θ : L.BoundedFormula α n}
    (h1 : φ ⇔[T] ψ) (h2 : ψ ⇔[T] θ) :
    φ ⇔[T] θ := fun M v xs => by
  have h1' := h1 M v xs
  have h2' := h2 M v xs
  rw [BoundedFormula.realize_iff] at *
  exact ⟨h2'.1 ∘ h1'.1, h1'.2 ∘ h2'.2⟩

instance : IsTrans (L.BoundedFormula α n) T.Iff :=
  ⟨fun _ _ _ => Iff.trans⟩

theorem realize_bd_iff {φ ψ : L.BoundedFormula α n} (h : φ ⇔[T] ψ)
    {v : α → M} {xs : Fin n → M} : φ.Realize v xs ↔ ψ.Realize v xs :=
  BoundedFormula.realize_iff.1 (h.realize_boundedFormula M)

theorem realize_iff {φ ψ : L.Formula α} {M : Type*} [Nonempty M]
    [L.Structure M] [M ⊨ T] (h : φ ⇔[T] ψ) {v : α → M} :
    φ.Realize v ↔ ψ.Realize v :=
  h.realize_bd_iff

theorem models_sentence_iff {φ ψ : L.Sentence} {M : Type*} [Nonempty M]
    [L.Structure M] [M ⊨ T] (h : φ ⇔[T] ψ) :
    M ⊨ φ ↔ M ⊨ ψ :=
  h.realize_iff

protected theorem all {φ ψ : L.BoundedFormula α (n + 1)}
    (h : φ ⇔[T] ψ) : φ.all ⇔[T] ψ.all := by
  simp_rw [Theory.Iff, ModelsBoundedFormula, BoundedFormula.realize_iff,
    BoundedFormula.realize_all]
  exact fun M v xs => forall_congr' fun a => h.realize_bd_iff

protected theorem ex {φ ψ : L.BoundedFormula α (n + 1)} (h : φ ⇔[T] ψ) :
    φ.ex ⇔[T] ψ.ex := by
  simp_rw [Theory.Iff, ModelsBoundedFormula, BoundedFormula.realize_iff,
    BoundedFormula.realize_ex]
  exact fun M v xs => exists_congr fun a => h.realize_bd_iff

protected theorem not {φ ψ : L.BoundedFormula α n} (h : φ ⇔[T] ψ) :
    φ.not ⇔[T] ψ.not := by
  simp_rw [Theory.Iff, ModelsBoundedFormula, BoundedFormula.realize_iff,
    BoundedFormula.realize_not]
  exact fun M v xs => not_congr h.realize_bd_iff

protected theorem imp {φ ψ φ' ψ' : L.BoundedFormula α n} (h : φ ⇔[T] ψ) (h' : φ' ⇔[T] ψ') :
    (φ.imp φ') ⇔[T] (ψ.imp ψ') := by
  simp_rw [Theory.Iff, ModelsBoundedFormula, BoundedFormula.realize_iff,
    BoundedFormula.realize_imp]
  exact fun M v xs => imp_congr h.realize_bd_iff h'.realize_bd_iff

end Iff

/-- Semantic equivalence forms an equivalence relation on formulas. -/
def iffSetoid (T : L.Theory) : Setoid (L.BoundedFormula α n) where
  r := T.Iff
  iseqv := ⟨fun _ => refl _, fun {_ _} h => h.symm, fun {_ _ _} h1 h2 => h1.trans h2⟩

end Theory

namespace BoundedFormula

variable (φ ψ : L.BoundedFormula α n)

theorem iff_not_not : φ ⇔[T] φ.not.not := fun M v xs => by
  simp

theorem imp_iff_not_sup : (φ.imp ψ) ⇔[T] (φ.not ⊔ ψ) :=
  fun M v xs => by simp [imp_iff_not_or]

theorem sup_iff_not_inf_not : (φ ⊔ ψ) ⇔[T] (φ.not ⊓ ψ.not).not :=
  fun M v xs => by simp [imp_iff_not_or]

theorem inf_iff_not_sup_not : (φ ⊓ ψ) ⇔[T] (φ.not ⊔ ψ.not).not :=
  fun M v xs => by simp

theorem all_iff_not_ex_not (φ : L.BoundedFormula α (n + 1)) :
    φ.all ⇔[T] φ.not.ex.not := fun M v xs => by simp

theorem ex_iff_not_all_not (φ : L.BoundedFormula α (n + 1)) :
    φ.ex ⇔[T] φ.not.all.not := fun M v xs => by simp

theorem iff_all_liftAt : φ ⇔[T] (φ.liftAt 1 n).all :=
  fun M v xs => by
  rw [realize_iff, realize_all_liftAt_one_self]

lemma inf_not_iff_bot :
    φ ⊓ ∼φ ⇔[T] ⊥ := fun M v xs => by
  simp only [realize_iff, realize_inf, realize_not, and_not_self, realize_bot]

lemma sup_not_iff_top :
    φ ⊔ ∼φ ⇔[T] ⊤ := fun M v xs => by
  simp only [realize_iff, realize_sup, realize_not, realize_top, iff_true, or_not]

end BoundedFormula

namespace Formula

variable (φ ψ : L.Formula α)

theorem iff_not_not : φ ⇔[T] φ.not.not :=
  BoundedFormula.iff_not_not φ

theorem imp_iff_not_sup : (φ.imp ψ) ⇔[T] (φ.not ⊔ ψ) :=
  BoundedFormula.imp_iff_not_sup φ ψ

theorem sup_iff_not_inf_not : (φ ⊔ ψ) ⇔[T] (φ.not ⊓ ψ.not).not :=
  BoundedFormula.sup_iff_not_inf_not φ ψ

theorem inf_iff_not_sup_not : (φ ⊓ ψ) ⇔[T] (φ.not ⊔ ψ.not).not :=
  BoundedFormula.inf_iff_not_sup_not φ ψ

end Formula

end Language

end FirstOrder
```
