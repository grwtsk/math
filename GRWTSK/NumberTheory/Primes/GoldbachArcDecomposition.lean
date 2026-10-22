/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact major/minor partition for the Goldbach circle coefficient

A measurable set of frequencies is declared as the major region inside the
unit interval. Its set-theoretic complement inside `(0,1]` is the minor region.
The two restricted integrals recombine exactly to the existing logarithmic
Goldbach mass.

The terminal criteria below are conditional consumers. They require a lower
bound for the major contribution, a norm bound for the signed minor
contribution, and a strict positive margin. They construct none of those
analytic estimates.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

open scoped Real
open MeasureTheory Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries

noncomputable section

/-- The declared major region, clipped to the exact unit integration domain. -/
def goldbachMajorArcSet (major : Set ℝ) : Set ℝ :=
  Set.Ioc 0 1 ∩ major

/-- The exact complementary region inside the unit integration domain. -/
def goldbachMinorArcSet (major : Set ℝ) : Set ℝ :=
  Set.Ioc 0 1 \ major

/-- The signed contribution from the declared major region. -/
def goldbachMajorArcContribution (N : ℕ) (major : Set ℝ) : ℂ :=
  ∫ x in goldbachMajorArcSet major, goldbachCircleIntegrand N x

/-- The signed contribution from the complementary minor region. -/
def goldbachMinorArcContribution (N : ℕ) (major : Set ℝ) : ℂ :=
  ∫ x in goldbachMinorArcSet major, goldbachCircleIntegrand N x

/-- The clipped major region is measurable when the supplied region is. -/
theorem measurable_goldbachMajorArcSet {major : Set ℝ}
    (hmajor : MeasurableSet major) :
    MeasurableSet (goldbachMajorArcSet major) := by
  exact measurableSet_Ioc.inter hmajor

/-- The complementary minor region is measurable when the supplied region is. -/
theorem measurable_goldbachMinorArcSet {major : Set ℝ}
    (hmajor : MeasurableSet major) :
    MeasurableSet (goldbachMinorArcSet major) := by
  exact measurableSet_Ioc.diff hmajor

/-- The declared major and minor regions partition the unit interval exactly. -/
theorem goldbachMajorArcSet_union_minor (major : Set ℝ) :
    goldbachMajorArcSet major ∪ goldbachMinorArcSet major =
      Set.Ioc 0 1 := by
  ext x
  simp [goldbachMajorArcSet, goldbachMinorArcSet]

/-- The declared major and minor regions are disjoint. -/
theorem goldbachMajorArcSet_disjoint_minor (major : Set ℝ) :
    Disjoint (goldbachMajorArcSet major) (goldbachMinorArcSet major) := by
  refine Set.disjoint_left.2 ?_
  intro x hxMajor hxMinor
  exact hxMinor.2 hxMajor.2

/-- The exact Goldbach circle integrand is continuous. -/
@[continuity, fun_prop]
theorem continuous_goldbachCircleIntegrand (N : ℕ) :
    Continuous (goldbachCircleIntegrand N) := by
  unfold goldbachCircleIntegrand goldbachExponentialSum
  fun_prop

/-- The exact integrand is integrable on the unit interval. -/
theorem integrableOn_goldbachCircleIntegrand_unit (N : ℕ) :
    IntegrableOn (goldbachCircleIntegrand N) (Set.Ioc 0 1) := by
  exact ((continuous_goldbachCircleIntegrand N).intervalIntegrable 0 1).1

/-- The major contribution is integrable without any analytic estimate. -/
theorem integrableOn_goldbachCircleIntegrand_major (N : ℕ)
    (major : Set ℝ) :
    IntegrableOn (goldbachCircleIntegrand N)
      (goldbachMajorArcSet major) := by
  exact (integrableOn_goldbachCircleIntegrand_unit N).mono_set
    Set.inter_subset_left

/-- The minor contribution is integrable without any analytic estimate. -/
theorem integrableOn_goldbachCircleIntegrand_minor (N : ℕ)
    (major : Set ℝ) :
    IntegrableOn (goldbachCircleIntegrand N)
      (goldbachMinorArcSet major) := by
  exact (integrableOn_goldbachCircleIntegrand_unit N).mono_set
    Set.sdiff_subset

/-- Exact recombination of the signed major and minor contributions. -/
theorem goldbachMajor_add_minor_eq_logMass (N : ℕ)
    {major : Set ℝ} (hmajor : MeasurableSet major) :
    goldbachMajorArcContribution N major +
        goldbachMinorArcContribution N major =
      (goldbachLogMass N : ℂ) := by
  unfold goldbachMajorArcContribution goldbachMinorArcContribution
    goldbachMajorArcSet goldbachMinorArcSet
  calc
    (∫ x in Set.Ioc 0 1 ∩ major, goldbachCircleIntegrand N x) +
          ∫ x in Set.Ioc 0 1 \ major, goldbachCircleIntegrand N x =
        ∫ x in Set.Ioc 0 1, goldbachCircleIntegrand N x := by
      exact integral_inter_add_sdiff hmajor
        (integrableOn_goldbachCircleIntegrand_unit N)
    _ = ∫ x : ℝ in 0..1, goldbachCircleIntegrand N x := by
      rw [intervalIntegral.integral_of_le zero_le_one]
    _ = (goldbachLogMass N : ℂ) := by
      simpa [goldbachCircleIntegrand] using
        (goldbachCircleIntegral_eq_logMass N)

/-- A strict major lower bound beating the complete signed minor norm implies
positive logarithmic Goldbach mass. -/
theorem goldbachLogMass_pos_of_major_minor_bounds {N : ℕ}
    {major : Set ℝ} (hmajor : MeasurableSet major)
    (mainLower minorError : ℝ)
    (hmain :
      mainLower ≤ (goldbachMajorArcContribution N major).re)
    (hminor :
      ‖goldbachMinorArcContribution N major‖ ≤ minorError)
    (hmargin : minorError < mainLower) :
    0 < goldbachLogMass N := by
  have hsum := goldbachMajor_add_minor_eq_logMass N hmajor
  have hre := congrArg Complex.re hsum
  simp only [Complex.add_re, Complex.ofReal_re] at hre
  have habs :
      |(goldbachMinorArcContribution N major).re| ≤ minorError :=
    (Complex.abs_re_le_norm
      (goldbachMinorArcContribution N major)).trans hminor
  have hlower :
      -minorError ≤ (goldbachMinorArcContribution N major).re :=
    (abs_le.mp habs).1
  linarith

/-- The same strict signed estimate yields positivity of the existing exact
Goldbach count. -/
theorem goldbachCount_pos_of_major_minor_bounds {N : ℕ}
    {major : Set ℝ} (hmajor : MeasurableSet major)
    (mainLower minorError : ℝ)
    (hmain :
      mainLower ≤ (goldbachMajorArcContribution N major).re)
    (hminor :
      ‖goldbachMinorArcContribution N major‖ ≤ minorError)
    (hmargin : minorError < mainLower) :
    0 < goldbachCount N := by
  exact (goldbachLogMass_pos_iff_count_pos N).mp
    (goldbachLogMass_pos_of_major_minor_bounds hmajor
      mainLower minorError hmain hminor hmargin)

/-- A finite local product may parameterize a proposed major main scale only
when both its approximation error and the complete minor error are supplied.
This theorem does not construct the scale or either estimate. -/
def goldbachTruncatedMainScale (Q N : ℕ) (scale : ℝ) : ℝ :=
  (goldbachTruncatedSeries Q N : ℝ) * scale

/-- Terminal conditional consumer for a finite local main scale. Every error is
charged once, and strict positivity is required. -/
theorem goldbachCount_pos_of_truncated_arc_certificate
    {Q N : ℕ} {major : Set ℝ} (hmajor : MeasurableSet major)
    (scale localError minorError : ℝ)
    (hmajorLower :
      goldbachTruncatedMainScale Q N scale - localError ≤
        (goldbachMajorArcContribution N major).re)
    (hminor :
      ‖goldbachMinorArcContribution N major‖ ≤ minorError)
    (hmargin :
      localError + minorError <
        goldbachTruncatedMainScale Q N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_major_minor_bounds hmajor
    (goldbachTruncatedMainScale Q N scale - localError)
    minorError hmajorLower hminor
  linarith

end
end GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
