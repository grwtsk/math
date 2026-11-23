/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-! # Complementary principal minors and character powers for the odd Weyl transport

The block identity below is denominator free. The leading principal block may
be singular. The final identity keeps the determinant ratio in the direction
used by the normalized class character. -/

namespace GRWTSK.NumberTheory.AlpogeOddWeylTransport

open Matrix

variable {R I J : Type*} [CommRing R] [Fintype I] [Fintype J]
  [DecidableEq I] [DecidableEq J]

/-- Substitute the lower rows of a left inverse in a triangular block matrix.
Taking its determinant exchanges the two complementary principal minors. -/
theorem complementary_block_det
    (A : Matrix I I R) (B : Matrix I J R) (C : Matrix J I R) (D : Matrix J J R)
    (E : Matrix J I R) (F : Matrix J J R)
    (hzero : E * A + F * C = 0) (hone : E * B + F * D = 1) :
    (fromBlocks A B C D).det * F.det = A.det := by
  have hm : fromBlocks (1 : Matrix I I R) (0 : Matrix I J R) E F *
      fromBlocks A B C D = fromBlocks A B (0 : Matrix J I R) (1 : Matrix J J R) := by
    rw [fromBlocks_multiply]
    simp [hzero, hone]
  have hd := congrArg Matrix.det hm
  simpa [det_mul, det_fromBlocks_zero₁₂, det_fromBlocks_zero₂₁, mul_comm] using hd

/-- Jacobi's complementary principal-minor identity for a left inverse, over
any commutative ring and for blocks of arbitrary finite size. -/
theorem jacobi_of_left_inverse (U V : Matrix (I ⊕ J) (I ⊕ J) R) (h : V * U = 1) :
    U.det * V.toBlocks₂₂.det = U.toBlocks₁₁.det := by
  have hblocks : fromBlocks V.toBlocks₁₁ V.toBlocks₁₂ V.toBlocks₂₁ V.toBlocks₂₂ *
      fromBlocks U.toBlocks₁₁ U.toBlocks₁₂ U.toBlocks₂₁ U.toBlocks₂₂ = 1 := by
    simpa only [fromBlocks_toBlocks] using h
  rw [fromBlocks_multiply, ← fromBlocks_one (l := I) (m := J)] at hblocks
  rw [fromBlocks_inj] at hblocks
  have hd := complementary_block_det U.toBlocks₁₁ U.toBlocks₁₂ U.toBlocks₂₁ U.toBlocks₂₂
    V.toBlocks₂₁ V.toBlocks₂₂ hblocks.2.2.1 hblocks.2.2.2
  simpa only [fromBlocks_toBlocks] using hd

/-- The powers of the full determinant in a pair of complementary highest
vectors cancel even if some of the proper minors vanish. -/
theorem complementary_weight {K ι : Type*} [Field K] [Fintype ι]
    (δ : K) (hδ : δ ≠ 0) (a b : ι → K) (d : ι → ℕ) (c : ℤ)
    (h : ∀ i, δ * b i = a i) :
    (δ⁻¹) ^ (-(c + (↑(∑ i, d i) : ℤ))) * ∏ i, b i ^ d i =
      δ ^ c * ∏ i, a i ^ d i := by
  have hprod : (∏ i, a i ^ d i) = δ ^ (∑ i, d i) * ∏ i, b i ^ d i := by
    simp_rw [← h, mul_pow]
    rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
  rw [hprod, ← mul_assoc, ← zpow_natCast δ, ← zpow_add₀ hδ, zpow_neg, inv_zpow, inv_inv]

/-- Integral polynomial substitution preserves membership of every coefficient
in a specified scalar submodule. Applying it to finite truncations controls
any identity-preserving integral formal change of parameters degree by degree. -/
theorem coeff_substitution_mem {A K σ τ : Type*} [CommSemiring A] [CommSemiring K]
    [Algebra A K] (S : Submodule A K) (f : MvPolynomial σ K)
    (hf : ∀ d, f.coeff d ∈ S) (g : σ → MvPolynomial τ A) (e : τ →₀ ℕ) :
    (f.eval₂ MvPolynomial.C (fun i => MvPolynomial.map (algebraMap A K) (g i))).coeff e ∈ S := by
  classical
  rw [MvPolynomial.eval₂_eq, MvPolynomial.coeff_sum]
  refine S.sum_mem fun d _ => ?_
  let mon : MvPolynomial τ A := ∏ i ∈ d.support, (g i) ^ d i
  have hm : MvPolynomial.map (algebraMap A K) mon =
      ∏ i ∈ d.support, (MvPolynomial.map (algebraMap A K) (g i)) ^ d i := by
    simp [mon]
  rw [MvPolynomial.coeff_C_mul, ← hm, MvPolynomial.coeff_map, mul_comm, ← Algebra.smul_def]
  exact S.smul_mem _ (hf d)

/-- After the finite class relation, the character power cancels the rational
determinant, leaving just the normalized local determinant ratio. -/
theorem normalized_twist_pow {G : Type*} [CommGroup G] (s t q : G) (k : ℕ) (c : ℤ)
    (h : s ^ k * q ^ c = 1) :
    (s * t ^ c) ^ k = (t ^ k / q) ^ c := by
  have hp : (t ^ c) ^ k = (t ^ k) ^ c := by
    rw [← zpow_natCast (t ^ c), ← zpow_natCast t, ← zpow_mul, ← zpow_mul, mul_comm]
  rw [mul_pow, hp, eq_inv_of_mul_eq_one_left h, div_eq_mul_inv, mul_zpow, inv_zpow, mul_comm]

end GRWTSK.NumberTheory.AlpogeOddWeylTransport
