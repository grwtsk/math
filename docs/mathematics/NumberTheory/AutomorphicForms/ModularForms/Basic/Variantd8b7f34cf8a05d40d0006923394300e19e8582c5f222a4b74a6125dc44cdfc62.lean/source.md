# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab26fd50d7f60d5eed884295f4c918114919dd1` · SHA-256 `91e625d29b49510ef45f34772449b3d9b37fab2a7144f454bc71c5b2527aa03d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.ModularForm.Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.ModularForm.Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
import Mathlib.Algebra.DirectSum.Algebra
import Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty
import Mathlib.Analysis.Complex.UpperHalfPlane.Manifold
import Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions
import Mathlib.NumberTheory.ModularForms.SlashInvariantForms

/-!
# Modular forms

This file defines modular forms and proves some basic properties about them. Including constructing
the graded ring of modular forms.

We begin by defining modular forms and cusp forms as extension of `SlashInvariantForm`s then we
define the space of modular forms, cusp forms and prove that the product of two modular forms is a
modular form.
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.ModularForm.Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702

open Complex UpperHalfPlane

open scoped Topology Manifold MatrixGroups

noncomputable section

section ModularForm

open ModularForm

/-- The weight `k` slash action of `GL(2, ℝ)⁺` preserves holomorphic functions.

TO DO: Actually this holds for `GL(2, ℝ)` (without the positivity assumption), but this is
somewhat more annoying to prove: we have to argue that the composite of two anti-holomorphic
functions is holomorphic. -/
lemma MDifferentiable.slash {f : ℍ → ℂ} (hf : MDifferentiable 𝓘(ℂ) 𝓘(ℂ) f)
    (k : ℤ) {g : GL (Fin 2) ℝ} (hg : 0 < g.det.val) :
    MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (f ∣[k] g) := by
  refine .mul (.mul ?_ mdifferentiable_const) (UpperHalfPlane.mdifferentiable_denom_zpow g _)
  simp only [σ, hg, ↓reduceIte]
  exact hf.comp (UpperHalfPlane.mdifferentiable_smul hg)

variable (F : Type*) (Γ : Subgroup SL(2, ℤ)) (k : ℤ)

open scoped ModularForm

/-- These are `SlashInvariantForm`'s that are holomorphic and bounded at infinity. -/
structure ModularForm extends SlashInvariantForm Γ k where
  holo' : MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (toSlashInvariantForm : ℍ → ℂ)
  bdd_at_infty' : ∀ A : SL(2, ℤ), IsBoundedAtImInfty (toSlashInvariantForm ∣[k] A)

/-- The `SlashInvariantForm` associated to a `ModularForm`. -/
add_decl_doc ModularForm.toSlashInvariantForm

/-- These are `SlashInvariantForm`s that are holomorphic and zero at infinity. -/
structure CuspForm extends SlashInvariantForm Γ k where
  holo' : MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (toSlashInvariantForm : ℍ → ℂ)
  zero_at_infty' : ∀ A : SL(2, ℤ), IsZeroAtImInfty (toSlashInvariantForm ∣[k] A)

/-- The `SlashInvariantForm` associated to a `CuspForm`. -/
add_decl_doc CuspForm.toSlashInvariantForm

/-- `ModularFormClass F Γ k` says that `F` is a type of bundled functions that extend
`SlashInvariantFormClass` by requiring that the functions be holomorphic and bounded
at infinity. -/
class ModularFormClass (F : Type*) (Γ : outParam <| Subgroup (SL(2, ℤ))) (k : outParam ℤ)
    [FunLike F ℍ ℂ] : Prop extends SlashInvariantFormClass F Γ k where
  holo : ∀ f : F, MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (f : ℍ → ℂ)
  bdd_at_infty : ∀ (f : F) (A : SL(2, ℤ)), IsBoundedAtImInfty (f ∣[k] A)

/-- `CuspFormClass F Γ k` says that `F` is a type of bundled functions that extend
`SlashInvariantFormClass` by requiring that the functions be holomorphic and zero
at infinity. -/
class CuspFormClass (F : Type*) (Γ : outParam <| Subgroup (SL(2, ℤ))) (k : outParam ℤ)
    [FunLike F ℍ ℂ] : Prop extends SlashInvariantFormClass F Γ k where
  holo : ∀ f : F, MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (f : ℍ → ℂ)
  zero_at_infty : ∀ (f : F) (A : SL(2, ℤ)), IsZeroAtImInfty (f ∣[k] A)

instance (priority := 100) ModularForm.funLike :
    FunLike (ModularForm Γ k) ℍ ℂ where
  coe f := f.toFun
  coe_injective' f g h := by cases f; cases g; congr; exact DFunLike.ext' h

instance (priority := 100) ModularFormClass.modularForm :
    ModularFormClass (ModularForm Γ k) Γ k where
  slash_action_eq f := f.slash_action_eq'
  holo := ModularForm.holo'
  bdd_at_infty := ModularForm.bdd_at_infty'

instance (priority := 100) CuspForm.funLike : FunLike (CuspForm Γ k) ℍ ℂ where
  coe f := f.toFun
  coe_injective' f g h := by cases f; cases g; congr; exact DFunLike.ext' h

instance (priority := 100) CuspFormClass.cuspForm : CuspFormClass (CuspForm Γ k) Γ k where
  slash_action_eq f := f.slash_action_eq'
  holo := CuspForm.holo'
  zero_at_infty := CuspForm.zero_at_infty'

variable {F Γ k}

theorem ModularForm.toFun_eq_coe (f : ModularForm Γ k) : f.toFun = (f : ℍ → ℂ) :=
  rfl

@[simp]
theorem ModularForm.toSlashInvariantForm_coe (f : ModularForm Γ k) : ⇑f.1 = f :=
  rfl

theorem CuspForm.toFun_eq_coe {f : CuspForm Γ k} : f.toFun = (f : ℍ → ℂ) :=
  rfl

@[simp]
theorem CuspForm.toSlashInvariantForm_coe (f : CuspForm Γ k) : ⇑f.1 = f := rfl

@[ext]
theorem ModularForm.ext {f g : ModularForm Γ k} (h : ∀ x, f x = g x) : f = g :=
  DFunLike.ext f g h

@[ext]
theorem CuspForm.ext {f g : CuspForm Γ k} (h : ∀ x, f x = g x) : f = g :=
  DFunLike.ext f g h

/-- Copy of a `ModularForm` with a new `toFun` equal to the old one. Useful to fix
definitional equalities. -/
protected def ModularForm.copy (f : ModularForm Γ k) (f' : ℍ → ℂ) (h : f' = ⇑f) :
    ModularForm Γ k where
  toSlashInvariantForm := f.1.copy f' h
  holo' := h.symm ▸ f.holo'
  bdd_at_infty' A := h.symm ▸ f.bdd_at_infty' A

/-- Copy of a `CuspForm` with a new `toFun` equal to the old one. Useful to fix
definitional equalities. -/
protected def CuspForm.copy (f : CuspForm Γ k) (f' : ℍ → ℂ) (h : f' = ⇑f) : CuspForm Γ k where
  toSlashInvariantForm := f.1.copy f' h
  holo' := h.symm ▸ f.holo'
  zero_at_infty' A := h.symm ▸ f.zero_at_infty' A

end ModularForm

namespace ModularForm

open SlashInvariantForm

variable {Γ : Subgroup SL(2, ℤ)} {k : ℤ}

instance add : Add (ModularForm Γ k) :=
  ⟨fun f g =>
    { toSlashInvariantForm := f + g
      holo' := f.holo'.add g.holo'
      bdd_at_infty' := fun A => by simpa using (f.bdd_at_infty' A).add (g.bdd_at_infty' A) }⟩

@[simp]
theorem coe_add (f g : ModularForm Γ k) : ⇑(f + g) = f + g :=
  rfl

@[simp]
theorem add_apply (f g : ModularForm Γ k) (z : ℍ) : (f + g) z = f z + g z :=
  rfl

instance instZero : Zero (ModularForm Γ k) :=
  ⟨ { toSlashInvariantForm := 0
      holo' := fun _ => mdifferentiableAt_const
      bdd_at_infty' := fun A => by simpa using zero_form_isBoundedAtImInfty } ⟩

@[simp]
theorem coe_zero : ⇑(0 : ModularForm Γ k) = (0 : ℍ → ℂ) :=
  rfl

@[simp]
theorem zero_apply (z : ℍ) : (0 : ModularForm Γ k) z = 0 :=
  rfl

section

variable {α : Type*} [SMul α ℂ] [IsScalarTower α ℂ ℂ]

instance instSMul : SMul α (ModularForm Γ k) where
  smul c f :=
  { toSlashInvariantForm := c • f.1
    holo' := by simpa using f.holo'.const_smul (c • (1 : ℂ))
    bdd_at_infty' := fun A => by simpa [SL_smul_slash]
      using (f.bdd_at_infty' A).const_smul_left (c • (1 : ℂ)) }

@[simp]
theorem coe_smul (f : ModularForm Γ k) (n : α) : ⇑(n • f) = n • ⇑f :=
  rfl

@[simp]
theorem smul_apply (f : ModularForm Γ k) (n : α) (z : ℍ) : (n • f) z = n • f z :=
  rfl

end

instance instNeg : Neg (ModularForm Γ k) :=
  ⟨fun f =>
    { toSlashInvariantForm := -f.1
      holo' := f.holo'.neg
      bdd_at_infty' := fun A => by simpa using (f.bdd_at_infty' A).neg }⟩

@[simp]
theorem coe_neg (f : ModularForm Γ k) : ⇑(-f) = -f :=
  rfl

@[simp]
theorem neg_apply (f : ModularForm Γ k) (z : ℍ) : (-f) z = -f z :=
  rfl

instance instSub : Sub (ModularForm Γ k) :=
  ⟨fun f g => f + -g⟩

@[simp]
theorem coe_sub (f g : ModularForm Γ k) : ⇑(f - g) = f - g :=
  rfl

@[simp]
theorem sub_apply (f g : ModularForm Γ k) (z : ℍ) : (f - g) z = f z - g z :=
  rfl

instance : AddCommGroup (ModularForm Γ k) :=
  DFunLike.coe_injective.addCommGroup _ rfl coe_add coe_neg coe_sub coe_smul coe_smul

/-- Additive coercion from `ModularForm` to `ℍ → ℂ`. -/
@[simps]
def coeHom : ModularForm Γ k →+ ℍ → ℂ where
  toFun f := f
  map_zero' := coe_zero
  map_add' _ _ := rfl

instance : Module ℂ (ModularForm Γ k) :=
  Function.Injective.module ℂ coeHom DFunLike.coe_injective fun _ _ => rfl

instance : Inhabited (ModularForm Γ k) :=
  ⟨0⟩

/-- The modular form of weight `k_1 + k_2` given by the product of two modular forms of weights
`k_1` and `k_2`. -/
def mul {k_1 k_2 : ℤ} {Γ : Subgroup SL(2, ℤ)} (f : ModularForm Γ k_1) (g : ModularForm Γ k_2) :
    ModularForm Γ (k_1 + k_2) where
  toSlashInvariantForm := f.1.mul g.1
  holo' := f.holo'.mul g.holo'
  bdd_at_infty' A := by
    simpa only [coe_mul, mul_slash_SL2] using (f.bdd_at_infty' A).mul (g.bdd_at_infty' A)

@[simp]
theorem mul_coe {k_1 k_2 : ℤ} {Γ : Subgroup SL(2, ℤ)} (f : ModularForm Γ k_1)
    (g : ModularForm Γ k_2) : (f.mul g : ℍ → ℂ) = f * g :=
  rfl

/-- The constant function with value `x : ℂ` as a modular form of weight 0 and any level. -/
def const (x : ℂ) : ModularForm Γ 0 where
  toSlashInvariantForm := .const x
  holo' _ := mdifferentiableAt_const
  bdd_at_infty' A := by
    simpa only [SlashInvariantForm.const_toFun,
      ModularForm.is_invariant_const] using atImInfty.const_boundedAtFilter x

@[simp]
lemma const_apply (x : ℂ) (τ : ℍ) : (const x : ModularForm Γ 0) τ = x := rfl

instance : One (ModularForm Γ 0) where
  one := { const 1 with toSlashInvariantForm := 1 }

@[simp]
theorem one_coe_eq_one : ⇑(1 : ModularForm Γ 0) = 1 :=
  rfl

instance (Γ : Subgroup SL(2, ℤ)) : NatCast (ModularForm Γ 0) where
  natCast n := const n

@[simp, norm_cast]
lemma coe_natCast (Γ : Subgroup SL(2, ℤ)) (n : ℕ) :
    ⇑(n : ModularForm Γ 0) = n := rfl

lemma toSlashInvariantForm_natCast (Γ : Subgroup SL(2, ℤ)) (n : ℕ) :
    (n : ModularForm Γ 0).toSlashInvariantForm = n := rfl

instance (Γ : Subgroup SL(2, ℤ)) : IntCast (ModularForm Γ 0) where
  intCast z := const z

@[simp, norm_cast]
lemma coe_intCast (Γ : Subgroup SL(2, ℤ)) (z : ℤ) :
    ⇑(z : ModularForm Γ 0) = z := rfl

lemma toSlashInvariantForm_intCast (Γ : Subgroup SL(2, ℤ)) (z : ℤ) :
    (z : ModularForm Γ 0).toSlashInvariantForm = z := rfl

end ModularForm

namespace CuspForm

open ModularForm

variable {F : Type*} {Γ : Subgroup SL(2, ℤ)} {k : ℤ}

instance hasAdd : Add (CuspForm Γ k) :=
  ⟨fun f g =>
    { toSlashInvariantForm := f + g
      holo' := f.holo'.add g.holo'
      zero_at_infty' := fun A => by simpa using (f.zero_at_infty' A).add (g.zero_at_infty' A) }⟩

@[simp]
theorem coe_add (f g : CuspForm Γ k) : ⇑(f + g) = f + g :=
  rfl

@[simp]
theorem add_apply (f g : CuspForm Γ k) (z : ℍ) : (f + g) z = f z + g z :=
  rfl

instance instZero : Zero (CuspForm Γ k) :=
  ⟨ { toSlashInvariantForm := 0
      holo' := fun _ => mdifferentiableAt_const
      zero_at_infty' := by simpa using Filter.zero_zeroAtFilter _ } ⟩

@[simp]
theorem coe_zero : ⇑(0 : CuspForm Γ k) = (0 : ℍ → ℂ) :=
  rfl

@[simp]
theorem zero_apply (z : ℍ) : (0 : CuspForm Γ k) z = 0 :=
  rfl

section

variable {α : Type*} [SMul α ℂ] [IsScalarTower α ℂ ℂ]

instance instSMul : SMul α (CuspForm Γ k) :=
  ⟨fun c f =>
    { toSlashInvariantForm := c • f.1
      holo' := by simpa using f.holo'.const_smul (c • (1 : ℂ))
      zero_at_infty' := fun A => by simpa using (f.zero_at_infty' A).smul (c • (1 : ℂ)) }⟩

@[simp]
theorem coe_smul (f : CuspForm Γ k) (n : α) : ⇑(n • f) = n • ⇑f :=
  rfl

@[simp]
theorem smul_apply (f : CuspForm Γ k) (n : α) {z : ℍ} : (n • f) z = n • f z :=
  rfl

end

instance instNeg : Neg (CuspForm Γ k) :=
  ⟨fun f =>
    { toSlashInvariantForm := -f.1
      holo' := f.holo'.neg
      zero_at_infty' := fun A => by simpa using (f.zero_at_infty' A).neg }⟩

@[simp]
theorem coe_neg (f : CuspForm Γ k) : ⇑(-f) = -f :=
  rfl

@[simp]
theorem neg_apply (f : CuspForm Γ k) (z : ℍ) : (-f) z = -f z :=
  rfl

instance instSub : Sub (CuspForm Γ k) :=
  ⟨fun f g => f + -g⟩

@[simp]
theorem coe_sub (f g : CuspForm Γ k) : ⇑(f - g) = f - g :=
  rfl

@[simp]
theorem sub_apply (f g : CuspForm Γ k) (z : ℍ) : (f - g) z = f z - g z :=
  rfl

instance : AddCommGroup (CuspForm Γ k) :=
  DFunLike.coe_injective.addCommGroup _ rfl coe_add coe_neg coe_sub coe_smul coe_smul

/-- Additive coercion from `CuspForm` to `ℍ → ℂ`. -/
@[simps]
def coeHom : CuspForm Γ k →+ ℍ → ℂ where
  toFun f := f
  map_zero' := CuspForm.coe_zero
  map_add' _ _ := rfl

instance : Module ℂ (CuspForm Γ k) :=
  Function.Injective.module ℂ coeHom DFunLike.coe_injective fun _ _ => rfl

instance : Inhabited (CuspForm Γ k) :=
  ⟨0⟩

instance (priority := 99) [FunLike F ℍ ℂ] [CuspFormClass F Γ k] : ModularFormClass F Γ k where
  slash_action_eq := SlashInvariantFormClass.slash_action_eq
  holo := CuspFormClass.holo
  bdd_at_infty _ _ := (CuspFormClass.zero_at_infty _ _).boundedAtFilter

end CuspForm

namespace ModularForm

section GradedRing

/-- Cast for modular forms, which is useful for avoiding `Heq`s. -/
def mcast {a b : ℤ} {Γ : Subgroup SL(2, ℤ)} (h : a = b) (f : ModularForm Γ a) :
    ModularForm Γ b where
  toFun := (f : ℍ → ℂ)
  slash_action_eq' A := h ▸ f.slash_action_eq' A
  holo' := f.holo'
  bdd_at_infty' A := h ▸ f.bdd_at_infty' A

@[ext (iff := false)]
theorem gradedMonoid_eq_of_cast {Γ : Subgroup SL(2, ℤ)} {a b : GradedMonoid (ModularForm Γ)}
    (h : a.fst = b.fst) (h2 : mcast h a.snd = b.snd) : a = b := by
  obtain ⟨i, a⟩ := a
  obtain ⟨j, b⟩ := b
  cases h
  exact congr_arg _ h2

instance (Γ : Subgroup SL(2, ℤ)) : GradedMonoid.GOne (ModularForm Γ) where
  one := 1

instance (Γ : Subgroup SL(2, ℤ)) : GradedMonoid.GMul (ModularForm Γ) where
  mul f g := f.mul g

instance instGCommRing (Γ : Subgroup SL(2, ℤ)) : DirectSum.GCommRing (ModularForm Γ) where
  one_mul _ := gradedMonoid_eq_of_cast (zero_add _) (ext fun _ => one_mul _)
  mul_one _ := gradedMonoid_eq_of_cast (add_zero _) (ext fun _ => mul_one _)
  mul_assoc _ _ _ := gradedMonoid_eq_of_cast (add_assoc _ _ _) (ext fun _ => mul_assoc _ _ _)
  mul_zero {_ _} _ := ext fun _ => mul_zero _
  zero_mul {_ _} _ := ext fun _ => zero_mul _
  mul_add {_ _} _ _ _ := ext fun _ => mul_add _ _ _
  add_mul {_ _} _ _ _ := ext fun _ => add_mul _ _ _
  mul_comm _ _ := gradedMonoid_eq_of_cast (add_comm _ _) (ext fun _ => mul_comm _ _)
  natCast := Nat.cast
  natCast_zero := ext fun _ => Nat.cast_zero
  natCast_succ _ := ext fun _ => Nat.cast_succ _
  intCast := Int.cast
  intCast_ofNat _ := ext fun _ => AddGroupWithOne.intCast_ofNat _
  intCast_negSucc_ofNat _ := ext fun _ => AddGroupWithOne.intCast_negSucc _

instance instGAlgebra (Γ : Subgroup SL(2, ℤ)) : DirectSum.GAlgebra ℂ (ModularForm Γ) where
  toFun := { toFun := const, map_zero' := rfl, map_add' := fun _ _ => rfl }
  map_one := rfl
  map_mul _x _y := rfl
  commutes _c _x := gradedMonoid_eq_of_cast (add_comm _ _) (ext fun _ => mul_comm _ _)
  smul_def _x _x := gradedMonoid_eq_of_cast (zero_add _).symm (ext fun _ => rfl)

open scoped DirectSum in
example (Γ : Subgroup SL(2, ℤ)) : Algebra ℂ (⨁ i, ModularForm Γ i) := inferInstance

end GradedRing

end ModularForm

section translate
open ModularForm

variable {k : ℤ} {Γ : Subgroup SL(2, ℤ)} {F : Type*} [FunLike F ℍ ℂ] (f : F) (g : SL(2, ℤ))

/-- Translating a `ModularForm` by `SL(2, ℤ)`, to obtain a new `ModularForm`.

(TODO : Define this more generally for `GL(2, ℚ)`.) -/
noncomputable def ModularForm.translate [ModularFormClass F Γ k] :
    ModularForm (Γ.map <| MulAut.conj g⁻¹) k where
  __ := SlashInvariantForm.translate f g
  bdd_at_infty' h := by simpa [SlashAction.slash_mul] using ModularFormClass.bdd_at_infty f (g * h)
  holo' := (ModularFormClass.holo f).slash k (by simp)

@[simp]
lemma ModularForm.coe_translate [ModularFormClass F Γ k] : translate f g = ⇑f ∣[k] g := rfl

/-- Translating a `CuspForm` by `SL(2, ℤ)`, to obtain a new `CuspForm`.

(TODO : Define this more generally for `GL(2, ℚ)⁺`.) -/
noncomputable def CuspForm.translate [CuspFormClass F Γ k] :
    CuspForm (Γ.map <| MulAut.conj g⁻¹) k where
  __ := ModularForm.translate f g
  zero_at_infty' h := by simpa [SlashAction.slash_mul] using CuspFormClass.zero_at_infty f (g * h)

@[simp]
lemma CuspForm.coe_translate [CuspFormClass F Γ k] : translate f g = ⇑f ∣[k] g := rfl

end translate
```
