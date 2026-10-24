# Complete source: GRWTSK.Algebra.LinearAlgebra.Convolution.Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5` · SHA-256 `2c0886e94bf520c8381397bdbc59771b3878c430e5328b5f4ff1487756dd244f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Coalgebra/Convolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Michał Mrugała, Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Michał Mrugała, Yunzhou Xie
-/
module

public import Mathlib.Algebra.Algebra.Bilinear
public import Mathlib.Algebra.WithConv
public import Mathlib.LinearAlgebra.TensorProduct.Tower
public import Mathlib.RingTheory.Coalgebra.Hom
public import Mathlib.RingTheory.Coalgebra.TensorProduct
public import Mathlib.RingTheory.TensorProduct.Basic
public import Mathlib.Tactic.SuppressCompilation

/-!
# Convolution product on linear maps from a coalgebra to an algebra

This file constructs the ring and algebra structure on linear maps `C → A` where `C` is a
coalgebra and `A` an algebra, where multiplication is given by
`(f * g)(x) = ∑ f x₍₁₎ * g x₍₂₎` in Sweedler notation or
```
         |
         μ
|   |   / \
f * g = f g
|   |   \ /
         δ
         |
```
diagrammatically, where `μ` stands for multiplication and `δ` for comultiplication.

## Implementation notes

Because there is a global multiplication instance on `Module.End R A` (defined as composition),
which is mathematically distinct from this product, we provide this instance on
`WithConv (C →ₗ[R] A)`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8

public section

suppress_compilation

open Coalgebra TensorProduct WithConv
open scoped RingTheory.LinearMap

variable {R S A B C ι : Type*} [CommSemiring R]

namespace LinearMap
section NonUnitalNonAssocSemiring
variable
  [NonUnitalNonAssocSemiring A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
  [AddCommMonoid C] [Module R C] [CoalgebraStruct R C]

/-- Convolution product on linear maps from a coalgebra to an algebra. -/
instance convMul : Mul (WithConv (C →ₗ[R] A)) where
  mul f g := toConv (mul' R A ∘ₗ map f.ofConv g.ofConv ∘ₗ comul)

lemma convMul_def (f g : WithConv (C →ₗ[R] A)) :
    f * g = toConv (mul' R A ∘ₗ map f.ofConv g.ofConv ∘ₗ comul) := rfl

@[simp]
lemma convMul_apply (f g : WithConv (C →ₗ[R] A)) (c : C) :
    (f * g) c = mul' R A (.map f.ofConv g.ofConv (comul c)) := rfl

lemma _root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.Coalgebra.Repr.convMul_apply {a : C} (𝓡 : Coalgebra.Repr R a ι)
    (f g : WithConv (C →ₗ[R] A)) : (f * g) a = ∑ i ∈ 𝓡.index, f (𝓡.left i) * g (𝓡.right i) := by
  simp [convMul_def, ← 𝓡.eq]

/-- Non-unital and non-associative convolution semiring structure on linear maps from a
coalgebra to a non-unital non-associative algebra. -/
instance convNonUnitalNonAssocSemiring : NonUnitalNonAssocSemiring (WithConv (C →ₗ[R] A)) where
  left_distrib f g h := by ext; simp [map_add_right]
  right_distrib f g h := by ext; simp [map_add_left]
  zero_mul f := by ext; simp
  mul_zero f := by ext; simp

instance [Monoid S] [DistribMulAction S A] [SMulCommClass R S A] [IsScalarTower S A A] :
    IsScalarTower S (WithConv (C →ₗ[R] A)) (WithConv (C →ₗ[R] A)) where
  smul_assoc s f g := by ext c; simp [(ℛ R c).convMul_apply, Finset.smul_sum, smul_mul_assoc]

instance [Monoid S] [DistribMulAction S A] [SMulCommClass R S A] [SMulCommClass S A A] :
    SMulCommClass S (WithConv (C →ₗ[R] A)) (WithConv (C →ₗ[R] A)) where
  smul_comm s f g := by ext c; simp [(ℛ R c).convMul_apply, Finset.smul_sum, mul_smul_comm]

@[simp] lemma toSpanSingleton_convMul_toSpanSingleton (x y : A) :
    toConv (toSpanSingleton R A x) * toConv (toSpanSingleton R A y) =
      toConv (toSpanSingleton R A (x * y)) := by ext; simp

theorem _root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.TensorProduct.map_convMul_map {D : Type*} [AddCommMonoid B] [Module R B]
    [CoalgebraStruct R B] [NonUnitalNonAssocSemiring D] [Module R D] [SMulCommClass R D D]
    [IsScalarTower R D D] {f h : WithConv (C →ₗ[R] A)} {g k : WithConv (B →ₗ[R] D)} :
    toConv (f.ofConv ⊗ₘ g.ofConv) * toConv (h.ofConv ⊗ₘ k.ofConv) =
      toConv ((f * h).ofConv ⊗ₘ (g * k).ofConv) := by
  simp_rw [convMul_def, comul_def, mul'_tensor, comp_assoc, AlgebraTensorModule.map_eq,
    ← comp_assoc _ _ (tensorTensorTensorComm R _ _ _ _).toLinearMap]
  nth_rw 2 [← comp_assoc, comp_assoc]
  simp [AlgebraTensorModule.tensorTensorTensorComm_eq, ← tensorTensorTensorComm_comp_map,
    ← comp_assoc, map_comp]

end NonUnitalNonAssocSemiring

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
  [AddCommMonoid C] [Module R C] [CoalgebraStruct R C]

/-- Non-unital and non-associative convolution ring structure on linear maps from a
coalgebra to a non-unital and non-associative algebra. -/
instance convNonUnitalNonAssocRing : NonUnitalNonAssocRing (WithConv (C →ₗ[R] A)) where

end NonUnitalNonAssocRing

section NonUnitalSemiring
variable [NonUnitalSemiring A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
  [AddCommMonoid C] [Module R C] [Coalgebra R C]

lemma nonUnitalAlgHom_comp_convMul_distrib
    [NonUnitalNonAssocSemiring B] [Module R B] [SMulCommClass R B B] [IsScalarTower R B B]
    (h : A →ₙₐ[R] B) (f g : WithConv (C →ₗ[R] A)) :
    (h : A →ₗ[R] B).comp (f * g).ofConv =
      (toConv ((h : A →ₗ[R] B).comp f.ofConv) * toConv ((h : A →ₗ[R] B).comp g.ofConv)).ofConv := by
  simp [convMul_def, map_comp, ← comp_assoc, NonUnitalAlgHom.comp_mul']

lemma convMul_comp_coalgHom_distrib [AddCommMonoid B] [Module R B] [CoalgebraStruct R B]
    (f g : WithConv (C →ₗ[R] A)) (h : B →ₗc[R] C) :
    (f * g).ofConv.comp h.toLinearMap =
      (toConv (f.ofConv.comp h.toLinearMap) * toConv (g.ofConv.comp h.toLinearMap)).ofConv := by
  simp [convMul_def, map_comp, comp_assoc]

/-- Non-unital convolution semiring structure on linear maps from a coalgebra to a
non-unital algebra. -/
instance convNonUnitalSemiring : NonUnitalSemiring (WithConv (C →ₗ[R] A)) where
  mul_assoc f g h := toConv_injective.eq_iff.mpr <| calc
    _ = (μ ∘ₗ rTensor _ μ) ∘ₗ (((f.ofConv ⊗ₘ g.ofConv) ⊗ₘ h.ofConv) ∘ₗ
        (TensorProduct.assoc R C C C).symm) ∘ₗ lTensor C δ ∘ₗ δ := by
      ext; simp [comp_assoc, coassoc_symm, convMul_def]
    _ = (μ ∘ₗ rTensor A μ ∘ₗ ↑(TensorProduct.assoc R A A A).symm) ∘ₗ
        (f.ofConv ⊗ₘ (g.ofConv ⊗ₘ h.ofConv)) ∘ₗ lTensor C δ ∘ₗ δ := by
      simp only [map_map_comp_assoc_symm_eq, comp_assoc]
    _ = (μ ∘ₗ .lTensor _ μ) ∘ₗ (f.ofConv ⊗ₘ (g.ofConv ⊗ₘ h.ofConv)) ∘ₗ (lTensor C δ ∘ₗ δ) := by
      congr 1
      ext
      simp [mul_assoc]
    _ = μ ∘ₗ (f.ofConv ⊗ₘ μ ∘ₗ (g.ofConv ⊗ₘ h.ofConv) ∘ₗ δ) ∘ₗ δ := by ext; simp

end NonUnitalSemiring

section NonUnitalRing
variable [NonUnitalRing A] [AddCommMonoid C] [Module R A] [SMulCommClass R A A]
  [IsScalarTower R A A] [Module R C] [Coalgebra R C]

/-- Non-unital convolution ring structure on linear maps from a coalgebra to a
non-unital algebra. -/
instance convNonUnitalRing : NonUnitalRing (WithConv (C →ₗ[R] A)) where

end NonUnitalRing

section Semiring
variable [Semiring A] [Algebra R A] [Semiring B] [Algebra R B] [AddCommMonoid C] [Module R C]

section CoalgebraStruct
variable [CoalgebraStruct R C]

lemma algHom_comp_convMul_distrib (h : A →ₐ B) (f g : WithConv (C →ₗ[R] A)) :
    h.toLinearMap.comp (f * g).ofConv =
      (toConv (h.toLinearMap.comp f.ofConv) * toConv (h.toLinearMap.comp g.ofConv)).ofConv := by
  simp [convMul_def, map_comp, ← comp_assoc, AlgHom.comp_mul']

end CoalgebraStruct

variable [Coalgebra R C]

/-- Convolution unit on linear maps from a coalgebra to an algebra. -/
instance convOne : One (WithConv (C →ₗ[R] A)) where one := toConv (Algebra.linearMap R A ∘ₗ counit)

lemma convOne_def : (1 : WithConv (C →ₗ[R] A)) = toConv (Algebra.linearMap R A ∘ₗ counit) := rfl

@[simp] lemma convOne_apply (c : C) :
    (1 : WithConv (C →ₗ[R] A)) c = algebraMap R A (counit (R := R) c) := rfl

/-- Convolution semiring structure on linear maps from a coalgebra to an algebra. -/
instance convSemiring : Semiring (WithConv (C →ₗ[R] A)) where
  one_mul f := by ext; simp [convOne_def, ← map_comp_rTensor]
  mul_one f := by ext; simp [convOne_def, ← map_comp_lTensor]

/-- Convolution algebra structure on linear maps from a coalgebra to an algebra. -/
instance convAlgebra [CommSemiring S] [Algebra S A] [SMulCommClass R S A] :
    Algebra S (WithConv (C →ₗ[R] A)) :=
  .ofModule smul_mul_assoc mul_smul_comm

@[simp]
lemma convAlgebraMap_apply [CommSemiring S] [Algebra S A] [SMulCommClass R S A] (s : S) (c : C) :
    algebraMap S (WithConv (C →ₗ[R] A)) s c = s • algebraMap R A (counit c) := rfl

end Semiring

section CommSemiring
variable [CommSemiring A] [AddCommMonoid C] [Algebra R A] [Module R C] [Coalgebra R C]
  [IsCocomm R C]

/-- Commutative convolution semiring structure on linear maps from a cocommutative coalgebra to an
algebra. -/
instance convCommSemiring : CommSemiring (WithConv (C →ₗ[R] A)) where
  mul_comm f g := by ext x; rw [convMul_apply, ← comm_comul R x, map_comm, mul'_comm, convMul_apply]

end CommSemiring

section Ring
variable [Ring A] [AddCommMonoid C] [Algebra R A] [Module R C] [Coalgebra R C]

/-- Convolution ring structure on linear maps from a coalgebra to an algebra. -/
instance convRing : Ring (WithConv (C →ₗ[R] A)) where

end Ring

section CommRing
variable [CommRing A] [AddCommMonoid C] [Algebra R A] [Module R C] [Coalgebra R C] [IsCocomm R C]

/-- Commutative convolution ring structure on linear maps from a cocommutative coalgebra to an
algebra. -/
instance convCommRing : CommRing (WithConv (C →ₗ[R] A)) where

end CommRing
end LinearMap
````
