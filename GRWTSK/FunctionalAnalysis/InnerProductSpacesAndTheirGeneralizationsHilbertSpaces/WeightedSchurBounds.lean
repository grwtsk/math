import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
Finite weighted Gram closure for BGP–P04. The row hypothesis is an explicit
input; no source-specific Gram estimate or Möbius cancellation is asserted.
The synthesis consumer still requires a bound for `∑ i ∈ S, ‖a i‖ ^ 2`.
A polynomial Gram constant alone does not bound a head with an uncontrolled
coefficient-square budget; packet reconstruction and residual bounds are separate inputs.

Proof pattern adapted from OpenAI/math:
lean/OAI/NumberTheory/TwoPoint/Halasz/HalaszWeightedMeanSquare.lean
lean/OAI/NumberTheory/TwoPoint/ShortIntervals/MRTSparseGram.lean
Local source-corpus originals: SHA256 73cff285daed5e2b94381d5785bb2331b21a7019cf6c1486cb68caee4f144c97
and 644fb24801aef8becac05d3b1bb5f7d21db8ea224254c88b372723191b1d7437.
The present statements and proofs are checked independently against Mathlib.
-/

noncomputable section

namespace EulerP04RH.WeightedGram

open Finset Complex
open scoped BigOperators Classical ComplexConjugate

/-- Weighted symmetric Schur bound in the normalization used by BGP–1. -/
theorem weighted_symmetric_schur {ι : Type*} (S : Finset ι)
    (K : ι → ι → ℝ) (w b : ι → ℝ) (C : ℝ)
    (hw : ∀ i ∈ S, 0 ≤ w i)
    (hK : ∀ i ∈ S, ∀ j ∈ S, 0 ≤ K i j)
    (hsymm : ∀ i ∈ S, ∀ j ∈ S, K i j = K j i)
    (hrow : ∀ i ∈ S, ∑ j ∈ S, w j * K i j ≤ C * w i) :
    (∑ i ∈ S, ∑ j ∈ S, (b i * w i) * (b j * w j) * K i j) ≤
      C * ∑ i ∈ S, (b i * w i) ^ 2 := by
  have he : (∑ i ∈ S, ∑ j ∈ S,
      ((b i) ^ 2 + (b j) ^ 2) / 2 * (w i * w j * K i j)) =
      ∑ i ∈ S, (b i) ^ 2 * w i * ∑ j ∈ S, w j * K i j := by
    simp only [add_div, add_mul, sum_add_distrib]
    rw [sum_comm (s := S) (t := S)
      (f := fun i j => (b j) ^ 2 / 2 * (w i * w j * K i j))]
    rw [← sum_add_distrib]
    apply sum_congr rfl
    intro i hi
    rw [← sum_add_distrib, mul_sum]
    apply sum_congr rfl
    intro j hj
    rw [hsymm j hj i hi]
    ring
  calc
    _ ≤ ∑ i ∈ S, ∑ j ∈ S,
        ((b i) ^ 2 + (b j) ^ 2) / 2 * (w i * w j * K i j) := by
      apply sum_le_sum
      intro i hi
      apply sum_le_sum
      intro j hj
      have hb : b i * b j ≤ ((b i) ^ 2 + (b j) ^ 2) / 2 := by
        nlinarith [sq_nonneg (b i - b j)]
      convert mul_le_mul_of_nonneg_right hb
        (mul_nonneg (mul_nonneg (hw i hi) (hw j hj)) (hK i hi j hj)) using 1
      ring
    _ = _ := he
    _ ≤ ∑ i ∈ S, (b i) ^ 2 * w i * (C * w i) := by
      apply sum_le_sum
      intro i hi
      exact mul_le_mul_of_nonneg_left (hrow i hi)
        (mul_nonneg (sq_nonneg _) (hw i hi))
    _ = _ := by
      rw [mul_sum]
      apply sum_congr rfl
      intro i hi
      ring

/-- BGP–1 implies synthesis for every coefficient family, with the same constant.
Positive Schur weights disappear from the final coefficient norm. -/
theorem synthesis_of_weighted_gram_rows {ι E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (S : Finset ι) (v : ι → E) (a : ι → ℂ) (w : ι → ℝ) {C : ℝ}
    (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖inner ℂ (v i) (v j)‖ * w j ≤ C * w i) :
    ‖∑ i ∈ S, a i • v i‖ ^ 2 ≤ C * ∑ i ∈ S, ‖a i‖ ^ 2 := by
  have hs := weighted_symmetric_schur S
    (fun i j => ‖inner ℂ (v i) (v j)‖) w (fun i => ‖a i‖ / w i) C
    (fun i hi => (hw i hi).le) (fun _ _ _ _ => norm_nonneg _)
    (fun _ _ _ _ => norm_inner_symm _ _)
    (by simpa only [mul_comm] using hrow)
  have hc (i : ι) (hi : i ∈ S) : (‖a i‖ / w i) * w i = ‖a i‖ :=
    div_mul_cancel₀ _ (hw i hi).ne'
  have hs' : (∑ i ∈ S, ∑ j ∈ S,
      ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖) ≤
      C * ∑ i ∈ S, ‖a i‖ ^ 2 := by
    have hl : (∑ i ∈ S, ∑ j ∈ S,
        (‖a i‖ / w i * w i) * (‖a j‖ / w j * w j) * ‖inner ℂ (v i) (v j)‖) =
        ∑ i ∈ S, ∑ j ∈ S, ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖ := by
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      rw [hc i hi, hc j hj]
    have hr : (∑ i ∈ S, (‖a i‖ / w i * w i) ^ 2) = ∑ i ∈ S, ‖a i‖ ^ 2 := by
      apply sum_congr rfl
      intro i hi
      rw [hc i hi]
    rw [hl, hr] at hs
    exact hs
  calc
    _ = (inner ℂ (∑ i ∈ S, a i • v i) (∑ i ∈ S, a i • v i)).re :=
      norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ ≤ ‖inner ℂ (∑ i ∈ S, a i • v i) (∑ i ∈ S, a i • v i)‖ := re_le_norm _
    _ = ‖∑ i ∈ S, ∑ j ∈ S, conj (a i) * a j * inner ℂ (v i) (v j)‖ := by
      simp only [sum_inner, inner_sum, inner_smul_left, inner_smul_right, mul_sum]
      rw [sum_comm]
      congr 1
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      ring
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, ‖conj (a i) * a j * inner ℂ (v i) (v j)‖ :=
      (norm_sum_le _ _).trans (sum_le_sum (fun _ _ => norm_sum_le _ _))
    _ = ∑ i ∈ S, ∑ j ∈ S,
        ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖ := by
      simp only [norm_mul, norm_conj]
    _ ≤ _ := hs'

/-- The upper Bessel estimate is a consequence of BGP–1, not a reconstruction theorem. -/
theorem bessel_of_weighted_gram_rows {ι E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (S : Finset ι) (v : ι → E) (u : E) (w : ι → ℝ) {C : ℝ}
    (hC : 0 ≤ C) (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖inner ℂ (v i) (v j)‖ * w j ≤ C * w i) :
    (∑ i ∈ S, ‖inner ℂ (v i) u‖ ^ 2) ≤ C * ‖u‖ ^ 2 := by
  let b := fun i => inner ℂ (v i) u
  let z := ∑ i ∈ S, b i • v i
  let A := ∑ i ∈ S, ‖b i‖ ^ 2
  have hA : 0 ≤ A := sum_nonneg (fun _ _ => sq_nonneg _)
  have hz : inner ℂ z u = (A : ℂ) := by
    dsimp only [z, A]
    rw [sum_inner]
    push_cast
    apply sum_congr rfl
    intro i hi
    rw [inner_smul_left]
    exact conj_mul' (b i)
  have hc : A ≤ ‖z‖ * ‖u‖ := by
    calc
      A = ‖inner ℂ z u‖ := by
        rw [hz, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hA]
      _ ≤ _ := norm_inner_le_norm _ _
  have hz2 : ‖z‖ ^ 2 ≤ C * A := synthesis_of_weighted_gram_rows S v b w hw hrow
  have hc2 : A ^ 2 ≤ ‖z‖ ^ 2 * ‖u‖ ^ 2 := by
    simpa only [mul_pow] using pow_le_pow_left₀ hA hc 2
  have hprod := mul_le_mul_of_nonneg_right hz2 (sq_nonneg ‖u‖)
  by_cases hAz : A = 0
  · change A ≤ C * ‖u‖ ^ 2
    rw [hAz]
    exact mul_nonneg hC (sq_nonneg _)
  · change A ≤ C * ‖u‖ ^ 2
    have hApos : 0 < A := lt_of_le_of_ne hA (Ne.symm hAz)
    apply (mul_le_mul_iff_right₀ hApos).mp
    calc
      A * A = A ^ 2 := by ring
      _ ≤ C * A * ‖u‖ ^ 2 := hc2.trans hprod
      _ = A * (C * ‖u‖ ^ 2) := by ring

end EulerP04RH.WeightedGram

#print axioms EulerP04RH.WeightedGram.weighted_symmetric_schur
#print axioms EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
#print axioms EulerP04RH.WeightedGram.bessel_of_weighted_gram_rows
