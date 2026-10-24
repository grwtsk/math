# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.SlashInvariantForms.Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10cf5fa9422dede880bb45a3f6dd224876649ca2` · SHA-256 `e8272cbc0b8776b86ab5f015b30e6ac6422e396ed4bb5b49219ce182faeffd36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.SlashInvariantForm.Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.SlashInvariantForm.Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/SlashInvariantForms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups
import Mathlib.NumberTheory.ModularForms.SlashActions

/-!
# Slash invariant forms

This file defines functions that are invariant under a `SlashAction` which forms the basis for
defining `ModularForm` and `CuspForm`. We prove several instances for such spaces, in particular
that they form a module.
-/



namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.SlashInvariantForm.Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539

open Complex UpperHalfPlane

open scoped MatrixGroups ModularForm

noncomputable section

section SlashInvariantForms

open ModularForm

variable (F : Type*) (Γ : outParam <| Subgroup SL(2, ℤ)) (k : outParam ℤ)

/-- Functions `ℍ → ℂ` that are invariant under the `SlashAction`. -/
structure SlashInvariantForm where
  toFun : ℍ → ℂ
  slash_action_eq' : ∀ γ ∈ Γ, toFun ∣[k] γ = toFun

/-- `SlashInvariantFormClass F Γ k` asserts `F` is a type of bundled functions that are invariant
under the `SlashAction`. -/
class SlashInvariantFormClass [FunLike F ℍ ℂ] : Prop where
  slash_action_eq : ∀ (f : F), ∀ γ ∈ Γ, (f : ℍ → ℂ) ∣[k] γ = f

instance (priority := 100) SlashInvariantForm.funLike :
    FunLike (SlashInvariantForm Γ k) ℍ ℂ where
  coe := SlashInvariantForm.toFun
  coe_injective' f g h := by cases f; cases g; congr

instance (priority := 100) SlashInvariantFormClass.slashInvariantForm :
    SlashInvariantFormClass (SlashInvariantForm Γ k) Γ k where
  slash_action_eq := SlashInvariantForm.slash_action_eq'

variable {F Γ k}

@[simp]
theorem SlashInvariantForm.toFun_eq_coe {f : SlashInvariantForm Γ k} : f.toFun = (f : ℍ → ℂ) :=
  rfl

@[simp]
theorem SlashInvariantForm.coe_mk (f : ℍ → ℂ) (hf : ∀ γ ∈ Γ, f ∣[k] γ = f) : ⇑(mk f hf) = f := rfl

@[ext]
theorem SlashInvariantForm.ext {f g : SlashInvariantForm Γ k} (h : ∀ x, f x = g x) : f = g :=
  DFunLike.ext f g h

/-- Copy of a `SlashInvariantForm` with a new `toFun` equal to the old one.
Useful to fix definitional equalities. -/
protected def SlashInvariantForm.copy (f : SlashInvariantForm Γ k) (f' : ℍ → ℂ) (h : f' = ⇑f) :
    SlashInvariantForm Γ k where
  toFun := f'
  slash_action_eq' := h.symm ▸ f.slash_action_eq'

end SlashInvariantForms

namespace SlashInvariantForm

open SlashInvariantForm

open scoped ModularForm

variable {F : Type*} {Γ : Subgroup SL(2, ℤ)} {k : ℤ} [FunLike F ℍ ℂ]

theorem slash_action_eqn [SlashInvariantFormClass F Γ k] (f : F) (γ) (hγ : γ ∈ Γ) :
    ↑f ∣[k] γ = ⇑f :=
  SlashInvariantFormClass.slash_action_eq f γ hγ

theorem slash_action_eqn' {k : ℤ} {Γ : Subgroup SL(2, ℤ)} [SlashInvariantFormClass F Γ k]
    (f : F) {γ} (hγ : γ ∈ Γ) (z : ℍ) :
    f (γ • z) = (γ 1 0 * z + γ 1 1) ^ k * f z := by
  rw [← ModularForm.slash_action_eq'_iff, slash_action_eqn f γ hγ]

/-- Every `SlashInvariantForm` `f` satisfies ` f (γ • z) = (denom γ z) ^ k * f z`. -/
theorem slash_action_eqn'' {F : Type*} [FunLike F ℍ ℂ] {k : ℤ} {Γ : Subgroup SL(2, ℤ)}
    [SlashInvariantFormClass F Γ k] (f : F) {γ : SL(2, ℤ)} (hγ : γ ∈ Γ) (z : ℍ) :
    f (γ • z) = (denom γ z) ^ k * f z :=
  SlashInvariantForm.slash_action_eqn' f hγ z

instance [SlashInvariantFormClass F Γ k] : CoeTC F (SlashInvariantForm Γ k) :=
  ⟨fun f ↦ { slash_action_eq' := slash_action_eqn f, .. }⟩

instance instAdd : Add (SlashInvariantForm Γ k) :=
  ⟨fun f g ↦
    { toFun := f + g
      slash_action_eq' := fun γ hγ ↦ by
        rw [SlashAction.add_slash, slash_action_eqn f γ hγ, slash_action_eqn g γ hγ] }⟩

@[simp]
theorem coe_add (f g : SlashInvariantForm Γ k) : ⇑(f + g) = f + g :=
  rfl

@[simp]
theorem add_apply (f g : SlashInvariantForm Γ k) (z : ℍ) : (f + g) z = f z + g z :=
  rfl

instance instZero : Zero (SlashInvariantForm Γ k) :=
  ⟨{toFun := 0
    slash_action_eq' := fun _ _ ↦ SlashAction.zero_slash _ _}⟩

@[simp]
theorem coe_zero : ⇑(0 : SlashInvariantForm Γ k) = (0 : ℍ → ℂ) :=
  rfl

section smul

variable {α : Type*} [SMul α ℂ] [IsScalarTower α ℂ ℂ]

instance instSMul : SMul α (SlashInvariantForm Γ k) where
  smul c f :=
  { toFun := c • ↑f
    slash_action_eq' γ hγ := by rw [ModularForm.SL_smul_slash, slash_action_eqn f _ hγ]}

@[simp]
theorem coe_smul (f : SlashInvariantForm Γ k) (n : α) : ⇑(n • f) = n • ⇑f :=
  rfl

@[simp]
theorem smul_apply (f : SlashInvariantForm Γ k) (n : α) (z : ℍ) : (n • f) z = n • f z :=
  rfl

end smul

instance instNeg : Neg (SlashInvariantForm Γ k) :=
  ⟨fun f =>
    { toFun := -f
      slash_action_eq' := fun γ hγ => by rw [SlashAction.neg_slash, slash_action_eqn f γ hγ] }⟩

@[simp]
theorem coe_neg (f : SlashInvariantForm Γ k) : ⇑(-f) = -f :=
  rfl

@[simp]
theorem neg_apply (f : SlashInvariantForm Γ k) (z : ℍ) : (-f) z = -f z :=
  rfl

instance instSub : Sub (SlashInvariantForm Γ k) :=
  ⟨fun f g => f + -g⟩

@[simp]
theorem coe_sub (f g : SlashInvariantForm Γ k) : ⇑(f - g) = f - g :=
  rfl

@[simp]
theorem sub_apply (f g : SlashInvariantForm Γ k) (z : ℍ) : (f - g) z = f z - g z :=
  rfl

instance : AddCommGroup (SlashInvariantForm Γ k) :=
  DFunLike.coe_injective.addCommGroup _ rfl coe_add coe_neg coe_sub coe_smul coe_smul

/-- Additive coercion from `SlashInvariantForm` to `ℍ → ℂ`. -/
def coeHom : SlashInvariantForm Γ k →+ ℍ → ℂ where
  toFun f := f
  map_zero' := rfl
  map_add' _ _ := rfl

theorem coeHom_injective : Function.Injective (@coeHom Γ k) :=
  DFunLike.coe_injective

instance : Module ℂ (SlashInvariantForm Γ k) :=
  coeHom_injective.module ℂ coeHom fun _ _ => rfl

/-- The `SlashInvariantForm` corresponding to `Function.const _ x`. -/
@[simps -fullyApplied]
def const (x : ℂ) : SlashInvariantForm Γ 0 where
  toFun := Function.const _ x
  slash_action_eq' A _ := ModularForm.is_invariant_const A x

instance : One (SlashInvariantForm Γ 0) where
  one := { const 1 with toFun := 1 }

@[simp]
theorem one_coe_eq_one : ((1 : SlashInvariantForm Γ 0) : ℍ → ℂ) = 1 :=
  rfl

instance : Inhabited (SlashInvariantForm Γ k) :=
  ⟨0⟩

/-- The slash invariant form of weight `k₁ + k₂` given by the product of two modular forms of
weights `k₁` and `k₂`. -/
def mul {k₁ k₂ : ℤ} {Γ : Subgroup SL(2, ℤ)} (f : SlashInvariantForm Γ k₁)
    (g : SlashInvariantForm Γ k₂) : SlashInvariantForm Γ (k₁ + k₂) where
  toFun := f * g
  slash_action_eq' A hA := by rw [ModularForm.mul_slash_SL2,
    SlashInvariantFormClass.slash_action_eq f A hA, SlashInvariantFormClass.slash_action_eq g A hA]

@[simp]
theorem coe_mul {k₁ k₂ : ℤ} {Γ : Subgroup SL(2, ℤ)} (f : SlashInvariantForm Γ k₁)
    (g : SlashInvariantForm Γ k₂) : ⇑(f.mul g) = ⇑f * ⇑g :=
  rfl

instance (Γ : Subgroup SL(2, ℤ)) : NatCast (SlashInvariantForm Γ 0) where
  natCast n := const n

@[simp, norm_cast]
theorem coe_natCast (n : ℕ) : ⇑(n : SlashInvariantForm Γ 0) = n := rfl

instance (Γ : Subgroup SL(2, ℤ)) : IntCast (SlashInvariantForm Γ 0) where
  intCast z := const z

@[simp, norm_cast]
theorem coe_intCast (z : ℤ) : ⇑(z : SlashInvariantForm Γ 0) = z := rfl

/-- Translating a `SlashInvariantForm` by `g : GL (Fin 2) ℝ`, to obtain a new
`SlashInvariantForm` of level `SL(2, ℤ) ∩ g⁻¹ Γ g`. -/
noncomputable def translateGL [SlashInvariantFormClass F Γ k] (f : F) (g : GL (Fin 2) ℝ) :
    SlashInvariantForm (CongruenceSubgroup.conjGL Γ g) k where
  toFun := f ∣[k] g
  slash_action_eq' j hj := by
    obtain ⟨y, hy, hy'⟩ := CongruenceSubgroup.mem_conjGL'.mp hj
    simp only [ModularForm.SL_slash, ← hy', ← SlashAction.slash_mul, mul_assoc,
      mul_inv_cancel_left]
    rw [SlashAction.slash_mul, ← ModularForm.SL_slash,
      SlashInvariantFormClass.slash_action_eq f _ hy]

@[simp]
lemma coe_translateGL [SlashInvariantFormClass F Γ k] (f : F) (g : GL (Fin 2) ℝ) :
    translateGL f g = ⇑f ∣[k] g :=
  rfl

@[deprecated (since := "2025-05-15")] alias translateGLPos := translateGL
@[deprecated (since := "2025-05-15")] alias coe_translateGLPos := coe_translateGL

open Pointwise ConjAct in
/-- Translating a `SlashInvariantForm` by `g : SL(2, ℤ)`, to obtain a new `SlashInvariantForm`
of level `g⁻¹ Γ g`. -/
noncomputable def translate [SlashInvariantFormClass F Γ k]
    (f : F) (g : SL(2, ℤ)) : SlashInvariantForm ((toConjAct g⁻¹) • Γ) k where
  toFun := f ∣[k] g
  slash_action_eq' j hj := (translateGL f g).slash_action_eq' j (by simpa using hj)

@[simp]
lemma coe_translate [SlashInvariantFormClass F Γ k] (f : F) (g : SL(2, ℤ)) :
    translate f g = ⇑f ∣[k] g :=
  rfl

end SlashInvariantForm
```
