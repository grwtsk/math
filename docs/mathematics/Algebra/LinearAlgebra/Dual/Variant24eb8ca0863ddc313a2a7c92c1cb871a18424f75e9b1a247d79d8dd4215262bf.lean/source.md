# Complete source: GRWTSK.Algebra.LinearAlgebra.Dual.Variant24eb8ca0863ddc313a2a7c92c1cb871a18424f75e9b1a247d79d8dd4215262bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1eb14a6e68b98942d0f39ae77bf0ad05215b3509` · SHA-256 `22fca63456e3de88e6a7ded8d25832fc385599f642d034cb88f1047ee653ca9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapToMatrixTranspose.Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapToMatrixTranspose.Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Dual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Patrick Massot, Casper Putz, Anne Baanen
-/
module

public import Mathlib.LinearAlgebra.DFinsupp
public import Mathlib.LinearAlgebra.Dual.Basis
public import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Dual space, linear maps and matrices.

This file contains some results about matrices and dual spaces.

## Tags

matrix, linear map, transpose, dual
-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearMapToMatrixTranspose.Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5

@[expose] public section

open Matrix Module

section Transpose

variable {K V₁ V₂ ι₁ ι₂ : Type*} [CommSemiring K] [AddCommGroup V₁] [Module K V₁] [AddCommGroup V₂]
  [Module K V₂] [Fintype ι₁] [Fintype ι₂] [DecidableEq ι₁] [DecidableEq ι₂] {B₁ : Basis ι₁ K V₁}
  {B₂ : Basis ι₂ K V₂}

@[simp]
theorem LinearMap.toMatrix_transpose (u : V₁ →ₗ[K] V₂) :
    LinearMap.toMatrix B₂.dualBasis B₁.dualBasis (Module.Dual.transpose (R := K) u) =
      (LinearMap.toMatrix B₁ B₂ u)ᵀ := by
  ext i j
  simp only [LinearMap.toMatrix_apply, Module.Dual.transpose_apply, B₁.dualBasis_repr,
    B₂.dualBasis_apply, Matrix.transpose_apply, LinearMap.comp_apply]

@[simp]
theorem Matrix.toLin_transpose (M : Matrix ι₁ ι₂ K) : Matrix.toLin B₁.dualBasis B₂.dualBasis Mᵀ =
    Module.Dual.transpose (R := K) (Matrix.toLin B₂ B₁ M) := by
  apply (LinearMap.toMatrix B₁.dualBasis B₂.dualBasis).injective
  rw [LinearMap.toMatrix_toLin, LinearMap.toMatrix_transpose, LinearMap.toMatrix_toLin]

end Transpose

/-- The dot product as a linear equivalence to the dual. -/
@[simps] def dotProductEquiv (R n : Type*) [CommSemiring R] [Fintype n] [DecidableEq n] :
    (n → R) ≃ₗ[R] Module.Dual R (n → R) where
  toFun v := ⟨⟨dotProduct v, dotProduct_add v⟩, fun t ↦ dotProduct_smul t v⟩
  map_add' v w := by ext; simp
  map_smul' t v := by ext; simp
  invFun f i := f (LinearMap.single R _ i 1)
  left_inv v := by simp
  right_inv f := by ext; simp
```
