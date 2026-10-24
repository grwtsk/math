# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Varianta4ecd590f1b78e8bc8233afb3d3766dbd20d3301a27c8e846c0cf24efddf1dce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d131e5b87a848b0e3ff56fbdf4f1bf3fb6ccba4e` · SHA-256 `7d4b9d4566d980c67d0a9fb48206ed966f5cb8f77b58f92016b67583a39b1768`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AntipodeDef.Variant21e0870b98d318dca74c4bc936515607565f0289fbbaeab83069737b77da3ecb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21e0870b98d318dca74c4bc936515607565f0289fbbaeab83069737b77da3ecb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AntipodeDef.Variant21e0870b98d318dca74c4bc936515607565f0289fbbaeab83069737b77da3ecb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"21e0870b98d318dca74c4bc936515607565f0289fbbaeab83069737b77da3ecb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/HopfAlgebra/TensorProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston, Andrew Yang
-/
module

public import Mathlib.RingTheory.HopfAlgebra.Basic
public import Mathlib.RingTheory.Bialgebra.TensorProduct

/-!
# Tensor products of Hopf algebras

We define the Hopf algebra instance on the tensor product of two Hopf algebras.

-/


namespace GRWTSK.Algebra.LinearAlgebra.AntipodeDef.Variant21e0870b98d318dca74c4bc936515607565f0289fbbaeab83069737b77da3ecb

public section

open Coalgebra HopfAlgebra

namespace TensorProduct

variable {R S A B : Type*} [CommSemiring R] [CommSemiring S] [Semiring A] [Semiring B]
    [Algebra R S] [HopfAlgebra R A] [HopfAlgebra S B] [Algebra R B]
    [IsScalarTower R S B]

set_option backward.defeqAttrib.useBackward true in
noncomputable
instance : HopfAlgebra S (B ⊗[R] A) where
  antipode := AlgebraTensorModule.map (HopfAlgebra.antipode S) (HopfAlgebra.antipode R)
  mul_antipode_rTensor_comul := by
    ext x y
    convert! congr($(mul_antipode_rTensor_comul_apply (R := S) x) ⊗ₜ[R]
      $(mul_antipode_rTensor_comul_apply (R := R) y)) using 1
    · dsimp
      hopf_tensor_induction comul (R := S) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul']
  mul_antipode_lTensor_comul := by
    ext x y
    convert! congr($(mul_antipode_lTensor_comul_apply (R := S) x) ⊗ₜ[R]
      $(mul_antipode_lTensor_comul_apply (R := R) y)) using 1
    · dsimp [Algebra.TensorProduct.one_def]
      hopf_tensor_induction comul (R := S) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul']

@[simp]
theorem antipode_def :
    antipode S (A := B ⊗[R] A) = AlgebraTensorModule.map (antipode S) (antipode R) := rfl

end TensorProduct
```
