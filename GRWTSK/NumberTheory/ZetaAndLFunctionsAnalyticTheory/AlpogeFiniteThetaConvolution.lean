/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Normed.Operator.BoundedLinearMaps
import Mathlib.Tactic

/-! # Stability of the normalized finite theta convolution

The factors may be noncommuting in the operator estimates. At an actual good
place the sum over nonidentity right cosets bounds the perturbation norm. -/

namespace GRWTSK.NumberTheory.AlpogeFiniteThetaConvolution

/-- Finite-place Bernoulli inequality for a list of probabilities. -/
theorem product_complement_lower (x : List ℝ) (h : ∀ a ∈ x, 0 ≤ a ∧ a ≤ 1) :
    1 - x.sum ≤ (x.map (1 - ·)).prod := by
  induction x with
  | nil => simp
  | cons a x ih =>
    have ha := h a (.head _)
    have hx : ∀ b ∈ x, 0 ≤ b ∧ b ≤ 1 := fun b hb => h b (.tail _ hb)
    have hs : 0 ≤ x.sum := List.sum_nonneg (fun b hb => (hx b hb).1)
    have hi := mul_le_mul_of_nonneg_left (ih hx) (sub_nonneg.mpr ha.2)
    simp only [List.sum_cons, List.map_cons, List.prod_cons]
    nlinarith [mul_nonneg ha.1 hs]

/-- Uniform estimate from the positive spherical product. Both split
denominators and the inert numerator majorant are handled by this bound. -/
theorem local_off_identity (a : ℝ) (ha : 0 ≤ a) (hb : a ≤ 1 / 11) :
    (1 - 2*a)⁻¹ ^ 2 - 1 ≤ 6*a := by
  have hd : 0 < 1 - 2*a := by linarith
  have hd' : (9/11:ℝ)^2 ≤ (1-2*a)^2 := by
    exact pow_le_pow_left₀ (by norm_num) (by linarith) 2
  rw [inv_pow, ← one_div, sub_le_iff_le_add, div_le_iff₀ (sq_pos_of_pos hd)]
  nlinarith [mul_nonneg ha (sub_nonneg.mpr hd'), sq_nonneg a]

/-- A spherical eigenvalue in the disk centered at one has a quantitative
logarithmic lower bound in the stable range, with no temperedness premise. -/
theorem log_norm_local_lower (z : ℂ) (a : ℝ) (ha : 0 ≤ a) (hb : a ≤ 1/11)
    (hz : ‖z-1‖ ≤ 6*a) : -14*a ≤ Real.log ‖z‖ := by
  have ht := norm_sub_norm_le (1 : ℂ) z
  rw [norm_one, norm_sub_rev] at ht
  have hp : 0 < 1-6*a := by linarith
  have hlo : 1-6*a ≤ ‖z‖ := by linarith
  apply le_trans _ (Real.log_le_log hp hlo)
  have hlog := Real.log_le_sub_one_of_pos (inv_pos.mpr hp)
  rw [Real.log_inv] at hlog
  have hi : (1-6*a)⁻¹ ≤ 1+14*a := by
    rw [← one_div, div_le_iff₀ hp]
    nlinarith [mul_nonneg ha (sub_nonneg.mpr hb)]
  linarith

/-- Absolute kernel mass controls a product of normalized operator factors,
including the error from all mixed terms. -/
theorem product_defect {R : Type*} [NormedRing R] [NormOneClass R] (E : List R) :
    ‖(E.map (1 + ·)).prod - 1‖ ≤ (E.map fun e => 1 + ‖e‖).prod - 1 := by
  induction E with
  | nil => simp
  | cons e es ih =>
    let T := (es.map (1 + ·)).prod
    let B := (es.map fun h => 1 + ‖h‖).prod
    change ‖(1+e)*T-1‖ ≤ (1+‖e‖)*B-1
    change ‖T-1‖ ≤ B-1 at ih
    have hT : ‖T‖ ≤ B := by
      calc
        ‖T‖ = ‖(T-1)+1‖ := by simp
        _ ≤ ‖T-1‖+1 := by simpa using norm_add_le (T-1) 1
        _ ≤ B := by linarith
    have eq : (1+e)*T-1 = e*T+(T-1) := by noncomm_ring
    rw [eq]
    calc
      ‖e*T+(T-1)‖ ≤ ‖e*T‖+‖T-1‖ := norm_add_le _ _
      _ ≤ ‖e‖*‖T‖+(B-1) := add_le_add (norm_mul_le _ _) ih
      _ ≤ (1+‖e‖)*B-1 := by nlinarith [mul_le_mul_of_nonneg_left hT (norm_nonneg e)]

/-- The operator tail estimate for an arbitrary partial product and any
additional block of places. -/
theorem extension_error {R : Type*} [NormedRing R] [NormOneClass R]
    (P : R) (E : List R) :
    ‖P*(E.map (1 + ·)).prod-P‖ ≤ ‖P‖*((E.map fun e => 1+‖e‖).prod-1) := by
  calc
    ‖P*(E.map (1 + ·)).prod-P‖ = ‖P*((E.map (1 + ·)).prod-1)‖ := by rw [mul_sub, mul_one]
    _ ≤ _ := (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_left (product_defect E) (norm_nonneg _))

/-- A matching ramified character cancels in the linear-first oscillator
coefficient against the conjugated Petersson coefficient. -/
theorem ramified_character_sum {I : Type*} [Fintype I] (c : I → ℂ)
    (u v : ℂ) (h : ∀ i, ‖c i‖ = 1) :
    (∑ i, (c i*u) * star (c i*v)) = (Fintype.card I : ℂ)*u*star v := by
  have hf (i : I) : (c i*u) * star (c i*v) = u*star v := by
    have hc : c i * star (c i) = 1 := by
      rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq, h]; norm_num
    rw [star_mul]
    calc
      c i*u*(star v*star (c i)) = (c i*star (c i))*(u*star v) := by ring
      _ = _ := by rw [hc, one_mul]
  simp only [hf, Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  ring

/-- Norm convergence of the local nonidentity right-coset sum, including
operators between different Banach spaces (the individual cosets need not
preserve the fixed-vector space). -/
theorem weighted_coset_sum {I X : Type*} [NormedAddCommGroup X]
    [NormedSpace ℂ X] [CompleteSpace X] (c : I → ℂ) (U : I → X)
    (h : Summable fun i => ‖c i‖) (hu : ∀ i, ‖U i‖ ≤ 1) :
    Summable (fun i => c i • U i) ∧ ‖∑' i, c i • U i‖ ≤ ∑' i, ‖c i‖ := by
  have hb (i : I) : ‖c i • U i‖ ≤ ‖c i‖ := by
    rw [norm_smul]
    exact mul_le_of_le_one_right (norm_nonneg _) (hu i)
  have hs : Summable fun i => ‖c i • U i‖ :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hb h
  exact ⟨hs.of_norm, (norm_tsum_le_tsum_norm hs).trans (hs.tsum_le_tsum hb h)⟩

/-- Composition on a simultaneous eigenvector, independent of factorization of
that vector as a tensor. -/
theorem finite_joint_scalar {X : Type*} [NormedAddCommGroup X] [NormedSpace ℂ X]
    (x : X) (L : List ((X →L[ℂ] X) × ℂ)) (h : ∀ P ∈ L, P.1 x = P.2 • x) :
    (L.map Prod.fst).prod x = (L.map Prod.snd).prod • x := by
  induction L with
  | nil => simp
  | cons a L ih =>
    have hr := ih (fun p hp => h p (.tail _ hp))
    have he := h a (.head _)
    simp only [List.map_cons, List.prod_cons, mul_apply_eq_comp, hr, map_smul, he]
    rw [smul_smul, mul_comm]

/-- The scalar action persists under the operator-norm limit. -/
theorem limiting_joint_scalar {I X : Type*} [NormedAddCommGroup X] [NormedSpace ℂ X]
    (F : Filter I) [F.NeBot] (x : X) (T : I → (X →L[ℂ] X)) (b : I → ℂ)
    (V : X →L[ℂ] X) (c : ℂ) (ht : Filter.Tendsto T F (nhds V))
    (hb : Filter.Tendsto b F (nhds c)) (he : ∀ i, T i x = b i • x) :
    V x = c • x := by
  have hcont : Continuous fun A : X →L[ℂ] X => A x := continuous_id.clm_apply continuous_const
  exact tendsto_nhds_unique (hcont.continuousAt.tendsto.comp ht)
    ((hb.smul tendsto_const_nhds).congr (fun i => (he i).symm))

end GRWTSK.NumberTheory.AlpogeFiniteThetaConvolution
