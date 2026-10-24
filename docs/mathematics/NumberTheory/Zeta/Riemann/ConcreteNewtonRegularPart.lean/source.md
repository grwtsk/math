# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52a3c7faf015ce0085c70c6188fa42c470f0f5ca` · SHA-256 `3dcf1277d3b03853b028580d6b033ad93652ea83dee2ea7c7f07953d1f3cf992`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundary
import GRWTSK.Analysis.Complex.ContractiveLogDerivativeRemainder

set_option autoImplicit false

/-!
# A bounded pole-subtracted quotient for the same concrete zeta packet

The original source-acceptance premise remains OPEN. Whole-OUTER-disk curvature
21952 and correction defect <= 1/3, with |a| <= 29/20, give

  |zeta'(w)/zeta(w) - 1/(w-rho)| <= 238728/5

at every point of the original closed disk other than its ACTUAL zero rho.
The constant is independent of |w-rho|. It does not define the expression at
rho, prove a removable extension there, or give a global regular-part bound.

The original local zero, exact line equality, derivative nonvanishing, inner
localization and outer uniqueness are retained. No smaller source error,
additional evaluation or independent zero family is introduced. On the outer
circle only, replacing rho by the original center has cost <= 200000/3.
The resulting centered comparison bound is 1716184/15. The center is NOT
asserted to be a zero, nor is the centered expression regular at that center.

No contour integral, winding number or complete height count is evaluated.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / SOURCE_ACCEPTANCE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonRegularPart

open Set Metric
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.ContractiveLogDerivativeRemainder
open CanonicalZeroDivisor ConcreteNewtonLocalization ConcreteNewtonBoundary

noncomputable section

/-- Reuse the actual cubic/Cauchy source on the entire ORIGINAL outer disk. -/
theorem outer_curvature (w : ℂ)
    (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖deriv (deriv riemannZeta) w‖ ≤ (21952 : ℝ) := by
  have subset := RationalNewtonWitness.geometry_subset ConcreteNewtonPacket.chart true
    ConcreteNewtonPacket.newtonData ConcreteNewtonPacket.newton_admissible.1
  have bound := ZetaDiskCurvature.norm_zeta_second_le ConcreteNewtonPacket.chart
    ConcreteNewtonPacket.newton_admissible.1.1 _ w
    (RationalNewtonWitness.chartCenter_spec ConcreteNewtonPacket.chart true) (subset member)
  norm_num [ConcreteNewtonPacket.chart] at bound
  exact bound

/-- The bound is uniform on the punctured outer disk, not obtained by dividing
only the boundary modulus floor. The SAME root is used in the subtracted pole. -/
theorem outer_pole_subtracted_bound (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (root : ZeroPoint)
    (rootMember : root.1 ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ))
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) (distinct : w ≠ root.1) :
    riemannZeta w ≠ 0 ∧
      ‖deriv riemannZeta w / riemannZeta w - 1 / (w - root.1)‖ ≤ (238728 / 5 : ℝ) := by
  have bound := pole_subtracted_bound riemannZeta
    (QComplex.embed ConcreteNewtonPacket.inverse) (QComplex.embed ConcreteNewtonPacket.center)
    w root.1 (ConcreteNewtonPacket.newtonRadius : ℝ) (1 / 3 : ℝ) (21952 : ℝ)
    (by norm_num) (by norm_num) outer_analytic (outer_derivative_defect hsource)
    outer_curvature root.2.1 rootMember member distinct
  have coefficient : ‖QComplex.embed ConcreteNewtonPacket.inverse‖ * (21952 : ℝ) /
      (1 - 1 / 3) ≤ (238728 / 5 : ℝ) := by
    calc
      _ ≤ (29 / 20 : ℝ) * 21952 / (1 - 1 / 3) :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_right multiplier_norm_upper (by norm_num)) (by norm_num)
      _ = _ := by norm_num
  exact ⟨bound.1, bound.2.trans coefficient⟩

/-- Membership is transported by the proved radius comparison, not by a new root choice. -/
private theorem root_member_of_inner (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ)) :
    root.1 ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
  have nested : (innerRadius : ℝ) ≤ (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    exact_mod_cast inner_radius_lt_outer.le
  simpa only [mem_closedBall, dist_eq_norm] using located.le.trans nested

/-- Preserve the existing local witness and its full outer uniqueness region.
The extra conclusion is a uniform punctured-disk bound about that very witness. -/
theorem local_zero_with_regular_bound (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ root : ZeroPoint, root.1.re = 1 / 2 ∧
      ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      deriv riemannZeta root.1 ≠ 0 ∧
      (∀ w : ZeroPoint, ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) → w = root) ∧
      (∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
        (ConcreteNewtonPacket.newtonRadius : ℝ), w ≠ root.1 → riemannZeta w ≠ 0 ∧
          ‖deriv riemannZeta w / riemannZeta w - 1 / (w - root.1)‖ ≤ (238728 / 5 : ℝ)) := by
  obtain ⟨root, onLine, located, _, derivativeNonzero, unique⟩ :=
    local_zero_with_inner_geometry_of_source hsource
  refine ⟨root, onLine, located, derivativeNonzero, unique, ?_⟩
  exact outer_pole_subtracted_bound hsource root (root_member_of_inner root located)

/-- Boundary separation from the ACTUAL root uses the independently retained inner location. -/
theorem boundary_root_distance (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ))
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) : (3 / 500000 : ℝ) ≤ ‖w - root.1‖ := by
  have distance : ‖w - QComplex.embed ConcreteNewtonPacket.center‖ =
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [mem_sphere, dist_eq_norm] using boundary
  have triangle := norm_sub_le_norm_sub_add_norm_sub w root.1
    (QComplex.embed ConcreteNewtonPacket.center)
  rw [distance] at triangle
  norm_num [innerRadius] at located
  norm_num [ConcreteNewtonPacket.newtonRadius] at triangle
  linarith

/-- A numerical center is not a zero. Moving the pole to it has an explicit cost
on the SAME boundary, even if the original pole-subtracted expression is small. -/
theorem boundary_pole_location_cost (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ))
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖1 / (w - root.1) - 1 / (w - QComplex.embed ConcreteNewtonPacket.center)‖ ≤
      (200000 / 3 : ℝ) := by
  have distance : ‖w - QComplex.embed ConcreteNewtonPacket.center‖ = (1 / 100000 : ℝ) := by
    simpa [mem_sphere, dist_eq_norm, ConcreteNewtonPacket.newtonRadius] using boundary
  have gap := boundary_root_distance root located w boundary
  have notRoot : w ≠ root.1 := sub_ne_zero.mp
    (norm_pos_iff.mp ((by norm_num : (0 : ℝ) < 3 / 500000).trans_le gap))
  have notCenter : w ≠ QComplex.embed ConcreteNewtonPacket.center := by
    intro equal
    rw [equal, sub_self, norm_zero] at distance
    norm_num at distance
  have location : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤ (1 / 250000 : ℝ) := by
    simpa [innerRadius] using located.le
  rw [pole_location_difference w root.1 (QComplex.embed ConcreteNewtonPacket.center)
    notRoot notCenter, distance]
  calc
    _ ≤ (1 / 250000 : ℝ) / (‖w - root.1‖ * (1 / 100000)) :=
      div_le_div_of_nonneg_right location (mul_nonneg (norm_nonneg _) (by norm_num))
    _ ≤ (1 / 250000 : ℝ) / ((3 / 500000) * (1 / 100000)) :=
      div_le_div_of_nonneg_left (by norm_num) (by norm_num)
        (mul_le_mul_of_nonneg_right gap (by norm_num))
    _ = _ := by norm_num

/-- A fully specified rational-center comparison on the outer circle. The root
is supplied by the original conditional theorem; its displacement is not erased. -/
theorem boundary_centered_quotient_bound (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (boundary : w ∈ sphere (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖deriv riemannZeta w / riemannZeta w -
      1 / (w - QComplex.embed ConcreteNewtonPacket.center)‖ ≤ (1716184 / 15 : ℝ) := by
  obtain ⟨root, _, located, _, _, _⟩ := local_zero_with_inner_geometry_of_source hsource
  have gap := boundary_root_distance root located w boundary
  have distinct : w ≠ root.1 := sub_ne_zero.mp
    (norm_pos_iff.mp ((by norm_num : (0 : ℝ) < 3 / 500000).trans_le gap))
  have regular := (outer_pole_subtracted_bound hsource root (root_member_of_inner root located)
    w (sphere_subset_closedBall boundary) distinct).2
  have shift := boundary_pole_location_cost root located w boundary
  have triangle := norm_sub_le_norm_sub_add_norm_sub (deriv riemannZeta w / riemannZeta w)
    (1 / (w - root.1)) (1 / (w - QComplex.embed ConcreteNewtonPacket.center))
  linarith

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonRegularPart
```
