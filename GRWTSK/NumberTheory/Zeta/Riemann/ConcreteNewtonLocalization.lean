/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonCriticalLine

set_option autoImplicit false

/-!
# Smaller local enclosure with the same concrete arithmetic source

The original joint SourceAcceptance, center, multiplier, value, slope, returned
errors and evaluation schedules remain unchanged. Only a NEW Newton-domain
radius is proposed, and the complete inherited admissibility test is proved
again at that radius. The original packet is not modified. This is not the
unsound inference that shrinking a disk automatically retains its zero.

The actual-zero theorem supplies a witness in the smaller disk and its retained
posterior bound Y/(1-q). Uniqueness in the original larger disk identifies that
witness with every original local witness. The new radius is therefore valid
for every canonical zero in the original disk, conditional on the ORIGINAL
SourceAcceptance. The original outer uniqueness region is not weakened.

The strict self-map slack proves the posterior radius is strictly less than
1/250000. This gives a smaller height interval and an empty annular region
inside the original disk. No source error is reduced, and no zero outside the
original disk is excluded. SourceAcceptance, inherited elaboration and trust
obligations remain open. These are source proof candidates, not executed Lean
checks, validated numerical enclosures, first-zero ordering or an RH result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / SOURCE_ACCEPTANCE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonLocalization

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open CanonicalZeroDivisor ConcreteNewtonCriticalLine

/-- A new local domain, not a replacement for any source-evaluation radius. -/
def innerRadius : ℚ := 1 / 250000

/-- All center data and both complete returned errors come from the original packet. -/
def innerData : RationalNewtonWitness.Data :=
  VerifiedRationalNewtonCenter.newtonData ConcreteNewtonPacket.center innerRadius
    ConcreteNewtonPacket.inverse ConcreteNewtonPacket.claimed

/-- Every field except the local domain radius is definitionally identical. -/
theorem innerData_eq_radius_update :
    innerData = { ConcreteNewtonPacket.newtonData with radius := innerRadius } := rfl

/-- The enclosure proposition has no radius dependence and is not weakened. -/
theorem inner_center_enclosures_iff :
    RationalNewtonWitness.CenterEnclosures innerData ↔
      RationalNewtonWitness.CenterEnclosures ConcreteNewtonPacket.newtonData := Iff.rfl

/-- Changing the Newton domain cannot reduce the center residual error budget. -/
theorem inner_residual_budget_eq :
    RationalNewtonWitness.residualBudget innerData =
      RationalNewtonWitness.residualBudget ConcreteNewtonPacket.newtonData := rfl

theorem inner_radius_positive : 0 < innerRadius := by norm_num [innerRadius]

theorem inner_radius_lt_outer : innerRadius < ConcreteNewtonPacket.newtonRadius := by
  norm_num [innerRadius, ConcreteNewtonPacket.newtonRadius]

/-- Repeat every geometry, sign, inverse, contraction and self-map check.
This small rational proof does not prove the much larger source-acceptance equality. -/
theorem inner_admissible :
    RationalNewtonWitness.Admissible ConcreteNewtonPacket.chart true innerData := by
  norm_num [RationalNewtonWitness.Admissible, RationalNewtonWitness.Geometry,
    RationalNewtonWitness.chartCenter, RationalNewtonWitness.curvature,
    RationalNewtonWitness.residualBudget, RationalNewtonWitness.defectBudget,
    innerData, innerRadius, VerifiedRationalNewtonCenter.newtonData,
    ConcreteNewtonPacket.center, ConcreteNewtonPacket.inverse, ConcreteNewtonPacket.chart,
    ConcreteNewtonPacket.claimed, QComplex.rect, QComplex.normSq, QComplex.sub,
    QComplex.mul, QComplex.one]

theorem inner_accepts :
    RationalNewtonWitness.verify ConcreteNewtonPacket.chart true innerData = true :=
  (RationalNewtonWitness.verify_iff _ _ _).mpr inner_admissible

/-- A strictly positive self-map margin survives with the ORIGINAL returned errors. -/
theorem inner_self_map_slack : (1 / 100000000 : ℚ) < innerRadius -
    RationalNewtonWitness.residualBudget innerData -
    RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData * innerRadius := by
  norm_num [innerRadius, innerData, VerifiedRationalNewtonCenter.newtonData,
    RationalNewtonWitness.residualBudget, RationalNewtonWitness.defectBudget,
    RationalNewtonWitness.curvature, ConcreteNewtonPacket.inverse, ConcreteNewtonPacket.claimed,
    ConcreteNewtonPacket.chart, QComplex.rect, QComplex.sub, QComplex.mul, QComplex.one]

/-- Merely requesting a still smaller radius need not preserve the self-map budget.
The guard must be rechecked even when the center and all source data are unchanged. -/
theorem over_shrunk_radius_rejected :
    RationalNewtonWitness.verify ConcreteNewtonPacket.chart true
      (VerifiedRationalNewtonCenter.newtonData ConcreteNewtonPacket.center (1 / 1000000)
        ConcreteNewtonPacket.inverse ConcreteNewtonPacket.claimed) = false := by
  norm_num [RationalNewtonWitness.verify, RationalNewtonWitness.Admissible,
    RationalNewtonWitness.Geometry, RationalNewtonWitness.chartCenter,
    RationalNewtonWitness.curvature, RationalNewtonWitness.residualBudget,
    RationalNewtonWitness.defectBudget, VerifiedRationalNewtonCenter.newtonData,
    ConcreteNewtonPacket.center, ConcreteNewtonPacket.inverse, ConcreteNewtonPacket.chart,
    ConcreteNewtonPacket.claimed, QComplex.rect, QComplex.normSq, QComplex.sub,
    QComplex.mul, QComplex.one]

noncomputable section

/-- Use the original joint verifier to establish the same actual center facts. -/
theorem inner_center_enclosures_of_source
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    RationalNewtonWitness.CenterEnclosures innerData :=
  VerifiedRationalNewtonCenter.centerEnclosures_of_verified
    ConcreteNewtonPacket.prefixLength ConcreteNewtonPacket.center ConcreteNewtonPacket.plan
    ConcreteNewtonPacket.valueTolerance ConcreteNewtonPacket.slopeTolerance innerRadius
    ConcreteNewtonPacket.inverse ConcreteNewtonPacket.claimed hsource

/-- Strict self-map slack implies a strictly interior posterior bound.
The denominator is proved positive before division is used. -/
theorem inner_posterior_lt_radius :
    (RationalNewtonWitness.residualBudget innerData : ℝ) /
      (1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ)) <
        (innerRadius : ℝ) := by
  have rate : (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ) < 1 := by
    exact_mod_cast inner_admissible.2.2.2.2.1
  have slack : (1 / 100000000 : ℝ) < (innerRadius : ℝ) -
      (RationalNewtonWitness.residualBudget innerData : ℝ) -
      (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ) *
        (innerRadius : ℝ) := by
    have hs := (Rat.cast_lt (K := ℝ)).2 inner_self_map_slack
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat, Rat.cast_sub, Rat.cast_mul] using hs
  apply (div_lt_iff₀ (by linarith : (0 : ℝ) <
    1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ))).mpr
  nlinarith

/-- The smaller witness is identified with the ORIGINAL local zero by outer uniqueness.
The full posterior bound and original outer uniqueness region are both retained. -/
theorem local_zero_with_inner_geometry_of_source
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ z : ZeroPoint, z.1.re = 1 / 2 ∧
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (RationalNewtonWitness.residualBudget innerData : ℝ) /
          (1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ)) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint,
        ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
          (ConcreteNewtonPacket.newtonRadius : ℝ) → w = z := by
  obtain ⟨z, located, posterior, derivativeNonzero, _⟩ :=
    RationalNewtonWitness.exists_zero ConcreteNewtonPacket.chart true innerData
      inner_accepts (inner_center_enclosures_of_source hsource)
  change ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤ (innerRadius : ℝ) at located
  change ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
    (RationalNewtonWitness.residualBudget innerData : ℝ) /
      (1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ)) at posterior
  have nested : (innerRadius : ℝ) ≤ (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    exact_mod_cast inner_radius_lt_outer.le
  obtain ⟨original, _, _, onLine, unique⟩ := local_zero_on_line_of_source_acceptance hsource
  have same : z = original := unique z (located.trans nested)
  refine ⟨z, ?_, posterior.trans_lt inner_posterior_lt_radius, posterior, derivativeNonzero, ?_⟩
  · simpa only [same] using onLine
  · intro w hw
    exact (unique w hw).trans same.symm

/-- Every zero in the original disk, not just an independently chosen inner witness, is localized. -/
theorem every_outer_zero_in_inner_disk
    (hsource : ConcreteNewtonPacket.SourceAcceptance) (w : ZeroPoint)
    (located : ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) := by
  obtain ⟨z, _, inner, _, _, unique⟩ := local_zero_with_inner_geometry_of_source hsource
  simpa only [unique w located] using inner

/-- Exclusion is bounded by the original disk and includes the inner boundary.
A smaller radius is justified by a new self-map proof plus identity of the actual zero. -/
theorem no_zero_in_outer_annulus
    (hsource : ConcreteNewtonPacket.SourceAcceptance) (s : ℂ)
    (zero : NontrivialZetaZero s)
    (outer : ‖s - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ))
    (outsideInner : (innerRadius : ℝ) ≤ ‖s - QComplex.embed ConcreteNewtonPacket.center‖) : False :=
  (not_lt_of_ge outsideInner) (every_outer_zero_in_inner_disk hsource ⟨s, zero⟩ outer)

/-- Strict rational height bounds from the newly justified radius, not rounded sample values. -/
theorem imaginary_interval_of_inner_location (s : ℂ)
    (located : ‖s - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ)) :
    (7067360571 / 500000000 : ℝ) < s.im ∧
      s.im < (7067364571 / 500000000 : ℝ) := by
  have vertical : |s.im - (QComplex.embed ConcreteNewtonPacket.center).im| < (innerRadius : ℝ) := by
    simpa only [Complex.sub_im] using
      (Complex.abs_im_le_norm (s - QComplex.embed ConcreteNewtonPacket.center)).trans_lt located
  have bounds := abs_lt.mp vertical
  norm_num [QComplex.embed, ConcreteNewtonPacket.center, innerRadius] at bounds
  constructor <;> linarith [bounds.1, bounds.2]

/-- Local exact geometry under the ORIGINAL source-acceptance premise, with outer uniqueness retained. -/
theorem local_zero_with_refined_interval_of_source
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ z : ZeroPoint, z.1.re = 1 / 2 ∧
      (7067360571 / 500000000 : ℝ) < z.1.im ∧
      z.1.im < (7067364571 / 500000000 : ℝ) ∧
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint,
        ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
          (ConcreteNewtonPacket.newtonRadius : ℝ) → w = z := by
  obtain ⟨z, onLine, inner, _, derivativeNonzero, unique⟩ :=
    local_zero_with_inner_geometry_of_source hsource
  have interval := imaginary_interval_of_inner_location z.1 inner
  exact ⟨z, onLine, interval.1, interval.2, inner, derivativeNonzero, unique⟩

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonLocalization
