# Complete source: GRWTSK.Algebra.LinearAlgebra.QuotSMulTop.Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40da1dc66eda3397c917ea7eceb2e50555be0506` · SHA-256 `c1a54508424b208e6cabfe44a2b2148a215f7b40c2171226d4e512c920fa5867`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.QuotSMulTop.Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.QuotSMulTop.Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/QuotSMulTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Brendan Murphy. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brendan Murphy
-/
import Mathlib.LinearAlgebra.TensorProduct.RightExactness
import Mathlib.LinearAlgebra.TensorProduct.Quotient
import Mathlib.LinearAlgebra.DFinsupp

/-!
# Reducing a module modulo an element of the ring

Given a commutative ring `R` and an element `r : R`, the association
`M ↦ M ⧸ rM` extends to a functor on the category of `R`-modules. This functor
is isomorphic to the functor of tensoring by `R ⧸ (r)` on either side, but can
be more convenient to work with since we can work with quotient types instead
of fiddling with simple tensors.

## Tags

module, commutative algebra
-/


namespace GRWTSK.Algebra.LinearAlgebra.QuotSMulTop.Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe

open scoped Pointwise

variable {R} [CommRing R] (r : R) (M : Type*) {M' M''}
    [AddCommGroup M] [Module R M] [AddCommGroup M'] [Module R M']
    [AddCommGroup M''] [Module R M'']

/-- An abbreviation for `M⧸rM` that keeps us from having to write
`(⊤ : Submodule R M)` over and over to satisfy the typechecker. -/
abbrev QuotSMulTop := M ⧸ r • (⊤ : Submodule R M)

namespace QuotSMulTop

open Submodule Function TensorProduct

/-- Reducing a module modulo `r` is the same as left tensoring with `R/(r)`. -/
noncomputable def equivQuotTensor :
    QuotSMulTop r M ≃ₗ[R] (R ⧸ Ideal.span {r}) ⊗[R] M :=
  quotEquivOfEq _ _ (ideal_span_singleton_smul _ _).symm ≪≫ₗ
   (quotTensorEquivQuotSMul M _).symm

/-- Reducing a module modulo `r` is the same as right tensoring with `R/(r)`. -/
noncomputable def equivTensorQuot :
    QuotSMulTop r M ≃ₗ[R] M ⊗[R] (R ⧸ Ideal.span {r}) :=
  quotEquivOfEq _ _ (ideal_span_singleton_smul _ _).symm ≪≫ₗ
   (tensorQuotEquivQuotSMul M _).symm

variable {M}

/-- The action of the functor `QuotSMulTop r` on morphisms. -/
def map : (M →ₗ[R] M') →ₗ[R] QuotSMulTop r M →ₗ[R] QuotSMulTop r M'  :=
  Submodule.mapQLinear _ _ ∘ₗ LinearMap.id.codRestrict _ fun _ =>
    map_le_iff_le_comap.mp <| le_of_eq_of_le (map_pointwise_smul _ _ _) <|
      smul_mono_right r le_top

@[simp]
lemma map_apply_mk (f : M →ₗ[R] M') (x : M) :
    map r f (Submodule.Quotient.mk x) =
      (Submodule.Quotient.mk (f x) : QuotSMulTop r M') := rfl

-- weirdly expensive to typecheck the type here?
lemma map_comp_mkQ (f : M →ₗ[R] M') :
    map r f ∘ₗ mkQ (r • ⊤) = mkQ (r • ⊤) ∘ₗ f := by
  ext; rfl

variable (M)

@[simp]
lemma map_id : map r (LinearMap.id : M →ₗ[R] M) = .id :=
  DFunLike.ext _ _ <| (mkQ_surjective _).forall.mpr fun _ => rfl

variable {M}

@[simp]
lemma map_comp (g : M' →ₗ[R] M'') (f : M →ₗ[R] M') :
    map r (g ∘ₗ f) = map r g ∘ₗ map r f :=
  DFunLike.ext _ _ <| (mkQ_surjective _).forall.mpr fun _ => rfl

lemma equivQuotTensor_naturality_mk (f : M →ₗ[R] M') (x : M) :
    equivQuotTensor r M' (map r f (Submodule.Quotient.mk x)) =
      f.lTensor (R ⧸ Ideal.span {r})
        (equivQuotTensor r M (Submodule.Quotient.mk x)) :=
  (LinearMap.lTensor_tmul (R ⧸ Ideal.span {r}) f 1 x).symm

lemma equivQuotTensor_naturality (f : M →ₗ[R] M') :
    equivQuotTensor r M' ∘ₗ map r f =
      f.lTensor (R ⧸ Ideal.span {r}) ∘ₗ equivQuotTensor r M :=
  quot_hom_ext _ _ _ (equivQuotTensor_naturality_mk r f)

lemma equivTensorQuot_naturality_mk (f : M →ₗ[R] M') (x : M) :
    equivTensorQuot r M' (map r f (Submodule.Quotient.mk x)) =
      f.rTensor (R ⧸ Ideal.span {r})
        (equivTensorQuot r M (Submodule.Quotient.mk x)) :=
  (LinearMap.rTensor_tmul (R ⧸ Ideal.span {r}) f 1 x).symm

lemma equivTensorQuot_naturality (f : M →ₗ[R] M') :
    equivTensorQuot r M' ∘ₗ map r f =
      f.rTensor (R ⧸ Ideal.span {r}) ∘ₗ equivTensorQuot r M :=
  quot_hom_ext _ _ _ (equivTensorQuot_naturality_mk r f)

lemma map_surjective {f : M →ₗ[R] M'} (hf : Surjective f) : Surjective (map r f) :=
  have H₁ := (mkQ_surjective (r • ⊤ : Submodule R M')).comp hf
  @Surjective.of_comp _ _ _ _ (mkQ (r • ⊤ : Submodule R M)) <| by
    rwa [← LinearMap.coe_comp, map_comp_mkQ, LinearMap.coe_comp]

lemma map_exact {f : M →ₗ[R] M'} {g : M' →ₗ[R] M''}
    (hfg : Exact f g) (hg : Surjective g) : Exact (map r f) (map r g) :=
  (Exact.iff_of_ladder_linearEquiv (equivQuotTensor_naturality r f).symm
                             (equivQuotTensor_naturality r g).symm).mp
    (lTensor_exact (R ⧸ Ideal.span {r}) hfg hg)

variable (M M')

/-- Tensoring on the left and applying `QuotSMulTop · r` commute. -/
noncomputable def tensorQuotSMulTopEquivQuotSMulTop :
    M ⊗[R] QuotSMulTop r M' ≃ₗ[R] QuotSMulTop r (M ⊗[R] M') :=
  (equivTensorQuot r M').lTensor M ≪≫ₗ
    (TensorProduct.assoc R M M' (R ⧸ Ideal.span {r})).symm ≪≫ₗ
      (equivTensorQuot r (M ⊗[R] M')).symm

/-- Tensoring on the right and applying `QuotSMulTop · r` commute. -/
noncomputable def quotSMulTopTensorEquivQuotSMulTop :
    QuotSMulTop r M' ⊗[R] M ≃ₗ[R] QuotSMulTop r (M' ⊗[R] M) :=
  (equivQuotTensor r M').rTensor M ≪≫ₗ
    TensorProduct.assoc R (R ⧸ Ideal.span {r}) M' M ≪≫ₗ
      (equivQuotTensor r (M' ⊗[R] M)).symm

end QuotSMulTop
```
