-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PositiveShift.Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PositiveShift.Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"b2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/PositiveResolventStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Positive
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import Mathlib.Tactic

/-!
Positive bounded operator resolvents are admitted from a proved unit before
any inverse bound is used. These are Hilbert-space transports; they provide
no independent estimate that a directional regularized mass tends to zero.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PositiveShift.Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586

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

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]

example (S : E →L[ℂ] E) (α : ℝ) : positiveShift S α = S + (α : ℂ) • (1 : E →L[ℂ] E) := rfl

example (S : E →L[ℂ] E) (α : ℝ) : positiveResolvent S α = Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) := rfl

example (S : E →L[ℂ] E) (α : ℝ) (r : E) : regularizedMass S α r = α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re := rfl

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveShift S α).IsPositive := by
  apply positiveShift_isPositive <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  exact positiveShift_coercive S hS α x

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply positiveShift_isUnit <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveShift S α * positiveResolvent S α = 1 := by
  apply positiveShift_mul_resolvent <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveResolvent S α * positiveShift S α = 1 := by
  apply resolvent_mul_positiveShift <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (x : E) :
    positiveShift S α (positiveResolvent S α x) = x := by
  apply positiveShift_resolvent_apply <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  apply positiveResolvent_norm_le <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveResolvent S α).IsPositive := by
  apply positiveResolvent_isPositive <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  apply positiveResolvent_sub <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  apply positiveResolvent_sub_norm_le <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |regularizedMass S α r - regularizedMass T α r| ≤ ‖r‖ ^ 2 * ‖S - T‖ / α := by
  apply regularizedMass_sub_abs_le <;> assumption

example
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  apply reference_regularizedMass_sub_abs_le <;> assumption

example (S T : E →L[ℂ] E) (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re -
      α * (inner ℂ r (Ring.inverse (T + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re| ≤
      ‖r‖ ^ 2 * ‖S - T‖ / α := by
  exact regularizedMass_sub_abs_le S T hS hT α hα r

end PositiveResolventScratch
