namespace PositiveResolventScratch

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- A fixed vector of a positive operator gives a directional lower bound. -/
theorem positive_fixed_direction_le (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := by
  let q : ℝ := ‖e‖ ^ 2
  let c : ℂ := inner ℂ e r
  let v : E := (q : ℂ) • r - c • e
  have hq : 0 < q := sq_pos_of_pos (norm_pos_iff.mpr he)
  have hee : inner ℂ e e = (q : ℂ) := by
    calc
      inner ℂ e e = (‖e‖ : ℂ) ^ 2 := inner_self_eq_norm_sq_to_K e
      _ = (q : ℂ) := (Complex.ofReal_pow ‖e‖ 2).symm
  have her : inner ℂ e (B r) = c := by
    rw [← hB.inner_left_eq_inner_right, hBe]
  have hre : inner ℂ r e = conj c := (inner_conj_symm r e).symm
  have hquad : inner ℂ v (B v) =
      (q : ℂ) ^ 2 * inner ℂ r (B r) - (q : ℂ) * (conj c * c) := by
    simp only [v, map_sub, map_smul, inner_sub_left, inner_sub_right,
      inner_smul_left, inner_smul_right, Complex.conj_ofReal, hBe, her, hre, hee]
    ring
  have hp := hB.re_inner_nonneg_right v
  change 0 ≤ (inner ℂ v (B v)).re at hp
  rw [hquad, ← Complex.normSq_eq_conj_mul_self] at hp
  simp only [← Complex.ofReal_pow, Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, Complex.normSq_eq_norm_sq] at hp
  have hn : ‖c‖ = ‖inner ℂ r e‖ := by rw [hre, Complex.norm_conj]
  rw [hn] at hp
  apply (div_le_iff₀ hq).2
  change ‖inner ℂ r e‖ ^ 2 ≤ (inner ℂ r (B r)).re * q
  nlinarith

variable [CompleteSpace E]

/-- A vector in the original operator's kernel is fixed by the regularized inverse. -/
theorem regularized_resolvent_kernel_apply (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (e : E) (he : S e = 0) :
    ((α : ℂ) • positiveResolvent S α) e = e := by
  have h := congrArg (fun A : E →L[ℂ] E => A e) (resolvent_mul_positiveShift S hS α hα)
  simpa only [mul_apply_eq_comp, one_apply_eq_self, positiveShift, add_apply,
    smul_apply, he, zero_add, map_smul] using h

/-- Every nonzero kernel witness gives its exact overlap floor at every positive parameter. -/
theorem kernel_witness_regularizedMass_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := by
  have hp : ((α : ℂ) • positiveResolvent S α).IsPositive :=
    (positiveResolvent_isPositive S hS α hα).smul_of_nonneg (by exact_mod_cast hα.le)
  have h := positive_fixed_direction_le _ hp r e he
    (regularized_resolvent_kernel_apply S hS α hα e hSe)
  simpa only [regularizedMass, smul_apply, inner_smul_right, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using h

end PositiveResolventScratch
