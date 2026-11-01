/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.TwoThirdsPrismaticOrientationGate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ReflectionMultiplicityBudget
import Mathlib

/-!
# Exact Montgomery--Taylor count thresholds and numerical RH certification

Use the existing canonical nontrivial Riemann-zeta zero subtype and its
actual analytic multiplicity. Anthropic's independent zeta23 source supplies
the optimized dyadic simple-line and distinct percentages asymptotically,
not at arbitrary finite heights. The two rational inequalities below are
EXPLICIT pointwise premises, not locally proved external input.

The true numeric RHThrough and positiveHeightCount credit consumers already
exist elsewhere in this repository. No new numerical zero inventory, global
RH conclusion, random-sign axiom, or all-height arithmetic supplier is added.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.AnthropicMontgomeryTaylorNumericalGate

open CanonicalZeroDivisor
open TwoThirdsCanonicalMultiplicityBridge
open TwoThirdsPrismaticOrientationGate
open PositiveHeightCountDeficit
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget

/-- Rational thresholds strictly below the optimized external constants.
These are NOT globally asserted at small T or below the paper's unknown
eventual threshold. -/
def RationalMontgomeryTaylorAt (T : ℝ) : Prop :=
  269 * dyadicCount T ≤ 400 * dyadicSimpleLineCount T ∧
  669 * dyadicCount T ≤ 800 * dyadicDistinctCount T

/-- Every non-simple-or-off-line multiplicity is retained. -/
theorem residual_fourhundred_le_onehundredthirtyone (T : ℝ)
    (h : 269 * dyadicCount T ≤ 400 * dyadicSimpleLineCount T) :
    400 * dyadicResidualMass T ≤ 131 * dyadicCount T := by
  have hpart :
      dyadicCount T = dyadicSimpleLineCount T + dyadicResidualMass T := by
    simpa only [dyadicSimpleLineMass_eq_count] using
      dyadicCount_eq_simpleLineMass_add_residualMass T
  omega

/-- Distinct-zero information independently controls multiplicity excess. -/
theorem excess_eighthundred_le_onehundredthirtyone (T : ℝ)
    (h : 669 * dyadicCount T ≤ 800 * dyadicDistinctCount T) :
    800 * dyadicMultiplicityExcess T ≤ 131 * dyadicCount T := by
  have hpart := dyadicCount_eq_distinct_add_excess T
  omega

theorem residual_le_one_of_at_most_six (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (hsmall : dyadicCount T ≤ 6) :
    dyadicResidualMass T ≤ 1 := by
  have hb := residual_fourhundred_le_onehundredthirtyone T h.1
  omega

theorem multiplicityExcess_eq_zero_of_at_most_six (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (hsmall : dyadicCount T ≤ 6) :
    dyadicMultiplicityExcess T = 0 := by
  have hb := excess_eighthundred_le_onehundredthirtyone T h.2
  omega

/-- Reflection is the actual zeta-functional-equation reflection, not
a toy residue-label involution. It preserves the dyadic height window. -/
theorem reflected_mem_dyadicHead (T : ℝ)
    (z : ZeroPoint) (hz : z ∈ dyadicHead T) :
    reflected z ∈ dyadicHead T := by
  classical
  have hm : z ∈ positiveHeightHead (2 * T) :=
    (Finset.mem_filter.mp hz).1
  have hT : T < z.1.im :=
    (Finset.mem_filter.mp hz).2
  have hm' := reflected_mem_positiveHeightHead (2 * T) z hm
  apply Finset.mem_filter.mpr
  refine ⟨hm', ?_⟩
  simpa [reflected, criticalReflection] using hT

theorem reflected_offLine (z : ZeroPoint)
    (hoff : z.1.re ≠ 1 / 2) : (reflected z).1.re ≠ 1 / 2 := by
  intro h
  apply hoff
  have hre : (reflected z).1.re = 1 - z.1.re := by
    simp [reflected, criticalReflection]
  rw [hre] at h
  linarith

/-- An off-line point and its reflected mate would cost at least two
positive residual multiplicity units, contradicting the <=1 allowance. -/
theorem every_zero_on_line_of_at_most_six (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (hsmall : dyadicCount T ≤ 6) :
    ∀ z ∈ dyadicHead T, z.1.re = 1 / 2 := by
  classical
  intro z hz
  by_contra hoff
  have hzres : z ∈ dyadicResidualHead T := by
    apply Finset.mem_filter.mpr
    exact ⟨hz, fun hs => hoff hs.1⟩
  have href : reflected z ∈ dyadicResidualHead T :=
    Finset.mem_filter.mpr
      ⟨reflected_mem_dyadicHead T z hz,
       fun hs => reflected_offLine z hoff hs.1⟩
  have hcount :
      mass (dyadicResidualHead T) multiplicity ≤ 1 := by
    change dyadicResidualMass T ≤ 1
    exact residual_le_one_of_at_most_six T h hsmall
  have hleft : 1 ≤ multiplicity z := by
    have := multiplicity_pos z
    omega
  have hright : 1 ≤ multiplicity (reflected z) := by
    have := multiplicity_pos (reflected z)
    omega
  have hline := critical_line_of_finite_pair_bounds
    (dyadicResidualHead T) z 1 1 1 hzres href
    hleft hright hcount (by omega)
  exact hoff hline

/-- Zero total excess and positive canonical multiplicity force each
actual zero to be simple. -/
theorem every_zero_simple_of_at_most_six (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (hsmall : dyadicCount T ≤ 6) :
    ∀ z ∈ dyadicHead T, multiplicity z = 1 := by
  classical
  intro z hz
  have he := multiplicityExcess_eq_zero_of_at_most_six T h hsmall
  have hterm :
      multiplicity z - 1 ≤ dyadicMultiplicityExcess T := by
    change multiplicity z - 1 ≤
      ∑ w ∈ dyadicHead T, (multiplicity w - 1)
    exact Finset.single_le_sum (fun w hw => Nat.zero_le _) hz
  have hpos := multiplicity_pos z
  omega

theorem every_zero_simple_on_line_of_at_most_six (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (hsmall : dyadicCount T ≤ 6) :
    ∀ z ∈ dyadicHead T,
      z.1.re = 1 / 2 ∧ multiplicity z = 1 := by
  intro z hz
  exact ⟨every_zero_on_line_of_at_most_six T h hsmall z hz,
    every_zero_simple_of_at_most_six T h hsmall z hz⟩

/-- Necessarily at least seven multiplicity units to admit an off-line
reflected pair under these pointwise rational inequalities. -/
theorem seven_le_count_of_offLine (T : ℝ)
    (h : RationalMontgomeryTaylorAt T)
    (z : ZeroPoint) (hz : z ∈ dyadicHead T)
    (hoff : z.1.re ≠ 1 / 2) :
    7 ≤ dyadicCount T := by
  by_contra hnot
  have hsmall : dyadicCount T ≤ 6 := by omega
  exact hoff (every_zero_on_line_of_at_most_six T h hsmall z hz)

/-- Abstract arithmetic countermodel only: seven labels, five favorable,
two exceptional, no multiplicity excess. Not actual zeta zero records. -/
theorem seven_label_hostile_ratio_fixture :
    269 * 7 ≤ 400 * 5 ∧
    669 * 7 ≤ 800 * 7 ∧
    5 + 2 = 7 := by
  norm_num

/-- Certifying a finite height does not exclude off-line zeros higher up. -/
theorem remaining_offLine_above_checked_height
    (H : ℕ) (hchecked : RHThrough H) (z : ZeroPoint)
    (hoff : z.1.re ≠ 1 / 2) :
    (H : ℝ) < height z := by
  by_contra h
  have hheight : height z ≤ (H : ℝ) := le_of_not_gt h
  exact hoff (hchecked z.1 z.2 hheight)

/-- A separately supplied zero-free right half-plane and actual
functional-equation reflection give a closed symmetric strip. -/
theorem strip_of_right_halfplane_supplier
    (θ : ℝ) (hupper : ∀ z : ZeroPoint, z.1.re ≤ θ)
    (z : ZeroPoint) :
    1 - θ ≤ z.1.re ∧ z.1.re ≤ θ := by
  have hr := hupper z
  have hs := hupper (reflected z)
  have hre : (reflected z).1.re = 1 - z.1.re := by
    simp [reflected, criticalReflection]
  rw [hre] at hs
  constructor <;> linarith

/-- Combined numerical-height and zero-free-horizontal localization.
The hypotheses are independent, visible suppliers; RH is not concluded. -/
theorem unchecked_offLine_localization
    (H : ℕ) (θ : ℝ) (hchecked : RHThrough H)
    (hupper : ∀ z : ZeroPoint, z.1.re ≤ θ)
    (z : ZeroPoint) (hoff : z.1.re ≠ 1 / 2) :
    (H : ℝ) < height z ∧ 1 - θ ≤ z.1.re ∧ z.1.re ≤ θ := by
  exact ⟨remaining_offLine_above_checked_height H hchecked z hoff,
    (strip_of_right_halfplane_supplier θ hupper z).1,
    (strip_of_right_halfplane_supplier θ hupper z).2⟩

end GRWTSK.RiemannHypothesis.AnthropicMontgomeryTaylorNumericalGate
