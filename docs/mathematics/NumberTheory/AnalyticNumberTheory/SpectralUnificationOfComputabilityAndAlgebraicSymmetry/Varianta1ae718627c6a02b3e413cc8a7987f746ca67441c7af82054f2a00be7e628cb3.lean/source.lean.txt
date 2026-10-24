import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontBound
import Zeta23.Chebyshev
import Mathlib.Algebra.BigOperators.Module

/-!
# Finite Chebyshev estimate for the short Vaughan sectors

Summation by parts uses only the unconditional linear Chebyshev bound and the
already proved reciprocal-square-root sum. No prime error estimate is used.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanBounds

open ArithmeticFunction
open EstimateMovingFrontBound

noncomputable section

private theorem range_succ_sum (f : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range N, f (n+1)) = ∑ n ∈ Finset.Icc 1 N, f n := by
  induction N with
  | zero => simp
  | succ N h => rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), h]

/-- Sharp elementary half-density Chebyshev bound for every finite inventory. -/
theorem sum_vonMangoldt_div_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) ≤
      2 * (Real.log 4 + 4) * Real.sqrt N := by
  let K := Real.log 4 + 4
  let f : ℕ → ℝ := fun n ↦ 1 / Real.sqrt (n+1 : ℕ)
  let g : ℕ → ℝ := fun n ↦ vonMangoldt (n+1) - K
  have hp (j : ℕ) : (∑ n ∈ Finset.range j, g n) ≤ 0 := by
    dsimp only [g]
    rw [Finset.sum_sub_distrib, range_succ_sum]
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    have h := Zeta23.Cheb.sum_vonMangoldt_le (x := (j : ℝ)) (Nat.cast_nonneg j)
    have hset : Finset.Ioc 0 j = Finset.Icc 1 j := by ext n; simp; omega
    simp only [Nat.floor_natCast, hset] at h
    dsimp [K]
    linarith
  have hf (n : ℕ) : 0 ≤ f n := by dsimp [f]; positivity
  have ha (n : ℕ) : f (n+1) ≤ f n := by
    dsimp [f]
    apply one_div_le_one_div_of_le (by positivity)
    apply Real.sqrt_le_sqrt
    push_cast
    linarith
  have hparts := Finset.sum_range_by_parts f g N
  simp only [smul_eq_mul] at hparts
  have hb := mul_nonpos_of_nonneg_of_nonpos (hf (N-1)) (hp N)
  have hs : 0 ≤ ∑ n ∈ Finset.range (N-1), (f (n+1)-f n) * ∑ i ∈ Finset.range (n+1), g i := by
    exact Finset.sum_nonneg (fun n _ ↦ mul_nonneg_of_nonpos_of_nonpos
      (sub_nonpos.mpr (ha n)) (hp (n+1)))
  have hw : (∑ n ∈ Finset.range N, f n * g n) ≤ 0 := by linarith
  have he : (∑ n ∈ Finset.range N, f n * g n) =
      (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) -
      K * ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt n := by
    dsimp [f,g]
    simp_rw [mul_sub, one_div, mul_comm (Real.sqrt _ )⁻¹]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
    simp only [← div_eq_mul_inv]
    rw [range_succ_sum (fun n ↦ vonMangoldt n / Real.sqrt n),
      range_succ_sum (fun n ↦ (Real.sqrt (n : ℝ))⁻¹)]
  rw [he] at hw
  have hk : 0 ≤ K := by dsimp [K]; positivity
  have hsum := mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_le N) hk
  dsimp [K] at hw hsum
  nlinarith

/-- The same bound at every real cutoff, with its closed floor inventory. -/
theorem sum_vonMangoldt_div_sqrt_le_real (x : ℝ) (hx : 0 ≤ x) :
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, vonMangoldt n / Real.sqrt n) ≤
      2 * (Real.log 4 + 4) * Real.sqrt x :=
  (sum_vonMangoldt_div_sqrt_le _).trans
    (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt (Nat.floor_le hx)) (by positivity))

end
end EstimateVaughanBounds
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
