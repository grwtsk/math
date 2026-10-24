# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6df8861b4de7ddaf14ecfe4f41beda487dd4895` · SHA-256 `d73447d38f8e2e1a0cb4e4edc288a00461f61609c45282c6ab54e7e15f6eca8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DomCoprodDep.Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DomCoprodDep.Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"dfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Multilinear/TensorProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.TensorProduct.Basic
import Mathlib.LinearAlgebra.Multilinear.Basic

/-!
# Constructions relating multilinear maps and tensor products.
-/


namespace GRWTSK.Algebra.LinearAlgebra.DomCoprodDep.Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392

suppress_compilation

namespace MultilinearMap

section DomCoprod

open TensorProduct

variable {R ι₁ ι₂ ι₃ ι₄ : Type*}
variable [CommSemiring R]
variable {N₁ : Type*} [AddCommMonoid N₁] [Module R N₁]
variable {N₂ : Type*} [AddCommMonoid N₂] [Module R N₂]

attribute [local simp] add_tmul tmul_add smul_tmul

section

variable {N : ι₁ ⊕ ι₂ → Type*} [∀ i, AddCommMonoid (N i)] [∀ i, Module R (N i)]

/-- Given a family of modules `N` indexed by a type `ι₁ ⊕ ι₂`,
a multilinear map from the modules `N (.inl i₁)` to `N₁` and
a multilinear map from the modules `N (.inr i₁)` to `N₂`, this
is the induced multilinear map from all the modules `N i` to `N₁ ⊗ N₂`. -/
@[simps apply]
def domCoprodDep (a : MultilinearMap R (fun i₁ ↦ N (.inl i₁)) N₁)
    (b : MultilinearMap R (fun i₂ ↦ N (.inr i₂)) N₂) :
    MultilinearMap R N (N₁ ⊗[R] N₂) where
  toFun v := a (fun i₁ ↦ v (.inl i₁)) ⊗ₜ b (fun i₂ ↦ v (.inr i₂))
  map_update_add' := by
    rintro _ _ (_ | _) _ _
    · letI := Classical.decEq ι₁; simp
    · letI := Classical.decEq ι₂; simp
  map_update_smul' := by
    rintro _ m (i₁ | i₂) p q
    · letI := Classical.decEq ι₁; simp
    · letI := Classical.decEq ι₂; simp

/-- A more bundled version of `MultilinearMap.domCoprodDep`, as a linear map
from the tensor product of spaces of multilinear maps. -/
def domCoprodDep' :
    MultilinearMap R (fun i₁ ↦ N (.inl i₁)) N₁ ⊗[R] MultilinearMap R (fun i₂ ↦ N (.inr i₂)) N₂ →ₗ[R]
        MultilinearMap R N (N₁ ⊗[R] N₂) :=
  TensorProduct.lift (LinearMap.mk₂ R domCoprodDep
    (by aesop) (by aesop) (by aesop) (by aesop))

@[simp]
theorem domCoprodDep'_apply (a : MultilinearMap R (fun i₁ ↦ N (.inl i₁)) N₁)
    (b : MultilinearMap R (fun i₂ ↦ N (.inr i₂)) N₂) :
    domCoprodDep' (a ⊗ₜ b) = domCoprodDep a b := by
  rfl

end

variable {N : Type*} [AddCommMonoid N] [Module R N]

/-- Given two multilinear maps `(ι₁ → N) → N₁` and `(ι₂ → N) → N₂`, this produces the map
`(ι₁ ⊕ ι₂ → N) → N₁ ⊗ N₂` by taking the coproduct of the domain and the tensor product
of the codomain.

This can be thought of as combining `Equiv.sumArrowEquivProdArrow.symm` with
`TensorProduct.map`, noting that the two operations can't be separated as the intermediate result
is not a `MultilinearMap`.

While this can be generalized to work for dependent `Π i : ι₁, N'₁ i` instead of `ι₁ → N`, doing so
introduces `Sum.elim N'₁ N'₂` types in the result which are difficult to work with and not defeq
to the simple case defined here. See [this zulip thread](
https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there.20code.20for.20X.3F/topic/Instances.20on.20.60sum.2Eelim.20A.20B.20i.60/near/218484619).
-/
@[simps! apply]
def domCoprod (a : MultilinearMap R (fun _ : ι₁ => N) N₁)
    (b : MultilinearMap R (fun _ : ι₂ => N) N₂) :
    MultilinearMap R (fun _ : ι₁ ⊕ ι₂ => N) (N₁ ⊗[R] N₂) :=
  domCoprodDep a b

/-- A more bundled version of `MultilinearMap.domCoprod` that maps
`((ι₁ → N) → N₁) ⊗ ((ι₂ → N) → N₂)` to `(ι₁ ⊕ ι₂ → N) → N₁ ⊗ N₂`. -/
def domCoprod' :
    MultilinearMap R (fun _ : ι₁ => N) N₁ ⊗[R] MultilinearMap R (fun _ : ι₂ => N) N₂ →ₗ[R]
      MultilinearMap R (fun _ : ι₁ ⊕ ι₂ => N) (N₁ ⊗[R] N₂) :=
  domCoprodDep' (R := R) (N := fun (_ : ι₁ ⊕ ι₂) ↦ N)

@[simp]
theorem domCoprod'_apply (a : MultilinearMap R (fun _ : ι₁ => N) N₁)
    (b : MultilinearMap R (fun _ : ι₂ => N) N₂) : domCoprod' (a ⊗ₜ[R] b) = domCoprod a b :=
  rfl

/-- When passed an `Equiv.sumCongr`, `MultilinearMap.domDomCongr` distributes over
`MultilinearMap.domCoprod`. -/
theorem domCoprod_domDomCongr_sumCongr (a : MultilinearMap R (fun _ : ι₁ => N) N₁)
    (b : MultilinearMap R (fun _ : ι₂ => N) N₂) (σa : ι₁ ≃ ι₃) (σb : ι₂ ≃ ι₄) :
    (a.domCoprod b).domDomCongr (σa.sumCongr σb) =
      (a.domDomCongr σa).domCoprod (b.domDomCongr σb) :=
  rfl

end DomCoprod

end MultilinearMap
```
