# Complete source: GRWTSK.Algebra.LinearAlgebra.SkewAdjoint.Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5223149d3cb0b0d822924679811b1871793dd9e` · SHA-256 `076935af583313077ec35439fbcb5949809c2e0943416dcd5e9a8a9de26b6aba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapBilinFormIsSkewAdjointBracket.Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapBilinFormIsSkewAdjointBracket.Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/SkewAdjoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Lie.Matrix
import Mathlib.LinearAlgebra.Matrix.SesquilinearForm
import Mathlib.Tactic.NoncommRing

/-!
# Lie algebras of skew-adjoint endomorphisms of a bilinear form

When a module carries a bilinear form, the Lie algebra of endomorphisms of the module contains a
distinguished Lie subalgebra: the skew-adjoint endomorphisms. Such subalgebras are important
because they provide a simple, explicit construction of the so-called classical Lie algebras.

This file defines the Lie subalgebra of skew-adjoint endomorphisms cut out by a bilinear form on
a module and proves some basic related results. It also provides the corresponding definitions and
results for the Lie algebra of square matrices.

## Main definitions

  * `skewAdjointLieSubalgebra`
  * `skewAdjointLieSubalgebraEquiv`
  * `skewAdjointMatricesLieSubalgebra`
  * `skewAdjointMatricesLieSubalgebraEquiv`

## Tags

lie algebra, skew-adjoint, bilinear form
-/



namespace GRWTSK.Algebra.LinearAlgebra.LinearMapBilinFormIsSkewAdjointBracket.Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98

universe u v w w₁

section SkewAdjointEndomorphisms

open LinearMap (BilinForm)

variable {R : Type u} {M : Type v} [CommRing R] [AddCommGroup M] [Module R M]
variable (B : BilinForm R M)

theorem LinearMap.BilinForm.isSkewAdjoint_bracket {f g : Module.End R M}
    (hf : f ∈ B.skewAdjointSubmodule) (hg : g ∈ B.skewAdjointSubmodule) :
    ⁅f, g⁆ ∈ B.skewAdjointSubmodule := by
  rw [mem_skewAdjointSubmodule] at *
  have hfg : IsAdjointPair B B (f * g) (g * f) := by rw [← neg_mul_neg g f]; exact hg.comp hf
  have hgf : IsAdjointPair B B (g * f) (f * g) := by rw [← neg_mul_neg f g]; exact hf.comp hg
  change IsAdjointPair B B (f * g - g * f) (-(f * g - g * f)); rw [neg_sub]
  exact hfg.sub hgf

/-- Given an `R`-module `M`, equipped with a bilinear form, the skew-adjoint endomorphisms form a
Lie subalgebra of the Lie algebra of endomorphisms. -/
def skewAdjointLieSubalgebra : LieSubalgebra R (Module.End R M) :=
  { B.skewAdjointSubmodule with
    lie_mem' := B.isSkewAdjoint_bracket }

variable {N : Type w} [AddCommGroup N] [Module R N] (e : N ≃ₗ[R] M)

/-- An equivalence of modules with bilinear forms gives equivalence of Lie algebras of skew-adjoint
endomorphisms. -/
def skewAdjointLieSubalgebraEquiv :
    skewAdjointLieSubalgebra (B.compl₁₂ (e : N →ₗ[R] M) e) ≃ₗ⁅R⁆ skewAdjointLieSubalgebra B := by
  apply LieEquiv.ofSubalgebras _ _ e.lieConj
  ext f
  simp only [LieSubalgebra.mem_coe, Submodule.mem_map_equiv, LieSubalgebra.mem_map_submodule,
    LinearEquiv.coe_coe]
  exact (LinearMap.isPairSelfAdjoint_equiv (B := -B) (F := B) e f).symm

@[simp]
theorem skewAdjointLieSubalgebraEquiv_apply
    (f : skewAdjointLieSubalgebra (B.compl₁₂ (Qₗ := N) (Qₗ' := N) ↑e ↑e)) :
    ↑(skewAdjointLieSubalgebraEquiv B e f) = e.lieConj f := by
  simp [skewAdjointLieSubalgebraEquiv]

@[simp]
theorem skewAdjointLieSubalgebraEquiv_symm_apply (f : skewAdjointLieSubalgebra B) :
    ↑((skewAdjointLieSubalgebraEquiv B e).symm f) = e.symm.lieConj f := by
  simp [skewAdjointLieSubalgebraEquiv]

end SkewAdjointEndomorphisms

section SkewAdjointMatrices

open scoped Matrix

variable {R : Type u} {n : Type w} [CommRing R] [DecidableEq n] [Fintype n]
variable (J : Matrix n n R)

theorem Matrix.lie_transpose (A B : Matrix n n R) : ⁅A, B⁆ᵀ = ⁅Bᵀ, Aᵀ⁆ :=
  show (A * B - B * A)ᵀ = Bᵀ * Aᵀ - Aᵀ * Bᵀ by simp

theorem Matrix.isSkewAdjoint_bracket {A B : Matrix n n R} (hA : A ∈ skewAdjointMatricesSubmodule J)
    (hB : B ∈ skewAdjointMatricesSubmodule J) : ⁅A, B⁆ ∈ skewAdjointMatricesSubmodule J := by
  simp only [mem_skewAdjointMatricesSubmodule] at *
  change ⁅A, B⁆ᵀ * J = J * (-⁅A, B⁆)
  change Aᵀ * J = J * (-A) at hA
  change Bᵀ * J = J * (-B) at hB
  rw [Matrix.lie_transpose, LieRing.of_associative_ring_bracket,
    LieRing.of_associative_ring_bracket, sub_mul, mul_assoc, mul_assoc, hA, hB, ← mul_assoc,
    ← mul_assoc, hA, hB]
  noncomm_ring

/-- The Lie subalgebra of skew-adjoint square matrices corresponding to a square matrix `J`. -/
def skewAdjointMatricesLieSubalgebra : LieSubalgebra R (Matrix n n R) :=
  { skewAdjointMatricesSubmodule J with
    lie_mem' := J.isSkewAdjoint_bracket }

@[simp]
theorem mem_skewAdjointMatricesLieSubalgebra (A : Matrix n n R) :
    A ∈ skewAdjointMatricesLieSubalgebra J ↔ A ∈ skewAdjointMatricesSubmodule J :=
  Iff.rfl

/-- An invertible matrix `P` gives a Lie algebra equivalence between those endomorphisms that are
skew-adjoint with respect to a square matrix `J` and those with respect to `PᵀJP`. -/
def skewAdjointMatricesLieSubalgebraEquiv (P : Matrix n n R) (h : Invertible P) :
    skewAdjointMatricesLieSubalgebra J ≃ₗ⁅R⁆ skewAdjointMatricesLieSubalgebra (Pᵀ * J * P) :=
  LieEquiv.ofSubalgebras _ _ (P.lieConj h).symm <| by
    ext A
    suffices P.lieConj h A ∈ skewAdjointMatricesSubmodule J ↔
        A ∈ skewAdjointMatricesSubmodule (Pᵀ * J * P) by
      simp only [LieSubalgebra.mem_coe, Submodule.mem_map_equiv, LieSubalgebra.mem_map_submodule,
        LinearEquiv.coe_coe]
      exact this
    simp [Matrix.IsSkewAdjoint, J.isAdjointPair_equiv _ _ P (isUnit_of_invertible P)]

theorem skewAdjointMatricesLieSubalgebraEquiv_apply (P : Matrix n n R) (h : Invertible P)
    (A : skewAdjointMatricesLieSubalgebra J) :
    ↑(skewAdjointMatricesLieSubalgebraEquiv J P h A) = P⁻¹ * A * P := by
  simp [skewAdjointMatricesLieSubalgebraEquiv]

/-- An equivalence of matrix algebras commuting with the transpose endomorphisms restricts to an
equivalence of Lie algebras of skew-adjoint matrices. -/
def skewAdjointMatricesLieSubalgebraEquivTranspose {m : Type w} [DecidableEq m] [Fintype m]
    (e : Matrix n n R ≃ₐ[R] Matrix m m R) (h : ∀ A, (e A)ᵀ = e Aᵀ) :
    skewAdjointMatricesLieSubalgebra J ≃ₗ⁅R⁆ skewAdjointMatricesLieSubalgebra (e J) :=
  LieEquiv.ofSubalgebras _ _ e.toLieEquiv <| by
    ext A
    suffices J.IsSkewAdjoint (e.symm A) ↔ (e J).IsSkewAdjoint A by
      simpa [- LieSubalgebra.mem_map, LieSubalgebra.mem_map_submodule]
    simp only [Matrix.IsSkewAdjoint, Matrix.IsAdjointPair, ← h,
      ← Function.Injective.eq_iff e.injective, map_mul, AlgEquiv.apply_symm_apply, map_neg]

@[simp]
theorem skewAdjointMatricesLieSubalgebraEquivTranspose_apply {m : Type w} [DecidableEq m]
    [Fintype m] (e : Matrix n n R ≃ₐ[R] Matrix m m R) (h : ∀ A, (e A)ᵀ = e Aᵀ)
    (A : skewAdjointMatricesLieSubalgebra J) :
    (skewAdjointMatricesLieSubalgebraEquivTranspose J e h A : Matrix m m R) = e A :=
  rfl

theorem mem_skewAdjointMatricesLieSubalgebra_unit_smul (u : Rˣ) (J A : Matrix n n R) :
    A ∈ skewAdjointMatricesLieSubalgebra (u • J) ↔ A ∈ skewAdjointMatricesLieSubalgebra J := by
  change A ∈ skewAdjointMatricesSubmodule (u • J) ↔ A ∈ skewAdjointMatricesSubmodule J
  simp only [mem_skewAdjointMatricesSubmodule, Matrix.IsSkewAdjoint, Matrix.IsAdjointPair]
  constructor <;> intro h
  · simpa using congr_arg (fun B => u⁻¹ • B) h
  · simp [h]

end SkewAdjointMatrices
```
