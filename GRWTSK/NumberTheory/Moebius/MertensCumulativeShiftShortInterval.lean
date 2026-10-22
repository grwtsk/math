/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #523. Direct stacked parent: draft PR #520 at
`5fce6d8d3b5d181011a58d9a0f69a9ae46a3787a`.
-/
import GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftAbel

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Short interval of Möbius values induced by the active harmonic shift
origin. -/
def harmonicShortMobiusSum
    (j t n a : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n,
    moebiusReal (a + 1 + harmonicShiftLower j t + k)

/-- Exact rectangular Fubini identity for cumulative active-shift
correlations. -/
theorem cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage
    (j t n : ℕ) :
    cumulativeHarmonicShiftCorrelation j t n =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) *
          harmonicShortMobiusSum j t n a := by
  unfold cumulativeHarmonicShiftCorrelation
    harmonicShiftCorrelation
    harmonicShortMobiusSum
    mertensTwoPointPrefix
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a _ha
  rw [← Finset.mul_sum]
  apply congrArg (fun x : ℝ => moebiusReal (a + 1) * x)
  apply Finset.sum_congr rfl
  intro k _hk
  congr 2 <;> omega

/-- Triangle transfer from cumulative shift cancellation to the first moment of
short-interval Möbius sums.  This is sufficient only; the exact source remains
signed. -/
theorem abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1
    (j t n : ℕ) :
    |cumulativeHarmonicShiftCorrelation j t n| ≤
      ∑ a ∈ Finset.range (t + 1),
        |harmonicShortMobiusSum j t n a| := by
  rw [cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage]
  calc
    |∑ a ∈ Finset.range (t + 1),
      moebiusReal (a + 1) * harmonicShortMobiusSum j t n a| ≤
      ∑ a ∈ Finset.range (t + 1),
        |moebiusReal (a + 1) *
          harmonicShortMobiusSum j t n a| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ a ∈ Finset.range (t + 1),
        |harmonicShortMobiusSum j t n a| := by
      apply Finset.sum_le_sum
      intro a _ha
      rw [abs_mul]
      exact mul_le_of_le_one_left
        (abs_nonneg _)
        (moebiusReal_abs_le_one (a + 1))

/-- Quantitative short-interval first-moment source at one finite scale/depth
pair. -/
def HarmonicShortIntervalL1Bound
    (j t n : ℕ) (U : ℝ) : Prop :=
  0 ≤ U ∧
    (∑ a ∈ Finset.range (t + 1),
      |harmonicShortMobiusSum j t n a|) ≤ U

/-- Any such short-interval first-moment bound supplies the corresponding
cumulative shift bound. -/
theorem abs_cumulativeHarmonicShiftCorrelation_le_of_shortIntervalL1
    {j t n : ℕ} {U : ℝ}
    (hShort : HarmonicShortIntervalL1Bound j t n U) :
    |cumulativeHarmonicShiftCorrelation j t n| ≤ U :=
  le_trans
    (abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1 j t n)
    hShort.2

/-- Abstract theorem scope for a quantitative short-interval result.  The
range and uniformity obligations are explicit and are not inferred from the
name of an external theorem. -/
structure QuantitativeShortIntervalMobiusSource where
  sourceStatement : Prop
  intervalLengthCoverage : Prop
  startWindowCoverage : Prop
  allDepthUniformity : Prop
  finiteSmallRangeControl : Prop

/-- Adapter required before a quantitative short-interval theorem can supply
the RH-E02 harmonic packet. -/
structure ShortIntervalToHarmonicPacketAdapter
    (d : QuantitativeShortIntervalMobiusSource) : Type where
  toHarmonic :
    d.sourceStatement →
      d.intervalLengthCoverage →
      d.startWindowCoverage →
      d.allDepthUniformity →
      d.finiteSmallRangeControl →
      SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

/-- Generic conditional endpoint from a quantitative short-interval theorem,
but only after all coverage and uniformity obligations are explicitly paid. -/
theorem riemannHypothesis_of_shortIntervalAdapter
    (d : QuantitativeShortIntervalMobiusSource)
    (bridge : ShortIntervalToHarmonicPacketAdapter d)
    (hsource : d.sourceStatement)
    (hlength : d.intervalLengthCoverage)
    (hwindow : d.startWindowCoverage)
    (hdepth : d.allDepthUniformity)
    (hsmall : d.finiteSmallRangeControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (bridge.toHarmonic hsource hlength hwindow hdepth hsmall)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_shortIntervalAdapter
