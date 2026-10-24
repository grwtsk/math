-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ToProd.Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ToProd.Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Lie/SemiDirect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Leonid Ryvkin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonid Ryvkin
-/
module

public import Mathlib.Algebra.Lie.Derivation.Basic
public import Mathlib.Algebra.Lie.Extension
public import Mathlib.Algebra.Lie.Prod

/-!
# Semi-direct products

This file defines the semi-direct sum of Lie algebras. These are the infinitesimal counterpart of
semidirect products of (Lie) groups. Given two Lie algebras `K` and `L` over `R` as well as a Lie
algebra homomorphism  `ψ : L → LieDerivation  R K K`, the underlying set of the semidirect sum is
`K × L`, however the bracket is twisted by `ψ`. In this file we show that `SemiDirectSum K L ψ` is
itself a Lie algebra and that it fits into an exact sequence `H → (SemiDirectSum K L ψ) → L`, i.e.
forms an extension of `L`.


## References

* https://en.wikipedia.org/wiki/Lie_algebra_extension#By_semidirect_sum

-/



namespace GRWTSK.Algebra.UniversalAlgebra.ToProd.Variant6ef0101903eb728cb52ef829b7df03b13274180e41a8e5efe4d453c6426e38ef

@[expose] public section

namespace LieAlgebra

/--
The semi-direct sum of two Lie algebras `K` and `L` over `R`, relative to a Lie algebra homomorphism
`ψ: L → LieDerivation R K K`. As a set, it is just `K × L`, however the Lie bracket is twisted by
`ψ`.
-/
@[ext] structure SemiDirectSum {R : Type*} [CommRing R] (K : Type*) [LieRing K] [LieAlgebra R K]
    (L : Type*) [LieRing L] [LieAlgebra R L] (_ : L →ₗ⁅R⁆ LieDerivation R K K) where
  /-- The element of K -/
  left : K
  /-- The element of L -/
  right : L

@[inherit_doc]
notation:35 K " ⋊⁅" ψ:35 "⁆ " L:35 => SemiDirectSum K L ψ


namespace SemiDirectSum

variable {R : Type*} [CommRing R]
variable {K : Type*} [LieRing K] [LieAlgebra R K]
variable {L : Type*} [LieRing L] [LieAlgebra R L]

section
variable (ψ : L →ₗ⁅R⁆ LieDerivation R K K)

variable {ψ} in
/-- As raw types, the semidirect product is just a product. -/
def toProd : K ⋊⁅ψ⁆ L ≃ K × L where
  toFun x := ⟨x.left, x.right⟩
  invFun x := ⟨x.fst, x.snd⟩
  left_inv _ := rfl
  right_inv _ := rfl

@[simp] lemma toProd_apply (x : K ⋊⁅ψ⁆ L) : toProd x = ⟨x.left, x.right⟩ := rfl

@[simp] lemma toProd_symm_apply (x : K × L) : (toProd : K ⋊⁅ψ⁆ L ≃ K × L).symm x = ⟨x.1, x.2⟩ :=
  rfl

instance : AddCommGroup (K ⋊⁅ψ⁆ L) := toProd.addCommGroup

instance : Module R (K ⋊⁅ψ⁆ L) :=
  { toProd with map_add' _ _ := rfl : (K ⋊⁅ψ⁆ L) ≃+ K × L }.module R

/-- `LieAlgebra.SemiDirectSum.toProd` as a linear equivalence. -/
def toProdl : (K ⋊⁅ψ⁆ L) ≃ₗ[R] K × L :=
  { __ := toProd
    map_add' _ _ := rfl
    map_smul' _ _ := rfl }

@[simp] lemma toProdl_coe (x : K ⋊⁅ψ⁆ L) : toProdl ψ x = toProd x := rfl
@[simp] lemma toProdl_symm_coe (x : K × L) : (toProdl ψ).symm x = toProd.symm x := rfl

instance : Bracket (K ⋊⁅ψ⁆ L) (K ⋊⁅ψ⁆ L) where
  bracket x y := ⟨⁅x.left, y.left⁆ + ψ x.right y.left - ψ y.right x.left, ⁅x.right, y.right⁆⟩

@[simp] lemma zero_eq_mk : (0 : K ⋊⁅ψ⁆ L) = ⟨0, 0⟩ := rfl
@[simp] lemma add_eq_mk (x y : K ⋊⁅ψ⁆ L) : x + y = ⟨x.left + y.left, x.right + y.right⟩ := rfl
@[simp] lemma sub_eq_mk (x y : K ⋊⁅ψ⁆ L) : x - y = ⟨x.left - y.left, x.right - y.right⟩ := rfl
@[simp] lemma neg_eq_mk (x : K ⋊⁅ψ⁆ L) : -x = ⟨-x.left, -x.right⟩ := rfl
@[simp] lemma smul_eq_mk (t : R) (x : K ⋊⁅ψ⁆ L) : t • x = ⟨t • x.left, t • x.right⟩ := rfl
@[simp] lemma lie_eq_mk (x y : K ⋊⁅ψ⁆ L) :
    ⁅x, y⁆ = ⟨⁅x.left, y.left⁆ + ψ x.right y.left - ψ y.right x.left, ⁅x.right, y.right⁆⟩ :=
  rfl

instance : LieRing (K ⋊⁅ψ⁆ L) where
  add_lie _ _ _ := by simp; abel
  lie_add _ _ _ := by simp; abel
  lie_self _ := by simp
  leibniz_lie _ _ _ := by simp; grind [lie_skew]

instance : LieAlgebra R (K ⋊⁅ψ⁆ L) where
  lie_smul _ _ _ := by simp [smul_sub, smul_add]

/-- The canonical inclusion of K into the semi-direct sum K ⋊⁅ψ⁆ G. -/
def inl : K →ₗ⁅R⁆ K ⋊⁅ψ⁆ L where
  toFun x := ⟨x, 0⟩
  map_add' _ _ := by simp
  map_smul' _ _ := by simp
  map_lie' := by simp

/-- The canonical inclusion of L into the semi-direct sum K ⋊⁅ψ⁆ G. -/
def inr : L →ₗ⁅R⁆ K ⋊⁅ψ⁆ L where
  toFun x := ⟨0, x⟩
  map_add' _ _ := by simp
  map_smul' _ _ := by simp
  map_lie' := by simp

@[simp] lemma inl_eq_mk (x : K) : inl ψ x = ⟨x, 0⟩ := rfl
@[simp] lemma inr_eq_mk (x : L) : inr ψ x = ⟨0, x⟩ := rfl

@[simp]
lemma inl_injective : Function.Injective (inl ψ) := by intro; simp [inl]

/-- The canonical projection of the semi-direct sum K ⋊⁅ψ⁆ L to G. -/
def projr : K ⋊⁅ψ⁆ L →ₗ⁅R⁆ L where
  toFun x := x.right
  map_add' _ _ := by simp
  map_smul' _ _ := by simp
  map_lie' := by simp

/-- The canonical projection of the semi-direct sum K ⋊⁅ψ⁆ L to G.
It is not, in general, a Lie algebra homomorphism, just a linear map. -/
def projl : K ⋊⁅ψ⁆ L →ₗ[R] K where
  toFun x := x.left
  map_add' _ _ := by simp
  map_smul' _ _ := by simp

@[simp] lemma projr_mk (x : K ⋊⁅ψ⁆ L) : projr ψ x = x.right := rfl
@[simp] lemma projl_mk (x : K ⋊⁅ψ⁆ L) : projl ψ x = x.left := rfl

lemma projr_inl_apply {x : K} : projr ψ (inl ψ x) = 0 := by simp
lemma projr_inr_apply {x : L} : projr ψ (inr ψ x) = x := by simp
lemma projl_inr_apply {x : L} : projl ψ (inr ψ x) = 0 := by simp
lemma projl_inl_apply {x : K} : projl ψ (inl ψ x) = x := by simp

@[simp]
lemma projr_surjective : Function.Surjective (projr ψ) :=
  fun x ↦ ⟨inr ψ x, by simp⟩

instance : LieAlgebra.IsExtension (inl ψ) (projr ψ) where
  ker_eq_bot := by simp [LieHom.ker_eq_bot]
  range_eq_top := by simp [LieHom.range_eq_top]
  exact := by ext ⟨x, y⟩; aesop

end

variable (R K L) in
/-- The product of two Lie algebras realized through a semidirect sum with trivial `ψ` -/
@[simps!]
def prod_iso : (K ⋊⁅(0 : L →ₗ⁅R⁆ (LieDerivation R K K))⁆ L) ≃ₗ⁅R⁆ (K × L) where
  __ := toProdl 0
  map_lie' {_ _} := by simp

end SemiDirectSum
end LieAlgebra
end
