# Complete source: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f343de3e2d8cc07af364639f7d5229b3f4421507` · SHA-256 `6a7f8cf6fb0deb920ca732509b026a5faf1c0d4bc5a33db3940a17b3d8249a01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.QuotIdealMapEquivTensorQuotAux.Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.QuotIdealMapEquivTensorQuotAux.Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/TensorProduct/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten, Yi Song, Sihan Su. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten, Yi Song, Sihan Su
-/
import Mathlib.LinearAlgebra.TensorProduct.Quotient
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.TensorProduct.Basic

/-!
# Interaction between quotients and tensor products for algebras

This files proves algebra analogs of the isomorphisms in
`Mathlib/LinearAlgebra/TensorProduct/Quotient.lean`.

## Main results

- `Algebra.TensorProduct.quotIdealMapEquivTensorQuot`:
  `B ⧸ (I.map <| algebraMap A B) ≃ₐ[B] B ⊗[A] (A ⧸ I)`
-/


namespace GRWTSK.Algebra.LinearAlgebra.QuotIdealMapEquivTensorQuotAux.Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12

open TensorProduct

namespace Algebra.TensorProduct

variable {A : Type*} (B : Type*) [CommRing A] [CommRing B] [Algebra A B] (I : Ideal A)

private noncomputable def quotIdealMapEquivTensorQuotAux :
      (B ⧸ (I.map <| algebraMap A B)) ≃ₗ[B] B ⊗[A] (A ⧸ I) :=
  AddEquiv.toLinearEquiv (TensorProduct.tensorQuotEquivQuotSMul B I ≪≫ₗ
      Submodule.quotEquivOfEq _ _ (Ideal.smul_top_eq_map I) ≪≫ₗ
      Submodule.Quotient.restrictScalarsEquiv A (I.map <| algebraMap A B)).symm <| by
    intro c x
    obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
    rfl

private lemma quotIdealMapEquivTensorQuotAux_mk (b : B) :
    (quotIdealMapEquivTensorQuotAux B I) b = b ⊗ₜ[A] 1 :=
  rfl

/-- `B ⊗[A] (A ⧸ I)` is isomorphic as an `A`-algebra to `B ⧸ I B`. -/
noncomputable def quotIdealMapEquivTensorQuot :
    (B ⧸ (I.map <| algebraMap A B)) ≃ₐ[B] B ⊗[A] (A ⧸ I) :=
  AlgEquiv.ofLinearEquiv (quotIdealMapEquivTensorQuotAux B I) rfl
    (fun x y ↦ by
      obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
      obtain ⟨v, rfl⟩ := Ideal.Quotient.mk_surjective y
      simp_rw [← map_mul, quotIdealMapEquivTensorQuotAux_mk]
      simp)

@[simp]
lemma quotIdealMapEquivTensorQuot_mk (b : B) :
    quotIdealMapEquivTensorQuot B I b = b ⊗ₜ[A] 1 :=
  rfl

@[simp]
lemma quotIdealMapEquivTensorQuot_symm_tmul (b : B) (a : A) :
    (quotIdealMapEquivTensorQuot B I).symm (b ⊗ₜ[A] a) = Submodule.Quotient.mk (a • b) :=
  rfl

end Algebra.TensorProduct
```
