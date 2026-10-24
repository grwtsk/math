import Mathlib.Analysis.InnerProductSpace.Positive
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import Mathlib.Tactic

/-!
Positive bounded operator resolvents are admitted from a proved unit before
any inverse bound is used. These are Hilbert-space transports; they provide
no independent estimate that a directional regularized mass tends to zero.
-/

set_option autoImplicit false

namespace PositiveResolventScratch

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- Add the positive scalar multiple of the identity to the original operator. -/
noncomputable def positiveShift (S : E →L[ℂ] E) (α : ℝ) : E →L[ℂ] E :=
  S + (α : ℂ) • (1 : E →L[ℂ] E)

/-- The shifted original positive operator remains positive. -/
theorem positiveShift_isPositive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveShift S α).IsPositive := by
  apply hS.add
  apply ContinuousLinearMap.isPositive_one.smul_of_nonneg
  exact_mod_cast hα.le

/-- Coercivity follows from positivity with exactly the original scalar shift. -/
theorem positiveShift_coercive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  have h := hS.re_inner_nonneg_left x
  have hself : (inner ℂ x x).re = ‖x‖ ^ 2 := inner_self_eq_norm_sq (𝕜 := ℂ) x
  simp only [positiveShift, add_apply, smul_apply,
    one_apply_eq_self, inner_add_left, inner_smul_left, Complex.add_re,
    Complex.conj_ofReal, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, hself]
  change 0 ≤ (inner ℂ (S x) x).re at h
  linarith

variable [CompleteSpace E]

/-- Positivity and a strictly positive shift prove genuine bounded invertibility. -/
theorem positiveShift_isUnit (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply ContinuousLinearMap.isUnit_of_forall_le_norm_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα)
  intro x
  have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
      (inner ℂ (positiveShift S α x) x).re := by
    simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
  exact hc.trans (Complex.re_le_norm _)

/-- The ordinary ring inverse; the preceding theorem supplies its unit admission. -/
noncomputable def positiveResolvent (S : E →L[ℂ] E) (α : ℝ) : E →L[ℂ] E :=
  Ring.inverse (positiveShift S α)

/-- Genuine right inverse identity for the positive shift. -/
theorem positiveShift_mul_resolvent (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveShift S α * positiveResolvent S α = 1 :=
  Ring.mul_inverse_cancel _ (positiveShift_isUnit S hS α hα)

/-- Genuine left inverse identity for the positive shift. -/
theorem resolvent_mul_positiveShift (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveResolvent S α * positiveShift S α = 1 :=
  Ring.inverse_mul_cancel _ (positiveShift_isUnit S hS α hα)

/-- The right inverse acts as the identity on each vector. -/
theorem positiveShift_resolvent_apply (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (x : E) :
    positiveShift S α (positiveResolvent S α x) = x := by
  have h := congrArg (fun A : E →L[ℂ] E => A x) (positiveShift_mul_resolvent S hS α hα)
  simpa only [mul_apply_eq_comp, one_apply_eq_self] using h

/-- The coercive inverse has the required reciprocal-parameter operator norm bound. -/
theorem positiveResolvent_norm_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  have ha := ContinuousLinearMap.antilipschitz_of_forall_le_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα) (fun x => by
      have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
          (inner ℂ (positiveShift S α x) x).re := by
        simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
      exact hc.trans (Complex.re_le_norm _))
  apply (positiveResolvent S α).opNorm_le_bound (by positivity)
  intro x
  have h := ha.le_mul_dist (positiveResolvent S α x) 0
  simp only [map_zero, dist_zero_right, positiveShift_resolvent_apply S hS α hα] at h
  change ‖positiveResolvent S α x‖ ≤ α⁻¹ * ‖x‖ at h
  simpa only [one_div] using h

/-- The admitted inverse itself is a positive operator. -/
theorem positiveResolvent_isPositive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveResolvent S α).IsPositive := by
  apply ContinuousLinearMap.isPositive_def'.2
  refine ⟨(positiveShift_isPositive S hS α hα).isSelfAdjoint.ringInverse, ?_⟩
  intro x
  have h := (positiveShift_isPositive S hS α hα).re_inner_nonneg_right
    (positiveResolvent S α x)
  rw [positiveShift_resolvent_apply S hS α hα] at h
  exact h

/-- The exact resolvent identity retains the operator order. -/
theorem positiveResolvent_sub (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  have hdiff : positiveShift T α - positiveShift S α = T - S := by
    unfold positiveShift
    abel
  rw [← hdiff, mul_sub, sub_mul, mul_assoc,
    positiveShift_mul_resolvent T hT α hα, mul_one,
    resolvent_mul_positiveShift S hS α hα, one_mul]

/-- Operator-norm perturbation at the same strictly positive parameter. -/
theorem positiveResolvent_sub_norm_le (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  rw [positiveResolvent_sub S T hS hT α hα]
  calc
    _ ≤ ‖positiveResolvent S α‖ * ‖T - S‖ * ‖positiveResolvent T α‖ :=
      (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _))
    _ ≤ (1 / α) * ‖T - S‖ * (1 / α) := by
      gcongr
      · exact positiveResolvent_norm_le S hS α hα
      · exact positiveResolvent_norm_le T hT α hα
    _ = ‖S - T‖ / α ^ 2 := by rw [norm_sub_rev]; ring

/-- The real directional regularized mass of the admitted resolvent. -/
noncomputable def regularizedMass (S : E →L[ℂ] E) (α : ℝ) (r : E) : ℝ :=
  α * (inner ℂ r (positiveResolvent S α r)).re

omit [CompleteSpace E] in
private theorem abs_re_inner_map_le (A : E →L[ℂ] E) (r : E) :
    |(inner ℂ r (A r)).re| ≤ ‖r‖ ^ 2 * ‖A‖ := by
  calc
    _ ≤ ‖inner ℂ r (A r)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖r‖ * ‖A r‖ := norm_inner_le_norm _ _
    _ ≤ ‖r‖ * (‖A‖ * ‖r‖) := mul_le_mul_of_nonneg_left (A.le_opNorm r) (norm_nonneg _)
    _ = ‖r‖ ^ 2 * ‖A‖ := by ring

/-- The parameter-scaled directional error loses only one power of alpha. -/
theorem regularizedMass_sub_abs_le (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |regularizedMass S α r - regularizedMass T α r| ≤ ‖r‖ ^ 2 * ‖S - T‖ / α := by
  have hbound := abs_re_inner_map_le (positiveResolvent S α - positiveResolvent T α) r
  have heq : (inner ℂ r ((positiveResolvent S α - positiveResolvent T α) r)).re =
      (inner ℂ r (positiveResolvent S α r)).re -
        (inner ℂ r (positiveResolvent T α r)).re := by
    rw [sub_apply, inner_sub_right, Complex.sub_re]
  rw [heq] at hbound
  unfold regularizedMass
  rw [← mul_sub, abs_mul, abs_of_pos hα]
  calc
    _ ≤ α * (‖r‖ ^ 2 * ‖positiveResolvent S α - positiveResolvent T α‖) :=
      mul_le_mul_of_nonneg_left hbound hα.le
    _ ≤ α * (‖r‖ ^ 2 * (‖S - T‖ / α ^ 2)) := by
      gcongr
      exact positiveResolvent_sub_norm_le S T hS hT α hα
    _ = ‖r‖ ^ 2 * ‖S - T‖ / α := by field_simp

/-- Actual half-line reference normalization gives the precise factor one half. -/
theorem reference_regularizedMass_sub_abs_le
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  have h := regularizedMass_sub_abs_le S T hS hT α hα
    FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector
  rw [FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq] at h
  convert h using 1
  ring

end PositiveResolventScratch

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


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @PositiveResolventScratch.positive_fixed_direction_le
#print PositiveResolventScratch.positive_fixed_direction_le
#print axioms PositiveResolventScratch.positive_fixed_direction_le
#check @PositiveResolventScratch.regularized_resolvent_kernel_apply
#print PositiveResolventScratch.regularized_resolvent_kernel_apply
#print axioms PositiveResolventScratch.regularized_resolvent_kernel_apply
#check @PositiveResolventScratch.kernel_witness_regularizedMass_le
#print PositiveResolventScratch.kernel_witness_regularizedMass_le
#print axioms PositiveResolventScratch.kernel_witness_regularizedMass_le
