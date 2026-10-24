/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonLocalization
import GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroSeparation

set_option autoImplicit false

/-!
# Quantitative boundary separation for the original concrete Newton disk

The original SourceAcceptance remains OPEN. Conditional on that exact premise,
the inherited inner localization and OUTER-disk derivative bound give an actual
zeta modulus floor on the entire outer circle. No center sample, pointwise
plot, smaller returned error or inner-only contraction estimate is substituted.

On |w-c|=1/100000, the root is within 1/250000 of c. The original outer rate
is at most 1/3 and |a| is at most 29/20. Hence |a*zeta(w)| >= 1/250000,
|zeta(w)| >= 1/362500, |1/zeta(w)| <= 362500, and
|zeta'(w)/zeta(w)| <= 1000000/3. The whole circle is covered by inequalities,
not by sampled points. At the center or the root no positive floor is claimed.

These are local contour inputs, not an argument-principle integral, a complete
height count, a global logarithmic-derivative estimate or an RH theorem.
All source data, acceptance checks, root identities and original radii remain
unchanged. Inherited and new proof scripts require elaboration and trust audit.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / SOURCE_ACCEPTANCE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonBoundary

open Set Metric
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroSeparation
open ConcreteNewtonLocalization

noncomputable section

/-- Reuse the SAME source facts; the original outer radius is restored only as a domain. -/
theorem outer_center_enclosures_of_source (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    RationalNewtonWitness.CenterEnclosures ConcreteNewtonPacket.newtonData :=
  inner_center_enclosures_iff.mp (inner_center_enclosures_of_source hsource)

/-- Analyticity on the entire original disk is inherited from its checked chart geometry. -/
theorem outer_analytic : AnalyticOnNhd ℂ riemannZeta
    (closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) := by
  have subset := RationalNewtonWitness.geometry_subset ConcreteNewtonPacket.chart true
    ConcreteNewtonPacket.newtonData ConcreteNewtonPacket.newton_admissible.1
  have outer :
      closedBall (QComplex.embed (RationalNewtonWitness.chartCenter ConcreteNewtonPacket.chart true))
        (5 / 2 : ℝ) ⊆
      closedBall (QComplex.embed (RationalNewtonWitness.chartCenter ConcreteNewtonPacket.chart true))
        (3 : ℝ) := closedBall_subset_closedBall (by norm_num)
  exact (ZetaDiskCurvature.analyticOnNhd_zeta_disk ConcreteNewtonPacket.chart
    ConcreteNewtonPacket.newton_admissible.1.1 _
    (RationalNewtonWitness.chartCenter_spec ConcreteNewtonPacket.chart true)).mono
      (subset.trans outer)

/-- Use the OUTER rate on the outer disk, not the sharper rate on the smaller disk. -/
theorem outer_derivative_defect (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖1 - QComplex.embed ConcreteNewtonPacket.inverse * deriv riemannZeta w‖ ≤ (1 / 3 : ℝ) := by
  have bound := (RationalNewtonWitness.source_bounds ConcreteNewtonPacket.chart true
    ConcreteNewtonPacket.newtonData ConcreteNewtonPacket.newton_admissible
    (outer_center_enclosures_of_source hsource)).2 w member
  have rate : (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart
      ConcreteNewtonPacket.newtonData : ℝ) < (1 / 3 : ℝ) := by
    have hs := (Rat.cast_lt (K := ℝ)).2 ConcreteNewtonPacket.contraction_budget_lt_third
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using hs
  exact bound.trans rate.le

/-- This is an upper bound, not an equality with the multiplier's complex modulus. -/
theorem multiplier_norm_upper : ‖QComplex.embed ConcreteNewtonPacket.inverse‖ ≤ (29 / 20 : ℝ) := by
  calc
    _ ≤ |(QComplex.embed ConcreteNewtonPacket.inverse).re| +
        |(QComplex.embed ConcreteNewtonPacket.inverse).im| :=
      Complex.norm_le_abs_re_add_abs_im _
    _ = _ := by norm_num [QComplex.embed, ConcreteNewtonPacket.inverse]

/-- The actual-root localization now gives a lower bound for every value in the old disk.
The lower-bound expression may be nonpositive inside the inner disk; no zero-free claim follows there. -/
theorem outer_scaled_value_lower (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (2 / 3 : ℝ) * (‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ)) ≤
      ‖QComplex.embed ConcreteNewtonPacket.inverse * riemannZeta w‖ := by
  obtain ⟨root, _, located, _, _, _⟩ := local_zero_with_inner_geometry_of_source hsource
  have nested : (innerRadius : ℝ) ≤ (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    exact_mod_cast inner_radius_lt_outer.le
  have rootMember : root.1 ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using located.le.trans nested
  have bound := scaled_value_lower_on_disk riemannZeta
    (QComplex.embed ConcreteNewtonPacket.inverse) (QComplex.embed ConcreteNewtonPacket.center)
    w root.1 (ConcreteNewtonPacket.newtonRadius : ℝ) (1 / 3 : ℝ)
    root.2.1 rootMember member (fun z hz => (outer_analytic z hz).differentiableAt)
    (outer_derivative_defect hsource)
  have triangle := norm_sub_le_norm_sub_add_norm_sub w root.1
    (QComplex.embed ConcreteNewtonPacket.center)
  have separation : ‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ) ≤
      ‖w - root.1‖ := by linarith
  calc
    _ ≤ (2 / 3 : ℝ) * ‖w - root.1‖ := mul_le_mul_of_nonneg_left separation (by norm_num)
    _ ≤ _ := by norm_num only [show (1 - 1 / 3 : ℝ) = 2 / 3 by norm_num] at bound; simpa only [norm_mul] using bound

/-- A positive modulus floor outside the inner radius, with the ORIGINAL outer-domain restriction. -/
theorem outer_value_lower (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (40 / 87 : ℝ) * (‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ)) ≤
      ‖riemannZeta w‖ := by
  have bound := value_lower_of_scaled (QComplex.embed ConcreteNewtonPacket.inverse) (riemannZeta w)
    ((2 / 3 : ℝ) * (‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ)))
    (29 / 20 : ℝ) (by norm_num) (outer_scaled_value_lower hsource w member) multiplier_norm_upper
  convert bound using 1 <;> ring

/-- Positive separation on the entire original circle, before any division is taken. -/
theorem boundary_scaled_value_lower (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (1 / 250000 : ℝ) ≤ ‖QComplex.embed ConcreteNewtonPacket.inverse * riemannZeta w‖ := by
  have bound := outer_scaled_value_lower hsource w (sphere_subset_closedBall boundary)
  have distance : ‖w - QComplex.embed ConcreteNewtonPacket.center‖ =
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [mem_sphere, dist_eq_norm] using boundary
  rw [distance] at bound
  norm_num [innerRadius, ConcreteNewtonPacket.newtonRadius] at bound
  simpa only [norm_mul] using bound

/-- The multiplier norm cost is retained: the actual zeta floor is smaller than the scaled floor. -/
theorem boundary_modulus_lower (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) : (1 / 362500 : ℝ) ≤ ‖riemannZeta w‖ := by
  have bound := value_lower_of_scaled (QComplex.embed ConcreteNewtonPacket.inverse) (riemannZeta w)
    (1 / 250000 : ℝ) (29 / 20 : ℝ) (by norm_num)
    (boundary_scaled_value_lower hsource w boundary) multiplier_norm_upper
  norm_num at bound
  exact bound

/-- This is actual value nonvanishing, not nonvanishing inferred from totalized reciprocals. -/
theorem boundary_ne_zero (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) : riemannZeta w ≠ 0 :=
  norm_pos_iff.mp (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1 / 362500)
    (boundary_modulus_lower hsource w boundary))

/-- Quantitative reciprocal control uses the positive floor on this SAME boundary. -/
theorem boundary_inverse_bound (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) : ‖(riemannZeta w)⁻¹‖ ≤ (362500 : ℝ) := by
  rw [norm_inv, inv_eq_one_div]
  have bound := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
    (by norm_num : (0 : ℝ) < 1 / 362500) (boundary_modulus_lower hsource w boundary)
  norm_num at bound
  simpa only [one_div] using bound

/-- The multiplier cancels in the quotient only after scaled separation proves nonvanishing.
No extension to a large contour, integrated zero count, or regular part is asserted. -/
theorem boundary_log_derivative_bound (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖deriv riemannZeta w / riemannZeta w‖ ≤ (1000000 / 3 : ℝ) := by
  have upper : ‖QComplex.embed ConcreteNewtonPacket.inverse * deriv riemannZeta w‖ ≤ (4 / 3 : ℝ) := by
    have h := scaled_derivative_upper (QComplex.embed ConcreteNewtonPacket.inverse)
      (deriv riemannZeta w) (1 / 3 : ℝ)
      (outer_derivative_defect hsource w (sphere_subset_closedBall boundary))
    norm_num at h
    simpa only [norm_mul] using h
  have bound := (quotient_bound_of_scaled (QComplex.embed ConcreteNewtonPacket.inverse)
    (riemannZeta w) (deriv riemannZeta w) (1 / 250000 : ℝ) (4 / 3 : ℝ)
    (by norm_num) (boundary_scaled_value_lower hsource w boundary) upper).2
  norm_num at bound
  simpa only [norm_div] using bound

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonBoundary
