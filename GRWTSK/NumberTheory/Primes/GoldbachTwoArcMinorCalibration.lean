/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Calibrating the complete signed minor allowance

The same one-percent prefix input permits the weaker minor lower bound -X,
where X=N+1. The actual integral and model comparisons remain hypotheses.
No estimate for the minor integral is asserted. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration

open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
open GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
open GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer
open GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff

noncomputable section

/-- Exact real-part reconstruction exposes what any proposed minor lower
estimate demands of the actual additive coefficient. This is an identity,
not a supplier of that estimate. -/
theorem signed_minor_lower_iff_mass_lower
    {G T : ℝ} {M R I : ℂ} (hsplit : M + R + I = (G : ℂ)) :
    -T ≤ I.re ↔ M.re + R.re - T ≤ G := by
  have h := congrArg Complex.re hsplit
  simp only [Complex.add_re, Complex.ofReal_re] at h
  constructor <;> intro ht <;> linarith

/-- Specialization to the exact source decomposition, retaining its full
signed minor integral and its complete model residual. -/
theorem goldbach_signed_minor_lower_iff_logMass_lower
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (T : ℝ) :
    -T ≤ (goldbachRationalMinorContribution Q N).re ↔
      (goldbachProgressionArcModelMajorSum Q N).re +
        (goldbachArcModelResidualSum Q N (goldbachProgressionArcModel N)).re - T ≤
          goldbachLogMass N := by
  exact signed_minor_lower_iff_mass_lower
    (goldbachProgressionModel_add_residual_add_minor hscale)

/-- Exact algebra at the fixed one-percent prefix rate. -/
theorem twoArcBudget_one_percent_eq {X : ℝ} (hX : X ≠ 0) :
    goldbachTwoArcRationalBudget X (X / 100) =
      431 * X / 1000 + 127 / 10 + 30 / X := by
  unfold goldbachTwoArcRationalBudget
  field_simp [hX]
  ring

/-- A sharper use of the existing rational expression doubles the available
minor allowance. This lemma is only rational algebra. -/
theorem twoArcBudget_one_percent_le_thirteen_thirtieths
    {X : ℝ} (hX : 6000 ≤ X) :
    goldbachTwoArcRationalBudget X (X / 100) ≤ 13 * X / 30 := by
  have hXp : 0 < X := by linarith
  have hXX : 6000 * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hX) (le_of_lt hXp)]
  unfold goldbachTwoArcRationalBudget
  apply (div_le_iff₀ hXp).2
  nlinarith

/-- The normalized allowance T=X leaves a definite linear margin. -/
theorem twoArcBudget_full_minor_margin {X : ℝ} (hX : 6000 ≤ X) :
    X / 90 ≤ 13 * X / 9 - goldbachTwoArcRationalBudget X (X / 100) - X := by
  have hb := twoArcBudget_one_percent_le_thirteen_thirtieths hX
  linarith

/-- A fixed, non-tautological target for the SAME full signed minor term.
This predicate supplies no witness or estimate. -/
def GoldbachTwoArcSignedMinorSupplier (N₀ : ℕ) : Prop :=
  ∀ N, N₀ ≤ N → 2 < N → Even N →
    -(N + 1 : ℝ) ≤ (goldbachRationalMinorContribution 2 N).re

/-- Conditional quantitative conclusion with the relaxed signed-minor
allowance. All genuinely analytic bridges remain explicit. -/
theorem goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges
    (hθ : GoldbachThetaCoarseEstimates)
    {N : ℕ} (hN : goldbachThetaConservativeCutoff ≤ N) (heven : Even N)
    (hbudget : goldbachFrequencyMajorErrorBudget 2 N
      (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
        goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : 13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : -(N + 1 : ℝ) ≤ (goldbachRationalMinorContribution 2 N).re) :
    (N + 1 : ℝ) / 90 ≤ goldbachLogMass N := by
  have hNat : 400000000 ≤ N := hN
  have htwo : 2 < N := by omega
  have hscale : 2 * 2 ^ 2 < N + 1 := by omega
  have hX : (6000 : ℝ) ≤ (N + 1 : ℝ) := by
    exact_mod_cast (show 6000 ≤ N + 1 by omega)
  have hp := goldbachReducedPrefixSupplier_two_of_coarse hθ N hN htwo heven
  have hres := norm_goldbachProgressionResidualSum_le_frequency
    (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) hp
  have hmass := mass_lower_of_signed_minor_lower
    (goldbachProgressionModel_add_residual_add_minor hscale) hmodel hres hminor
  have hm := twoArcBudget_full_minor_margin hX
  linarith

theorem goldbachCount_pos_of_relaxed_two_arc_bridges
    (hθ : GoldbachThetaCoarseEstimates)
    {N : ℕ} (hN : goldbachThetaConservativeCutoff ≤ N) (heven : Even N)
    (hbudget : goldbachFrequencyMajorErrorBudget 2 N
      (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
        goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : 13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : -(N + 1 : ℝ) ≤ (goldbachRationalMinorContribution 2 N).re) :
    0 < goldbachCount N := by
  apply (goldbachLogMass_pos_iff_count_pos N).mp
  have h := goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges
    hθ hN heven hbudget hmodel hminor
  have hx : (0 : ℝ) < (N + 1 : ℝ) / 90 := by positivity
  linarith

/-- Every-even tail with a fixed independent minor allowance; no finite
coverage and no actual minor supplier is asserted. -/
theorem goldbachLogMass_lower_above_of_relaxed_two_arc_suppliers
    (hθ : GoldbachThetaCoarseEstimates)
    (hbudget : ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      goldbachFrequencyMajorErrorBudget 2 N
        (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
          goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : GoldbachTwoArcSignedMinorSupplier goldbachThetaConservativeCutoff) :
    ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      (N + 1 : ℝ) / 90 ≤ goldbachLogMass N := by
  intro N hN heven
  have hNat : 400000000 ≤ N := hN
  exact goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges hθ hN heven
    (hbudget N hN heven) (hmodel N hN heven) (hminor N hN (by omega) heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration
