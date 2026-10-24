import FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation

/-!
# Genuine full-energy controller transport

The original output energy is TT*. No dense-range, zero-atom or vanishing
estimate is a premise. The explicit optimizer is admitted from the positive
shift and retains the entire Hilbert-space residual and input cost.
-/
set_option autoImplicit false
namespace ControllerEnergyScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential PositiveResolvent HalfLineOperator SourceResolventTruncation
open scoped ComplexConjugate
noncomputable section

/-- The complete tracking error and regularized cost on the actual half-line space. -/
def trackingEnergy (T : H →L[ℂ] H) (α : ℝ) (r q : H) : ℝ :=
  ‖r - T q‖ ^ 2 + α * ‖q‖ ^ 2

/-- The explicit controller obtained from the admitted output-side TT* resolvent. -/
def canonicalController (T : H →L[ℂ] H) (α : ℝ) (r : H) : H :=
  T.adjoint (positiveResolvent (T.comp T.adjoint) α r)

/-- Its actual full residual equals alpha times the output-side resolvent vector. -/
theorem canonical_residual (T : H →L[ℂ] H) (α : ℝ) (hα : 0 < α) (r : H) :
    r - T (canonicalController T α r) =
      (α : ℂ) • positiveResolvent (T.comp T.adjoint) α r := by
  have h := positiveShift_resolvent_apply (T.comp T.adjoint)
    (ContinuousLinearMap.isPositive_self_comp_adjoint T) α hα r
  change T (canonicalController T α r) +
      (α : ℂ) • positiveResolvent (T.comp T.adjoint) α r = r at h
  exact (sub_eq_iff_eq_add).mpr (by simpa only [add_comm] using h.symm)

/-- The canonical controller attains the actual directional mass exactly. -/
theorem canonical_energy (T : H →L[ℂ] H) (α : ℝ) (hα : 0 < α) (r : H) :
    trackingEnergy T α r (canonicalController T α r) =
      regularizedMass (T.comp T.adjoint) α r := by
  let u := positiveResolvent (T.comp T.adjoint) α r
  have h := positiveShift_resolvent_apply (T.comp T.adjoint)
    (ContinuousLinearMap.isPositive_self_comp_adjoint T) α hα r
  change T (T.adjoint u) + (α : ℂ) • u = r at h
  have hi : (inner ℂ r u).re = ‖T.adjoint u‖ ^ 2 + α * ‖u‖ ^ 2 := by
    rw [← h, inner_add_left, ← ContinuousLinearMap.adjoint_inner_right,
      inner_smul_left, Complex.add_re]
    simp only [Complex.conj_ofReal, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    simp only [← RCLike.re_to_complex, inner_self_eq_norm_sq]
  rw [trackingEnergy, canonical_residual T α hα r]
  change ‖(α : ℂ) • u‖ ^ 2 + α * ‖T.adjoint u‖ ^ 2 = α * (inner ℂ r u).re
  rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hα, hi]
  ring

/-- The cross term is transported through the true Hilbert adjoint. -/
theorem canonical_cross_term (T : H →L[ℂ] H) (α : ℝ) (hα : 0 < α) (r w : H) :
    (inner ℂ (r - T (canonicalController T α r)) (T w)).re =
      α * (inner ℂ (canonicalController T α r) w).re := by
  rw [canonical_residual T α hα r, inner_smul_left,
    ← ContinuousLinearMap.adjoint_inner_left]
  simp only [Complex.conj_ofReal, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, canonicalController]

/-- Exact completion of squares, with the full output and input defects retained. -/
theorem trackingEnergy_translate_canonical (T : H →L[ℂ] H)
    (α : ℝ) (hα : 0 < α) (r w : H) :
    trackingEnergy T α r (canonicalController T α r + w) =
      regularizedMass (T.comp T.adjoint) α r + ‖T w‖ ^ 2 + α * ‖w‖ ^ 2 := by
  have he := canonical_energy T α hα r
  have hc := canonical_cross_term T α hα r w
  unfold trackingEnergy at he ⊢
  rw [map_add, ← sub_sub, norm_sub_sq (𝕜 := ℂ), norm_add_sq (𝕜 := ℂ)]
  change (‖r - T (canonicalController T α r)‖ ^ 2 -
    2 * (inner ℂ (r - T (canonicalController T α r)) (T w)).re + ‖T w‖ ^ 2) +
    α * (‖canonicalController T α r‖ ^ 2 +
      2 * (inner ℂ (canonicalController T α r) w).re + ‖w‖ ^ 2) = _
  rw [hc]
  linarith

/-- Every genuine full-energy controller gives an upper bound for the same output-side mass. -/
theorem regularizedMass_le_trackingEnergy (T : H →L[ℂ] H)
    (α : ℝ) (hα : 0 < α) (r q : H) :
    regularizedMass (T.comp T.adjoint) α r ≤ trackingEnergy T α r q := by
  have h := trackingEnergy_translate_canonical T α hα r (q - canonicalController T α r)
  rw [add_sub_cancel] at h
  rw [h]
  have h1 := sq_nonneg ‖T (q - canonicalController T α r)‖
  have h2 := mul_nonneg hα.le (sq_nonneg ‖q - canonicalController T α r‖)
  linarith

/-- Exact source specialization keeps the original reference and TT* definition. -/
theorem sourceMass_le_full_energy (α : ℝ) (hα : 0 < α) (q : H) :
    sourceMass α ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  regularizedMass_le_trackingEnergy sourceOperator α hα referenceVector q

/-- The mass is an attained least value, rather than a totalized infimum. -/
theorem isLeast_trackingEnergy (T : H →L[ℂ] H)
    (α : ℝ) (hα : 0 < α) (r : H) :
    IsLeast (Set.range (trackingEnergy T α r))
      (regularizedMass (T.comp T.adjoint) α r) := by
  constructor
  · exact ⟨canonicalController T α r, canonical_energy T α hα r⟩
  · rintro _ ⟨q, rfl⟩
    exact regularizedMass_le_trackingEnergy T α hα r q

/-- The original source mass is exactly the attained full controller minimum. -/
theorem sourceMass_isLeast_full_energy (α : ℝ) (hα : 0 < α) :
    IsLeast (Set.range (fun q : H =>
      ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2)) (sourceMass α) :=
  isLeast_trackingEnergy sourceOperator α hα referenceVector

/-- The same full-energy bound applies to the admitted time cutoff on the same space. -/
theorem truncatedMass_le_full_energy (N α : ℝ) (hα : 0 < α) (q : H) :
    truncatedMass N α ≤
      ‖referenceVector - TimeKernelTruncation.truncatedOperator N q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  regularizedMass_le_trackingEnergy (TimeKernelTruncation.truncatedOperator N)
    α hα referenceVector q

/-- The explicit source controller attains the full residual-plus-cost expression. -/
theorem sourceMass_canonical_energy (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator
      (canonicalController sourceOperator α referenceVector)‖ ^ 2 +
      α * ‖canonicalController sourceOperator α referenceVector‖ ^ 2 = sourceMass α :=
  canonical_energy sourceOperator α hα referenceVector

end
end ControllerEnergyScratch
