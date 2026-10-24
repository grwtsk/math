# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2183f95df7c0c85032f32fd1efc52bad9b719022` · SHA-256 `aa702c8b2d89ae58ef181c9f4f03cc6fd292e409abadcb4fdd7f6311175ba91b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AlgHomMulLeftRightMatrixInv.Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AlgHomMulLeftRightMatrixInv.Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Azumaya/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie, Jujian Zhang
-/
import Mathlib.Algebra.Azumaya.Defs
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Matrix algebra is an Azumaya algebra over R

In this file we prove that finite dimensional matrix algebra `Matrix n n R` over `R`
is an Azumaya algebra where `R` is a commutative ring.

## Main Results

- `IsAzumaya.Matrix`: Finite dimensional matrix algebra over `R` is Azumaya.

-/

namespace GRWTSK.Algebra.LinearAlgebra.AlgHomMulLeftRightMatrixInv.Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d

open scoped TensorProduct

variable (R n : Type*) [CommSemiring R] [Fintype n] [DecidableEq n]

noncomputable section

open Matrix MulOpposite

/-- `AlgHom.mulLeftRight` for matrix algebra sends basis Eᵢⱼ⊗Eₖₗ to
  the map `f : Eₛₜ ↦ Eᵢⱼ * Eₛₜ * Eₖₗ = δⱼₛδₜₖEᵢₗ`, therefore we construct the inverse
  by sending `f` to `∑ᵢₗₛₜ f(Eₛₜ)ᵢₗ • Eᵢₛ⊗Eₜₗ`. -/
abbrev AlgHom.mulLeftRightMatrix_inv :
    Module.End R (Matrix n n R) →ₗ[R] Matrix n n R ⊗[R] (Matrix n n R)ᵐᵒᵖ where
  toFun f := ∑ ⟨⟨i, j⟩, k, l⟩ : (n × n) × n × n,
    f (single j k 1) i l • (single i j 1) ⊗ₜ[R] op (single k l 1)
  map_add' f1 f2 := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' r f := by simp [MulAction.mul_smul, Finset.smul_sum]

lemma AlgHom.mulLeftRightMatrix.inv_comp :
    (AlgHom.mulLeftRightMatrix_inv R n).comp
    (AlgHom.mulLeftRight R (Matrix n n R)).toLinearMap = .id :=
  Basis.ext (Basis.tensorProduct (Matrix.stdBasis _ _ _)
    ((Matrix.stdBasis _ _ _).map (opLinearEquiv ..)))
  fun ⟨⟨i0, j0⟩, k0, l0⟩ ↦ by
    simp [stdBasis_eq_single, ite_and, Fintype.sum_prod_type,
      mulLeftRight_apply, single, Matrix.mul_apply]

lemma AlgHom.mulLeftRightMatrix.comp_inv :
    (AlgHom.mulLeftRight R (Matrix n n R)).toLinearMap.comp
    (AlgHom.mulLeftRightMatrix_inv R n) = .id := by
  ext f : 1
  apply Basis.ext (Matrix.stdBasis _ _ _)
  intro ⟨i, j⟩
  simp only [LinearMap.coe_comp, LinearMap.coe_mk, AddHom.coe_mk, Function.comp_apply, map_sum,
    map_smul, stdBasis_eq_single, LinearMap.coeFn_sum, Finset.sum_apply,
    LinearMap.smul_apply, LinearMap.id_coe, id_eq]
  ext k l
  simp [sum_apply, Matrix.mul_apply, Finset.sum_mul, Finset.mul_sum, single,
    Fintype.sum_prod_type, ite_and]

namespace IsAzumaya

/-- A nontrivial matrix ring over `R` is an Azumaya algebra over `R`. -/
theorem matrix [Nonempty n] : IsAzumaya R (Matrix n n R) where
  eq_of_smul_eq_smul := by nontriviality R; exact eq_of_smul_eq_smul
  bij := Function.bijective_iff_has_inverse.mpr
    ⟨AlgHom.mulLeftRightMatrix_inv R n,
    DFunLike.congr_fun (AlgHom.mulLeftRightMatrix.inv_comp R n),
    DFunLike.congr_fun (AlgHom.mulLeftRightMatrix.comp_inv R n)⟩

end IsAzumaya

end
```
