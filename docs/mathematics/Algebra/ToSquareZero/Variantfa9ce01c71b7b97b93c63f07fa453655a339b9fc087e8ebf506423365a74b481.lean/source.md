# Complete source: GRWTSK.Algebra.ToSquareZero.Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af3f8877bfc2490f25adf1af1e69357dd97637c8` · SHA-256 `50bf9f521783a44e7e7de0909d82172c20194f02a196f3746e93d7c169801d2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DiffToIdealOfQuotientCompEq.Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.DiffToIdealOfQuotientCompEq.Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Derivation/ToSquareZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri, Andrew Yang
-/
import Mathlib.RingTheory.Derivation.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations

/-!
# Results

- `derivationToSquareZeroOfLift`: The `R`-derivations from `A` into a square-zero ideal `I`
  of `B` corresponds to the lifts `A →ₐ[R] B` of the map `A →ₐ[R] B ⧸ I`.

-/



namespace GRWTSK.Algebra.DiffToIdealOfQuotientCompEq.Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d

section ToSquareZero

universe u v w

variable {R : Type u} {A : Type v} {B : Type w} [CommSemiring R] [CommSemiring A] [CommRing B]
variable [Algebra R A] [Algebra R B] (I : Ideal B)

/-- If `f₁ f₂ : A →ₐ[R] B` are two lifts of the same `A →ₐ[R] B ⧸ I`,
  we may define a map `f₁ - f₂ : A →ₗ[R] I`. -/
def diffToIdealOfQuotientCompEq (f₁ f₂ : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f₁ = (Ideal.Quotient.mkₐ R I).comp f₂) : A →ₗ[R] I :=
  LinearMap.codRestrict (I.restrictScalars _) (f₁.toLinearMap - f₂.toLinearMap) (by
    intro x
    change f₁ x - f₂ x ∈ I
    rw [← Ideal.Quotient.eq, ← Ideal.Quotient.mkₐ_eq_mk R, ← AlgHom.comp_apply, e]
    rfl)

@[simp]
theorem diffToIdealOfQuotientCompEq_apply (f₁ f₂ : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f₁ = (Ideal.Quotient.mkₐ R I).comp f₂) (x : A) :
    ((diffToIdealOfQuotientCompEq I f₁ f₂ e) x : B) = f₁ x - f₂ x :=
  rfl

variable [Algebra A B]

/-- Given a tower of algebras `R → A → B`, and a square-zero `I : Ideal B`, each lift `A →ₐ[R] B`
of the canonical map `A →ₐ[R] B ⧸ I` corresponds to an `R`-derivation from `A` to `I`. -/
def derivationToSquareZeroOfLift [IsScalarTower R A B] (hI : I ^ 2 = ⊥) (f : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I)) :
    Derivation R A I := by
  refine
    { diffToIdealOfQuotientCompEq I f (IsScalarTower.toAlgHom R A B) ?_ with
      map_one_eq_zero' := ?_
      leibniz' := ?_ }
  · rw [e]; ext; rfl
  · ext; simp
  · intro x y
    let F := diffToIdealOfQuotientCompEq I f (IsScalarTower.toAlgHom R A B) (by rw [e]; ext; rfl)
    have : (f x - algebraMap A B x) * (f y - algebraMap A B y) = 0 := by
      rw [← Ideal.mem_bot, ← hI, pow_two]
      convert Ideal.mul_mem_mul (F x).2 (F y).2 using 1
    ext
    dsimp only [Submodule.coe_add, Submodule.coe_mk, LinearMap.coe_mk,
      diffToIdealOfQuotientCompEq_apply, Submodule.coe_smul_of_tower, IsScalarTower.coe_toAlgHom',
      LinearMap.toFun_eq_coe]
    simp only [map_mul, sub_mul, mul_sub, Algebra.smul_def] at this ⊢
    rw [sub_eq_iff_eq_add, sub_eq_iff_eq_add] at this
    simp only [LinearMap.coe_toAddHom, diffToIdealOfQuotientCompEq_apply, map_mul, this,
      IsScalarTower.coe_toAlgHom']
    ring

variable (hI : I ^ 2 = ⊥)

theorem derivationToSquareZeroOfLift_apply [IsScalarTower R A B] (f : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I)) (x : A) :
    (derivationToSquareZeroOfLift I hI f e x : B) = f x - algebraMap A B x :=
  rfl

/-- Given a tower of algebras `R → A → B`, and a square-zero `I : Ideal B`, each `R`-derivation
from `A` to `I` corresponds to a lift `A →ₐ[R] B` of the canonical map `A →ₐ[R] B ⧸ I`. -/
@[simps -isSimp]
def liftOfDerivationToSquareZero [IsScalarTower R A B] (hI : I ^ 2 = ⊥) (f : Derivation R A I) :
    A →ₐ[R] B :=
  { ((I.restrictScalars R).subtype.comp f.toLinearMap + (IsScalarTower.toAlgHom R A B).toLinearMap :
      A →ₗ[R] B) with
    toFun := fun x => f x + algebraMap A B x
    map_one' := by
      -- Note: added the `(algebraMap _ _)` hint because otherwise it would match `f 1`
      rw [map_one (algebraMap _ _), f.map_one_eq_zero, Submodule.coe_zero, zero_add]
    map_mul' := fun x y => by
      have : (f x : B) * f y = 0 := by
        rw [← Ideal.mem_bot, ← hI, pow_two]
        convert Ideal.mul_mem_mul (f x).2 (f y).2 using 1
      simp only [map_mul, f.leibniz, add_mul, mul_add, Submodule.coe_add,
        Submodule.coe_smul_of_tower, Algebra.smul_def, this]
      ring
    commutes' := fun r => by
      simp only [Derivation.map_algebraMap, eq_self_iff_true, zero_add, Submodule.coe_zero, ←
        IsScalarTower.algebraMap_apply R A B r]
    map_zero' := ((I.restrictScalars R).subtype.comp f.toLinearMap +
      (IsScalarTower.toAlgHom R A B).toLinearMap).map_zero }

-- @[simp] -- Porting note: simp normal form is `liftOfDerivationToSquareZero_mk_apply'`
theorem liftOfDerivationToSquareZero_mk_apply [IsScalarTower R A B] (d : Derivation R A I) (x : A) :
    Ideal.Quotient.mk I (liftOfDerivationToSquareZero I hI d x) = algebraMap A (B ⧸ I) x := by
  rw [liftOfDerivationToSquareZero_apply, map_add, Ideal.Quotient.eq_zero_iff_mem.mpr (d x).prop,
    zero_add]
  rfl

@[simp]
theorem liftOfDerivationToSquareZero_mk_apply' (d : Derivation R A I) (x : A) :
    (Ideal.Quotient.mk I) (d x) + (algebraMap A (B ⧸ I)) x = algebraMap A (B ⧸ I) x := by
  simp only [Ideal.Quotient.eq_zero_iff_mem.mpr (d x).prop, zero_add]

/-- Given a tower of algebras `R → A → B`, and a square-zero `I : Ideal B`,
there is a 1-1 correspondence between `R`-derivations from `A` to `I` and
lifts `A →ₐ[R] B` of the canonical map `A →ₐ[R] B ⧸ I`. -/
@[simps!]
def derivationToSquareZeroEquivLift [IsScalarTower R A B] : Derivation R A I ≃
    { f : A →ₐ[R] B // (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I) } := by
  refine ⟨fun d => ⟨liftOfDerivationToSquareZero I hI d, ?_⟩, fun f =>
    (derivationToSquareZeroOfLift I hI f.1 f.2 :), ?_, ?_⟩
  · ext x; exact liftOfDerivationToSquareZero_mk_apply I hI d x
  · intro d; ext x; exact add_sub_cancel_right (d x : B) (algebraMap A B x)
  · rintro ⟨f, hf⟩; ext x; exact sub_add_cancel (f x) (algebraMap A B x)

end ToSquareZero
```
