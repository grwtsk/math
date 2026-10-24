/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite disjoint expansion of the Goldbach rational major contribution

Under the explicit sufficient scale condition

`2 * Q^2 < N + 1`,

the concrete clipped rational major region is a finite pairwise-disjoint union.
Its signed Goldbach contribution is therefore the exact finite sum of the
individual clipped-arc contributions.

This is a geometric and measure-theoretic expansion. It supplies no estimate
for any individual arc, no major-arc approximation, no singular-series tail,
no minor-arc bound, and no Goldbach theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion

open scoped BigOperators Real
open Set Function MeasureTheory
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- One periodized rational arc clipped to the exact unit integration domain. -/
def goldbachClippedRationalArc
    (Q N : ℕ) (aq : ℕ × ℕ) : Set ℝ :=
  Set.Ioc 0 1 ∩
    goldbachPeriodizedRationalArc Q N aq.1 aq.2

/-- Every individual clipped rational arc is measurable. -/
theorem measurable_goldbachClippedRationalArc
    (Q N : ℕ) (aq : ℕ × ℕ) :
    MeasurableSet (goldbachClippedRationalArc Q N aq) := by
  exact measurableSet_Ioc.inter
    (measurable_goldbachPeriodizedRationalArc
      Q N aq.1 aq.2)

/-- The concrete major set is exactly the finite union of its clipped
individual arcs. -/
theorem goldbachRationalMajorArcSet_eq_biUnion_clipped
    (Q N : ℕ) :
    goldbachRationalMajorArcSet Q N =
      ⋃ aq ∈ goldbachRationalArcIndices Q,
        goldbachClippedRationalArc Q N aq := by
  ext x
  simp only [goldbachRationalMajorArcSet,
    goldbachMajorArcSet,
    goldbachRationalMajorRegion,
    goldbachClippedRationalArc,
    Set.mem_inter_iff, Set.mem_iUnion]
  aesop

/-- Clipping preserves pairwise disjointness of the raw family. -/
theorem goldbachClippedRationalArcs_pairwiseDisjoint
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    Set.Pairwise (↑(goldbachRationalArcIndices Q) : Set (ℕ × ℕ))
      (Disjoint on goldbachClippedRationalArc Q N) := by
  intro aq haq bq hbq hne
  refine Set.disjoint_left.2 ?_
  intro x hx hy
  exact Set.disjoint_left.1
    (goldbachPeriodizedRationalArcs_pairwiseDisjoint hscale
      haq hbq hne)
    hx.2 hy.2

/-- The exact circle integrand is integrable on every clipped rational arc. -/
theorem integrableOn_goldbachCircleIntegrand_clipped
    (Q N : ℕ) (aq : ℕ × ℕ) :
    IntegrableOn (goldbachCircleIntegrand N)
      (goldbachClippedRationalArc Q N aq) := by
  exact (integrableOn_goldbachCircleIntegrand_unit N).mono_set
    Set.inter_subset_left

/-- The signed contribution from one clipped periodized rational arc. -/
def goldbachSingleRationalArcContribution
    (Q N : ℕ) (aq : ℕ × ℕ) : ℂ :=
  ∫ x in goldbachClippedRationalArc Q N aq,
    goldbachCircleIntegrand N x

/-- Under the explicit separation scale, the rational major contribution is
the finite sum of its individual signed arc contributions. -/
theorem goldbachRationalMajorContribution_eq_sum
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalMajorContribution Q N =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq := by
  change
    (∫ x in goldbachRationalMajorArcSet Q N,
      goldbachCircleIntegrand N x) =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        ∫ x in goldbachClippedRationalArc Q N aq,
          goldbachCircleIntegrand N x
  rw [goldbachRationalMajorArcSet_eq_biUnion_clipped]
  exact integral_biUnion_finset
    (goldbachRationalArcIndices Q)
    (fun aq haq =>
      measurable_goldbachClippedRationalArc Q N aq)
    (goldbachClippedRationalArcs_pairwiseDisjoint hscale)
    (fun aq haq =>
      integrableOn_goldbachCircleIntegrand_clipped Q N aq)

/-- The exact major/minor identity with the major term expanded into the
finite disjoint rational-arc sum. -/
theorem goldbachRationalArcSum_add_minor_eq_logMass
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq) +
        goldbachRationalMinorContribution Q N =
      (GRWTSK.NumberTheory.Primes.GoldbachWeighted.goldbachLogMass N : ℂ) := by
  rw [← goldbachRationalMajorContribution_eq_sum hscale]
  exact goldbachRationalMajor_add_minor_eq_logMass Q N

/-- A lower bound for the finite signed major sum that beats the complete
minor norm yields positivity of the existing exact Goldbach count. -/
theorem goldbachCount_pos_of_rational_arc_sum_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (mainLower minorError : ℝ)
    (hmain :
      mainLower ≤
        (∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachSingleRationalArcContribution Q N aq).re)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : minorError < mainLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_rational_arc_bounds
    (Q := Q) (N := N) mainLower minorError
  · rw [goldbachRationalMajorContribution_eq_sum hscale]
    exact hmain
  · exact hminor
  · exact hmargin

/-- The finite-local-main consumer with the concrete major contribution
expanded as an exact finite arc sum. The arc and local-factor cutoffs remain
independent, and both errors are charged once. -/
theorem goldbachCount_pos_of_rational_arc_sum_truncated_certificate
    {arcQ localQ N : ℕ}
    (hscale : 2 * arcQ ^ 2 < N + 1)
    (scale localError minorError : ℝ)
    (hmajorLower :
      goldbachTruncatedMainScale localQ N scale - localError ≤
        (∑ aq ∈ goldbachRationalArcIndices arcQ,
          goldbachSingleRationalArcContribution arcQ N aq).re)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤ minorError)
    (hmargin :
      localError + minorError <
        goldbachTruncatedMainScale localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_rational_truncated_certificate
    (arcQ := arcQ) (localQ := localQ) (N := N)
    scale localError minorError
  · rw [goldbachRationalMajorContribution_eq_sum hscale]
    exact hmajorLower
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
