/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatNoncontraction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSignedEvolution

/-!
# Return to the exact source's signed heat evolution

The decoder retains each positive integer as its own phase. Unfolding it
identifies the closed-index waveform with the existing source waveform at
every horizon and physical time. Thus the strict energy increase from the
index-two contribution makes the signed balance margin strictly negative.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatNoncontraction

open MeasureTheory
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatSignedEvolution

theorem sourceHeatWave_eq_closedSourceWave (s T u : ℝ) :
    sourceHeatWave s T u = closedSourceWave s T u := by
  unfold sourceHeatWave observedWave closedSourceWave
  apply Finset.sum_congr rfl
  intro n hn
  unfold observedCoeff sourceHeatPhase
  rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [sourceHeatCoeff, logHeatMultiplier, logFrequency, mul_comm
    (Real.exp (-s * Real.log (n : ℝ) ^ 2))]

theorem sourceHeatEnergy_strictly_increases {s r T : ℝ} (hs : 8 ≤ s) (hr : 0 < r)
    (hT : Real.log 2 < T) :
    sourceHeatEnergy s T < sourceHeatEnergy (s + r) T := by
  change (∫ u in (0 : ℝ)..T, sourceHeatWave s T u ^ 2) <
    ∫ u in (0 : ℝ)..T, sourceHeatWave (s + r) T u ^ 2
  simp_rw [sourceHeatWave_eq_closedSourceWave]
  exact closedSourceEnergy_strictly_increases hs hr hT

theorem signedHeatMargin_neg {s r T : ℝ} (hs : 8 ≤ s) (hr : 0 < r)
    (hT : Real.log 2 < T) :
    2 * heatMixedEnergy s r T + heatIncrementEnergy s r T < 0 := by
  rw [show 2 * heatMixedEnergy s r T + heatIncrementEnergy s r T =
      sourceHeatEnergy s T - sourceHeatEnergy (s + r) T by
    linarith [sourceHeatEnergy_exact_signed_balance s r T]]
  exact sub_neg.mpr (sourceHeatEnergy_strictly_increases hs hr hT)

end GRWTSK.NumberTheory.Moebius.GaussianHeatNoncontraction
