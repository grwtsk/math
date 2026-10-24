-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OpAlgEquiv.Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OpAlgEquiv.Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/TensorProduct/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.RingTheory.TensorProduct.Basic
import Mathlib.Algebra.Algebra.Opposite

/-! # `MulOpposite` distributes over `⊗`

The main result in this file is:

* `Algebra.TensorProduct.opAlgEquiv R S A B : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₐ[S] (A ⊗[R] B)ᵐᵒᵖ`
-/


namespace GRWTSK.Algebra.OpAlgEquiv.Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f

suppress_compilation

open scoped TensorProduct

variable (R S A B : Type*)
variable [CommSemiring R] [CommSemiring S] [Semiring A] [Semiring B]
variable [Algebra R S] [Algebra R A] [Algebra R B] [Algebra S A]
variable [IsScalarTower R S A]

namespace Algebra.TensorProduct

open MulOpposite

/-- `MulOpposite` distributes over `TensorProduct`. Note this is an `S`-algebra morphism, where
`A/S/R` is a tower of algebras. -/
def opAlgEquiv : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₐ[S] (A ⊗[R] B)ᵐᵒᵖ :=
  letI e₁ : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₗ[S] (A ⊗[R] B)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr
      (opLinearEquiv S).symm (opLinearEquiv R).symm ≪≫ₗ opLinearEquiv S
  letI e₂ : A ⊗[R] B ≃ₗ[S] (Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr (opLinearEquiv S) (opLinearEquiv R) ≪≫ₗ opLinearEquiv S
  AlgEquiv.ofAlgHom
    (algHomOfLinearMapTensorProduct e₁.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.opComm <| algHomOfLinearMapTensorProduct e₂.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.op.symm.injective <| by ext <;> rfl) (by ext <;> rfl)

theorem opAlgEquiv_apply (x : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ) :
    opAlgEquiv R S A B x =
      op (_root_.TensorProduct.map
        (opLinearEquiv R).symm.toLinearMap (opLinearEquiv R).symm.toLinearMap x) :=
  rfl

theorem opAlgEquiv_symm_apply (x : (A ⊗[R] B)ᵐᵒᵖ) :
    (opAlgEquiv R S A B).symm x =
      _root_.TensorProduct.map (opLinearEquiv R).toLinearMap (opLinearEquiv R).toLinearMap x.unop :=
  rfl

@[simp]
theorem opAlgEquiv_tmul (a : Aᵐᵒᵖ) (b : Bᵐᵒᵖ) :
    opAlgEquiv R S A B (a ⊗ₜ[R] b) = op (a.unop ⊗ₜ b.unop) :=
  rfl

@[simp]
theorem opAlgEquiv_symm_tmul (a : A) (b : B) :
    (opAlgEquiv R S A B).symm (op <| a ⊗ₜ[R] b) = op a ⊗ₜ op b :=
  rfl

end Algebra.TensorProduct
