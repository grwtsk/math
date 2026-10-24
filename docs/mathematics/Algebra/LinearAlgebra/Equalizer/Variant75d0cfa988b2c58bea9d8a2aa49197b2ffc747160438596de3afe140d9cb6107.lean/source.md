# Complete source: GRWTSK.Algebra.LinearAlgebra.Equalizer.Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c98f2dc24f277c3d375f5b55fe886e09609e14b` · SHA-256 `1bf7979d6dea895f2e36c2ace33f16e53220d0f1ccb6c6f2ede12a9c9079f078`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleFlatKerLTensorEq.Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleFlatKerLTensorEq.Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Flat/Equalizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.RingTheory.Flat.Basic

/-!
# Base change along flat modules preserves equalizers

We show that base change along flat modules (resp. algebras)
preserves kernels and equalizers.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleFlatKerLTensorEq.Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880

universe t u

noncomputable section

open TensorProduct

variable {R : Type*} (S : Type*) [CommRing R] [CommRing S] [Algebra R S]

section Module

variable (M : Type*) [AddCommGroup M] [Module R M] [Module S M] [IsScalarTower R S M]
variable {N P : Type*} [AddCommGroup N] [AddCommGroup P] [Module R N] [Module R P]
  (f g : N →ₗ[R] P)

lemma Module.Flat.ker_lTensor_eq [Module.Flat R M] :
    LinearMap.ker (AlgebraTensorModule.lTensor S M f) =
      LinearMap.range (AlgebraTensorModule.lTensor S M (LinearMap.ker f).subtype) := by
  rw [← LinearMap.exact_iff]
  exact Module.Flat.lTensor_exact M (LinearMap.exact_subtype_ker_map f)

lemma Module.Flat.eqLocus_lTensor_eq [Module.Flat R M] :
    LinearMap.eqLocus (AlgebraTensorModule.lTensor S M f)
      (AlgebraTensorModule.lTensor S M g) =
      LinearMap.range (AlgebraTensorModule.lTensor S M (LinearMap.eqLocus f g).subtype) := by
  rw [LinearMap.eqLocus_eq_ker_sub, LinearMap.eqLocus_eq_ker_sub]
  rw [← map_sub, ker_lTensor_eq]

/-- The bilinear map corresponding to `LinearMap.tensorEqLocus`. -/
def LinearMap.tensorEqLocusBil :
    M →ₗ[S] LinearMap.eqLocus f g →ₗ[R]
      LinearMap.eqLocus (AlgebraTensorModule.lTensor S M f)
        (AlgebraTensorModule.lTensor S M g) where
  toFun m :=
    { toFun := fun a ↦ ⟨m ⊗ₜ a, by simp [show f a = g a from a.property]⟩
      map_add' := fun x y ↦ by simp [tmul_add]
      map_smul' := fun r x ↦ by simp }
  map_add' x y := by
    ext
    simp [add_tmul]
  map_smul' r x := by
    ext
    simp [smul_tmul']

/-- The bilinear map corresponding to `LinearMap.tensorKer`. -/
def LinearMap.tensorKerBil :
    M →ₗ[S] LinearMap.ker f →ₗ[R] LinearMap.ker (AlgebraTensorModule.lTensor S M f) where
  toFun m :=
    { toFun := fun a ↦ ⟨m ⊗ₜ a, by simp⟩
      map_add' := fun x y ↦ by simp [tmul_add]
      map_smul' := fun r x ↦ by simp }
  map_add' x y := by ext; simp [add_tmul]
  map_smul' r x := by ext y; simp [smul_tmul']

/-- The canonical map `M ⊗[R] eq(f, g) →ₗ[R] eq(𝟙 ⊗ f, 𝟙 ⊗ g)`. -/
def LinearMap.tensorEqLocus : M ⊗[R] (LinearMap.eqLocus f g) →ₗ[S]
    LinearMap.eqLocus (AlgebraTensorModule.lTensor S M f) (AlgebraTensorModule.lTensor S M g) :=
  AlgebraTensorModule.lift (tensorEqLocusBil S M f g)

/-- The canonical map `M ⊗[R] ker f →ₗ[R] ker (𝟙 ⊗ f)`. -/
def LinearMap.tensorKer : M ⊗[R] (LinearMap.ker f) →ₗ[S]
    LinearMap.ker (AlgebraTensorModule.lTensor S M f) :=
  AlgebraTensorModule.lift (f.tensorKerBil S M)

@[simp]
lemma LinearMap.tensorKer_tmul (m : M) (x : LinearMap.ker f) :
    (tensorKer S M f (m ⊗ₜ[R] x) : M ⊗[R] N) = m ⊗ₜ[R] (x : N) :=
  rfl

@[simp]
lemma LinearMap.tensorKer_coe (x : M ⊗[R] (LinearMap.ker f)) :
    (tensorKer S M f x : M ⊗[R] N) = (ker f).subtype.lTensor M x := by
  induction x <;> simp_all

@[simp]
lemma LinearMap.tensorEqLocus_tmul (m : M) (x : LinearMap.eqLocus f g) :
    (tensorEqLocus S M f g (m ⊗ₜ[R] x) : M ⊗[R] N) = m ⊗ₜ[R] (x : N) :=
  rfl

@[simp]
lemma LinearMap.tensorEqLocus_coe (x : M ⊗[R] (LinearMap.eqLocus f g)) :
    (tensorEqLocus S M f g x : M ⊗[R] N) = (eqLocus f g).subtype.lTensor M x := by
  induction x <;> simp_all

private def LinearMap.tensorKerInv [Module.Flat R M] :
    ker (AlgebraTensorModule.lTensor S M f) →ₗ[S] M ⊗[R] (ker f) :=
  LinearMap.codRestrictOfInjective (LinearMap.ker (AlgebraTensorModule.lTensor S M f)).subtype
    (AlgebraTensorModule.lTensor S M (ker f).subtype)
    (Module.Flat.lTensor_preserves_injective_linearMap (ker f).subtype
      (ker f).injective_subtype) (by simp [Module.Flat.ker_lTensor_eq])

@[simp]
private lemma LinearMap.lTensor_ker_subtype_tensorKerInv [Module.Flat R M]
    (x : ker (AlgebraTensorModule.lTensor S M f)) :
    (lTensor M (ker f).subtype) ((tensorKerInv S M f) x) = x := by
  rw [← AlgebraTensorModule.coe_lTensor (A := S)]
  simp [LinearMap.tensorKerInv]

private def LinearMap.tensorEqLocusInv [Module.Flat R M] :
    eqLocus (AlgebraTensorModule.lTensor S M f) (AlgebraTensorModule.lTensor S M g) →ₗ[S]
      M ⊗[R] (eqLocus f g) :=
  LinearMap.codRestrictOfInjective
    (LinearMap.eqLocus (AlgebraTensorModule.lTensor S M f)
      (AlgebraTensorModule.lTensor S M g)).subtype
    (AlgebraTensorModule.lTensor S M (eqLocus f g).subtype)
    (Module.Flat.lTensor_preserves_injective_linearMap (eqLocus f g).subtype
      (eqLocus f g).injective_subtype) (by simp [Module.Flat.eqLocus_lTensor_eq])

@[simp]
private lemma LinearMap.lTensor_eqLocus_subtype_tensorEqLocusInv [Module.Flat R M]
    (x : eqLocus (AlgebraTensorModule.lTensor S M f) (AlgebraTensorModule.lTensor S M g)) :
    (lTensor M (eqLocus f g).subtype) (tensorEqLocusInv S M f g x) = x := by
  rw [← AlgebraTensorModule.coe_lTensor (A := S)]
  simp [LinearMap.tensorEqLocusInv]

/-- If `M` is `R`-flat, the canonical map `M ⊗[R] ker f →ₗ[R] ker (𝟙 ⊗ f)` is an isomorphism. -/
def LinearMap.tensorKerEquiv [Module.Flat R M] :
    M ⊗[R] LinearMap.ker f ≃ₗ[S] LinearMap.ker (AlgebraTensorModule.lTensor S M f) :=
  LinearEquiv.ofLinear (LinearMap.tensorKer S M f) (LinearMap.tensorKerInv S M f)
    (by ext x; simp)
    (by
      ext m x
      apply (Module.Flat.lTensor_preserves_injective_linearMap (ker f).subtype
        (ker f).injective_subtype)
      simp)

@[simp]
lemma LinearMap.tensorKerEquiv_apply [Module.Flat R M] (x : M ⊗[R] ker f) :
    tensorKerEquiv S M f x = tensorKer S M f x :=
  rfl

@[simp]
lemma LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm [Module.Flat R M]
    (x : ker (AlgebraTensorModule.lTensor S M f)) :
    (lTensor M (ker f).subtype) ((tensorKerEquiv S M f).symm x) = x :=
  lTensor_ker_subtype_tensorKerInv S M f x

/-- If `M` is `R`-flat, the canonical map `M ⊗[R] eq(f, g) →ₗ[S] eq (𝟙 ⊗ f, 𝟙 ⊗ g)` is an
isomorphism. -/
def LinearMap.tensorEqLocusEquiv [Module.Flat R M] :
    M ⊗[R] eqLocus f g ≃ₗ[S]
      eqLocus (AlgebraTensorModule.lTensor S M f)
        (AlgebraTensorModule.lTensor S M g) :=
  LinearEquiv.ofLinear (LinearMap.tensorEqLocus S M f g) (LinearMap.tensorEqLocusInv S M f g)
    (by ext; simp)
    (by
      ext m x
      apply (Module.Flat.lTensor_preserves_injective_linearMap (eqLocus f g).subtype
        (eqLocus f g).injective_subtype)
      simp)

@[simp]
lemma LinearMap.tensorEqLocusEquiv_apply [Module.Flat R M] (x : M ⊗[R] LinearMap.eqLocus f g) :
    LinearMap.tensorEqLocusEquiv S M f g x = LinearMap.tensorEqLocus S M f g x :=
  rfl

@[simp]
lemma LinearMap.lTensor_eqLocus_subtype_tensoreqLocusEquiv_symm [Module.Flat R M]
    (x : eqLocus (AlgebraTensorModule.lTensor S M f) (AlgebraTensorModule.lTensor S M g)) :
    (lTensor M (eqLocus f g).subtype) ((tensorEqLocusEquiv S M f g).symm x) = x :=
  lTensor_eqLocus_subtype_tensorEqLocusInv S M f g x

end Module

section Algebra

variable (T : Type*) [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]
variable {A B : Type*} [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]
  (f g : A →ₐ[R] B)

private def AlgHom.tensorEqualizerAux :
    T ⊗[R] AlgHom.equalizer f g →ₗ[S]
      AlgHom.equalizer (Algebra.TensorProduct.map (AlgHom.id S T) f)
        (Algebra.TensorProduct.map (AlgHom.id S T) g) :=
  LinearMap.tensorEqLocus S T (f : A →ₗ[R] B) (g : A →ₗ[R] B)

private local instance : AddHomClass (A →ₐ[R] B) A B := inferInstance

@[simp]
private lemma AlgHom.coe_tensorEqualizerAux (x : T ⊗[R] AlgHom.equalizer f g) :
    (AlgHom.tensorEqualizerAux S T f g x : T ⊗[R] A) =
      Algebra.TensorProduct.map (AlgHom.id S T) (AlgHom.equalizer f g).val x := by
  induction x with
  | zero => rfl
  | tmul => rfl
  | add x y hx hy => simp [hx, hy]

private lemma AlgHom.tensorEqualizerAux_mul (x y : T ⊗[R] AlgHom.equalizer f g) :
    AlgHom.tensorEqualizerAux S T f g (x * y) =
      AlgHom.tensorEqualizerAux S T f g x *
        AlgHom.tensorEqualizerAux S T f g y := by
  apply Subtype.ext
  rw [AlgHom.coe_tensorEqualizerAux]
  simp

/-- The canonical map `T ⊗[R] eq(f, g) →ₐ[S] eq (𝟙 ⊗ f, 𝟙 ⊗ g)`. -/
def AlgHom.tensorEqualizer :
    T ⊗[R] AlgHom.equalizer f g →ₐ[S]
      AlgHom.equalizer (Algebra.TensorProduct.map (AlgHom.id S T) f)
        (Algebra.TensorProduct.map (AlgHom.id S T) g) :=
  AlgHom.ofLinearMap (AlgHom.tensorEqualizerAux S T f g)
    rfl (AlgHom.tensorEqualizerAux_mul S T f g)

@[simp]
lemma AlgHom.coe_tensorEqualizer (x : T ⊗[R] AlgHom.equalizer f g) :
    (AlgHom.tensorEqualizer S T f g x : T ⊗[R] A) =
      Algebra.TensorProduct.map (AlgHom.id S T) (AlgHom.equalizer f g).val x :=
  AlgHom.coe_tensorEqualizerAux S T f g x

/-- If `T` is `R`-flat, the canonical map
`T ⊗[R] eq(f, g) →ₐ[S] eq (𝟙 ⊗ f, 𝟙 ⊗ g)` is an isomorphism. -/
def AlgHom.tensorEqualizerEquiv [Module.Flat R T] :
    T ⊗[R] AlgHom.equalizer f g ≃ₐ[S]
      AlgHom.equalizer (Algebra.TensorProduct.map (AlgHom.id S T) f)
        (Algebra.TensorProduct.map (AlgHom.id S T) g) :=
  AlgEquiv.ofLinearEquiv (LinearMap.tensorEqLocusEquiv S T f.toLinearMap g.toLinearMap)
    rfl (AlgHom.tensorEqualizerAux_mul S T f g)

@[simp]
lemma AlgHom.tensorEqualizerEquiv_apply [Module.Flat R T]
    (x : T ⊗[R] AlgHom.equalizer f g) :
    AlgHom.tensorEqualizerEquiv S T f g x = AlgHom.tensorEqualizer S T f g x :=
  rfl

end Algebra
```
