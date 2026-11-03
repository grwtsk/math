/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveSignedTupleMoments
import Mathlib.MeasureTheory.Function.LpSeminorm.CompareExp
import Mathlib.Tactic

/-!
# Source-exact Hölder comparison on original dyadic physical-time intervals

This uses the ACTUAL C-infinity adaptive smooth waveform on
[0,dyadicTime j]. Mathlib's finite-measure exponent comparison supplies
L2 <= L(2k)*measure^(1/2-1/(2k)) for every k>=1. It is a genuine
analytic theorem independent of Mobius cancellation.

Remaining gates: translate this ENNReal eLpNorm theorem into the precise
real interval integrals used by adaptiveSmoothEnergy and
integratedSignedTupleMoment, using the already isolated pointwise
signed-k-tuple Cauchy bound; establish the atomic 1/12 integral return.
No arithmetic even-moment premise is assumed or declared proved here.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptivePhysicalTimeHolderLp

open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveSignedTupleMoments

/-- Restriction of ordinary Lebesgue physical time, with the actual source
dyadic horizon and no probability renormalization. -/
def physicalTimeMeasure (j : ℕ) : Measure ℝ :=
  volume.restrict (Set.Icc 0 (dyadicTime j))

/-- Pinned Mathlib finite-measure Hölder, specialized to the actual
signed-source smooth waveform and exponents 2 and 2k. The finite
measure factor is retained exactly rather than silently normalized to 1. -/
theorem adaptive_time_holder_eLp (j k : ℕ) (hk : 1 ≤ k) :
    eLpNorm (adaptiveSmoothWave j) (2 : ℝ≥0∞) (physicalTimeMeasure j) ≤
      eLpNorm (adaptiveSmoothWave j) (2 * (k : ℝ≥0∞))
        (physicalTimeMeasure j) *
      (physicalTimeMeasure j) Set.univ ^
        (1 / (2 : ℝ≥0∞).toReal -
          1 / (2 * (k : ℝ≥0∞)).toReal) := by
  have hk' : (1 : ℝ≥0∞) ≤ (k : ℝ≥0∞) := by
    exact_mod_cast hk
  have hpq : (2 : ℝ≥0∞) ≤ 2 * (k : ℝ≥0∞) := by
    calc
      (2 : ℝ≥0∞) = 2 * 1 := by simp
      _ ≤ 2 * (k : ℝ≥0∞) := mul_le_mul_left' hk' 2
  have hm : AEStronglyMeasurable (adaptiveSmoothWave j)
      (physicalTimeMeasure j) :=
    (adaptiveSmoothWave_smooth j).continuous.measurable.aestronglyMeasurable
  exact eLpNorm_le_eLpNorm_mul_rpow_measure_univ hpq hm

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptivePhysicalTimeHolderLp
