import ActualMoebiusSqrtLower
import ActualFullKappaNumericBounds
import ActualEarlyLowerBound

/-!
Replacing the actual Moebius signs by absolute values creates a growing
leading-plus-head budget. The true floor cutoff, genuine full-positive kappa
coefficient and actual signed early head are retained. This does not claim
unboundedness of the actual signed leading expression or complementary tail.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open scoped BigOperators
open FormalResearch.RiemannHypothesis
open SourceFullPositiveKappa SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel

noncomputable section

/-- The actual absolute arithmetic mass retains every positive atom through floor A². -/
theorem actualMoebiusSqrtMass_lower_at_source_cutoff {A : ℝ} (hA : 25600 ≤ A) :
    (11 / 18 : ℝ) * (Real.sqrt (vaughanCutoff A : ℝ) - 1) ≤
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ) := by
  have hf : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) := (Nat.sub_one_lt_floor (A ^ 2)).le
  have hU : 36 ≤ vaughanCutoff A := by
    exact_mod_cast (show (36 : ℝ) ≤ (vaughanCutoff A : ℝ) by nlinarith)
  exact actualMoebiusSqrtMass_lower hU

/-- The unsigned replacement of the genuine leading term, joined to the actual early head. -/
def actualUnsignedLeadingPlusHead (A : ℝ) : ℝ :=
  fullPositiveKappa 1 *
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) +
      complementaryEarlyBaseline A

/-- Losing the actual Moebius signs already defeats the full proved negative linear head. -/
theorem actualUnsignedLeadingPlusHead_lower {A : ℝ} (hA : 25600 ≤ A) :
    (2 / 9 : ℝ) * A - 35 / 6 ≤ actualUnsignedLeadingPlusHead A := by
  have hm := actualMoebiusSqrtMass_lower_at_source_cutoff hA
  have hs := actualCutoff_sqrt_lower hA
  have he := complementaryEarlyBaseline_lower_neg_scale_sub_four hA
  have hmass : 0 ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d| / Real.sqrt (d : ℝ) := by
    apply Finset.sum_nonneg
    intro d _
    exact div_nonneg (abs_nonneg _) (Real.sqrt_nonneg _)
  have hk := mul_le_mul_of_nonneg_right actualFullPositiveKappa_one_bounds.1 hmass
  have hb := mul_le_mul_of_nonneg_left hm (show (0 : ℝ) ≤ 2 by norm_num)
  unfold actualUnsignedLeadingPlusHead
  linarith

/-- The genuine unsigned leading-plus-head budget diverges along real source scales. -/
theorem actualUnsignedLeadingPlusHead_tendsto_atTop :
    Tendsto actualUnsignedLeadingPlusHead atTop atTop := by
  apply tendsto_atTop.2
  intro b
  filter_upwards [eventually_ge_atTop (max (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6)))]
    with A hA
  have hscale := (le_max_left (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6))).trans hA
  have hlin := (le_max_right (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6))).trans hA
  have hlower := actualUnsignedLeadingPlusHead_lower hscale
  linarith

/-- No fixed-radius uniform upper witness exists for this unsigned replacement. -/
theorem actualUnsignedLeadingPlusHead_no_uniform_upper (R : ℝ) :
    ¬∃ K : ℝ, ∀ A : ℝ, R ≤ A → actualUnsignedLeadingPlusHead A ≤ K := by
  rintro ⟨K, hK⟩
  have he := actualUnsignedLeadingPlusHead_tendsto_atTop.eventually_ge_atTop (K + 1)
  have hR := eventually_ge_atTop R
  obtain ⟨A, hA, hRA⟩ := (he.and hR).exists
  have hk := hK A hRA
  linarith

end
end RH16IndependentChallengeNext
