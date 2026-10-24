# Complete source: GRWTSK.Algebra.LinearAlgebra.ToMatrix.Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43440540f73980eec1c21cc9cefe72953ed8de3f` · SHA-256 `0441e5e41264916de50c2ab4e59ff9d194398cb7dfc52dffbe3a42e4a78a1578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CharpolyToMatrix.Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CharpolyToMatrix.Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Charpoly/ToMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.LinearAlgebra.Charpoly.Basic
import Mathlib.LinearAlgebra.Matrix.Basis
import Mathlib.RingTheory.Finiteness.Prod

/-!

# Characteristic polynomial

## Main result

* `LinearMap.charpoly_toMatrix f` : `charpoly f` is the characteristic polynomial of the matrix
  of `f` in any basis.

-/



namespace GRWTSK.Algebra.LinearAlgebra.CharpolyToMatrix.Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1

universe u v w

variable {R M M₁ M₂ : Type*} [CommRing R] [Nontrivial R]
variable [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
variable [AddCommGroup M₁] [Module R M₁] [Module.Finite R M₁] [Module.Free R M₁]
variable [AddCommGroup M₂] [Module R M₂] [Module.Finite R M₂] [Module.Free R M₂]
variable (f : M →ₗ[R] M)

open Matrix

noncomputable section

open Module.Free Polynomial Matrix

namespace LinearMap

section Basic

/- These attribute tweaks save ~ 2000 heartbeats in `LinearMap.charpoly_toMatrix`. -/
attribute [-instance] instCoeOutOfCoeSort
attribute [local instance 2000] RingHomClass.toNonUnitalRingHomClass
attribute [local instance 2000] NonUnitalRingHomClass.toMulHomClass

/-- `charpoly f` is the characteristic polynomial of the matrix of `f` in any basis. -/
@[simp]
theorem charpoly_toMatrix {ι : Type w} [DecidableEq ι] [Fintype ι] (b : Basis ι R M) :
    (toMatrix b b f).charpoly = f.charpoly := by
  let A := toMatrix b b f
  let b' := chooseBasis R M
  let ι' := ChooseBasisIndex R M
  let A' := toMatrix b' b' f
  let e := Basis.indexEquiv b b'
  let φ := reindexLinearEquiv R R e e
  let φ₁ := reindexLinearEquiv R R e (Equiv.refl ι')
  let φ₂ := reindexLinearEquiv R R (Equiv.refl ι') (Equiv.refl ι')
  let φ₃ := reindexLinearEquiv R R (Equiv.refl ι') e
  let P := b.toMatrix b'
  let Q := b'.toMatrix b
  have hPQ : C.mapMatrix (φ₁ P) * C.mapMatrix (φ₃ Q) = 1 := by
    rw [RingHom.mapMatrix_apply, RingHom.mapMatrix_apply, ← Matrix.map_mul,
      reindexLinearEquiv_mul R R, Basis.toMatrix_mul_toMatrix_flip,
      reindexLinearEquiv_one, ← RingHom.mapMatrix_apply, RingHom.map_one]
  calc
    A.charpoly = (reindex e e A).charpoly := (charpoly_reindex _ _).symm
    _ = det (scalar ι' X - C.mapMatrix (φ A)) := rfl
    _ = det (scalar ι' X - C.mapMatrix (φ (P * A' * Q))) := by
      rw [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix]
    _ = det (scalar ι' X - C.mapMatrix (φ₁ P * φ₂ A' * φ₃ Q)) := by
      rw [reindexLinearEquiv_mul, reindexLinearEquiv_mul]
    _ = det (scalar ι' X - C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by
      simp [φ₁, φ₂, φ₃, ι']
    _ = det (scalar ι' X * C.mapMatrix (φ₁ P) * C.mapMatrix (φ₃ Q) -
          C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by
      rw [Matrix.mul_assoc ((scalar ι') X), hPQ, Matrix.mul_one]
    _ = det (C.mapMatrix (φ₁ P) * scalar ι' X * C.mapMatrix (φ₃ Q) -
          C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by
      rw [scalar_commute _ commute_X]
    _ = det (C.mapMatrix (φ₁ P) * (scalar ι' X - C.mapMatrix A') * C.mapMatrix (φ₃ Q)) := by
      rw [← Matrix.sub_mul, ← Matrix.mul_sub]
    _ = det (C.mapMatrix (φ₁ P)) * det (scalar ι' X - C.mapMatrix A') * det (C.mapMatrix (φ₃ Q)) :=
      by rw [det_mul, det_mul]
    _ = det (C.mapMatrix (φ₁ P)) * det (C.mapMatrix (φ₃ Q)) * det (scalar ι' X - C.mapMatrix A') :=
      by ring
    _ = det (scalar ι' X - C.mapMatrix A') := by
      rw [← det_mul, hPQ, det_one, one_mul]
    _ = f.charpoly := rfl

lemma charpoly_prodMap (f₁ : M₁ →ₗ[R] M₁) (f₂ : M₂ →ₗ[R] M₂) :
    (f₁.prodMap f₂).charpoly = f₁.charpoly * f₂.charpoly := by
  let b₁ := chooseBasis R M₁
  let b₂ := chooseBasis R M₂
  let b := b₁.prod b₂
  rw [← charpoly_toMatrix f₁ b₁, ← charpoly_toMatrix f₂ b₂, ← charpoly_toMatrix (f₁.prodMap f₂) b,
    toMatrix_prodMap b₁ b₂ f₁ f₂, Matrix.charpoly_fromBlocks_zero₁₂]

end Basic

end LinearMap

@[simp]
lemma LinearEquiv.charpoly_conj (e : M₁ ≃ₗ[R] M₂) (φ : Module.End R M₁) :
    (e.conj φ).charpoly = φ.charpoly := by
  let b := chooseBasis R M₁
  rw [← LinearMap.charpoly_toMatrix φ b, ← LinearMap.charpoly_toMatrix (e.conj φ) (b.map e)]
  congr 1
  ext i j : 1
  simp [Matrix.charmatrix, LinearMap.toMatrix, Matrix.diagonal, LinearEquiv.conj_apply]
```
