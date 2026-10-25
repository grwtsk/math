# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Derivation.Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa2b842ec2f27434d52f83e1f8ae6d92e885abe6` · SHA-256 `5434f3e74e5c44f5e4489d2450aa21bbe9f4805b7d18dcd250f1ced580f293f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.DerivativePrime.Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.DerivativePrime.Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124","mathematical_subject":"Logic.ProofTheory","original_sha256":"e7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Polynomial/Derivation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Richard Hill
-/
import Mathlib.Data.Polynomial.Derivative
import Mathlib.RingTheory.Derivation.Basic
import Mathlib.Data.Polynomial.AlgebraMap

/-!
# Derivations of univariate polynomials

In this file we prove that an `R`-derivation of `Polynomial R` is determined by its value on `X`.
We also provide a constructor `Polynomial.mkDerivation` that
builds a derivation from its value on `X`, and a linear equivalence
`Polynomial.mkDerivationEquiv` between `A` and `Derivation (Polynomial R) A`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.DerivativePrime.Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124

noncomputable section

namespace Polynomial

open scoped BigOperators

variable {R A : Type*} [CommSemiring R]

/-- `Polynomial.derivative` as a derivation. -/
@[simps]
def derivative' : Derivation R R[X] R[X] where
  toFun := derivative
  map_add' _ _ := derivative_add
  map_smul' := derivative_smul
  map_one_eq_zero' := derivative_one
  leibniz' f g := by simp [mul_comm, add_comm, derivative_mul]

variable [AddCommMonoid A] [Module R A] [Module (Polynomial R) A]

@[simp]
theorem derivation_C (D : Derivation R R[X] A) (a : R) : D (C a) = 0 :=
  D.map_algebraMap a

@[simp]
theorem C_smul_derivation_apply (D : Derivation R R[X] A) (a : R) (f : R[X]) :
    C a • D f = a • D f := by
  have : C a • D f = D (C a * f) := by simp
  rw [this, C_mul', D.map_smul]

@[ext]
theorem derivation_ext {D₁ D₂ : Derivation R R[X] A} (h : D₁ X = D₂ X) : D₁ = D₂ :=
  Derivation.ext fun f => Derivation.eqOn_adjoin (Set.eqOn_singleton.2 h) <| by
    simp only [adjoin_X, Algebra.coe_top, Set.mem_univ]

variable [IsScalarTower R (Polynomial R) A]

variable (R)

/-- The derivation on `R[X]` that takes the value `a` on `X`. -/
def mkDerivation : A →ₗ[R] Derivation R R[X] A where
  toFun := fun a ↦ (LinearMap.toSpanSingleton R[X] A a).compDer derivative'
  map_add' := fun a b ↦ by ext; simp
  map_smul' := fun t a ↦ by ext; simp

lemma mkDerivation_apply (a : A) (f : R[X]) :
    mkDerivation R a f = derivative f • a := by
  rfl

@[simp]
theorem mkDerivation_X (a : A) : mkDerivation R a X = a := by simp [mkDerivation_apply]

lemma mkDerivation_one_eq_derivative' : mkDerivation R (1 : R[X]) = derivative' := by
  ext : 1
  simp [derivative']

lemma mkDerivation_one_eq_derivative (f : R[X]) : mkDerivation R (1 : R[X]) f = derivative f := by
  rw [mkDerivation_one_eq_derivative']
  rfl

/-- `Polynomial.mkDerivation` as a linear equivalence. -/
def mkDerivationEquiv : A ≃ₗ[R] Derivation R R[X] A :=
  LinearEquiv.symm <|
    { invFun := mkDerivation R
      toFun := fun D => D X
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl
      left_inv := fun _ => derivation_ext <| mkDerivation_X _ _
      right_inv := fun _ => mkDerivation_X _ _ }

@[simp] lemma mkDerivationEquiv_apply (a : A) :
    mkDerivationEquiv R a = mkDerivation R a := by
  rfl

@[simp] lemma mkDerivationEquiv_symm_apply (D : Derivation R R[X] A) :
    (mkDerivationEquiv R).symm D = D X := rfl

end Polynomial
```
