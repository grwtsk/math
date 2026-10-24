/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.Integration.CompactPolynomialMoments
import GRWTSK.Analysis.Convolution.CompactProfileCorrelation
import Mathlib.MeasureTheory.Function.Floor

/-!
# Genuine integrability of the source's finite signed arithmetic pairing

The literal closed prime-power count is measurable and bounded on each finite
logarithmic interval. The actual source weight is continuous. These are finite
well-formedness proofs; the allowance is not a uniform arithmetic budget.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSignedIntegrability

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.SourcePairing
open SourceResidual SourceClosedNormalization SourceRegularity

noncomputable section

theorem chebyshev_prime_power_nonneg (x : ℝ) : 0 ≤ chebyshevPrimePower x := by
  unfold chebyshevPrimePower
  exact Finset.sum_nonneg (fun _ _ ↦ ArithmeticFunction.vonMangoldt_nonneg)

theorem chebyshev_prime_power_monotone : Monotone chebyshevPrimePower := by
  intro x y hxy
  unfold chebyshevPrimePower
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.floor_mono hxy)⟩
  · intro _ _ _
    exact ArithmeticFunction.vonMangoldt_nonneg

theorem error_profile_measurable : Measurable errorProfile := by
  have countMeasurable : Measurable (fun N : ℕ ↦
      ∑ n ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt n) := measurable_of_countable _
  exact (countMeasurable.comp (Nat.measurable_floor.comp Real.measurable_exp)).sub
    Real.measurable_exp

theorem error_profile_bound {t T : ℝ} (ht : t ≤ T) :
    ‖errorProfile t‖ ≤ chebyshevPrimePower (Real.exp T) + Real.exp T := by
  change |chebyshevPrimePower (Real.exp t) - Real.exp t| ≤ _
  calc
    _ ≤ |chebyshevPrimePower (Real.exp t)| + |Real.exp t| := by
      simpa only [sub_zero, zero_sub, abs_neg] using
        abs_sub_le (chebyshevPrimePower (Real.exp t)) 0 (Real.exp t)
    _ = chebyshevPrimePower (Real.exp t) + Real.exp t := by
      rw [abs_of_nonneg (chebyshev_prime_power_nonneg _), abs_of_pos (Real.exp_pos _)]
    _ ≤ chebyshevPrimePower (Real.exp T) + Real.exp T :=
      add_le_add (chebyshev_prime_power_monotone (Real.exp_le_exp.mpr ht))
        (Real.exp_le_exp.mpr ht)

theorem source_weight_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceWeight sourceSecond A) := by
  unfold sourceWeight
  rw [source_pairing_correlation_eq hA]
  have correlationContinuous := (correlation_contDiff_one hA).continuous
  have derivativeContinuous := (correlation_contDiff_one hA).continuous_deriv_one
  fun_prop

theorem signed_pairing_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight sourceSecond A t)
      volume lowerEndpoint (2 * A) := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le (source_interval_order A hA)]
  have weight := (source_weight_continuous (by linarith : 0 < A)).integrableOn_Icc
    (a := lowerEndpoint) (b := 2 * A) (μ := volume)
  apply weight.bdd_mul error_profile_measurable.aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    exact error_profile_bound ht.2

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSignedIntegrability
