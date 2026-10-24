# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalTailPntObstruction.Variant76a186990a4c1068064e17fe6b580d59c202fb62fdc2f90c376a3c638db98325

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ee978036c13a5fa22e9b5ef386e7296bf0174e7` · SHA-256 `76a186990a4c1068064e17fe6b580d59c202fb62fdc2f90c376a3c638db98325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCriticalPntBudget
import SourceStrictComplementaryEarlyBudget

/-!
The actual support-edge absolute budget survives the real moving cutoff.
This is a failure of the proposed unsigned PNT-envelope estimate, not an
estimate or counterexample for the actual signed Chebyshev or Mobius source.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCriticalTailPntObstruction

open MeasureTheory Set Filter
open SourcePairing SourceStrictComplementaryLocalization SourceStrictComplementaryEarlyBudget
open SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource

noncomputable section

/-- The actual critical kernel's absolute PNT-envelope budget after the genuine cutoff. -/
def actualCutoffPntAbsoluteBudget (A c : ℝ) : ℝ :=
  ∫ t in Ioi (Real.log (vaughanCutoff A : ℝ)), actualCriticalPntAbsoluteIntegrand A c t

/-- The original support edge is wholly beyond the moving short-divisor cutoff. -/
theorem actual_upper_strip_after_cutoff {A : ℝ} (hA : 25600 ≤ A) :
    Ioc (2 * A - 1) (2 * A) ⊆ Ioi (Real.log (vaughanCutoff A : ℝ)) := by
  intro t ht
  have hl := log_vaughanCutoff_le_early_window hA
  exact mem_Ioi.mpr (by linarith [ht.1])

/-- Genuine local L1 follows from the unchanged actual compact kernel. -/
theorem actual_cutoff_pnt_integrable {A c : ℝ} (hA : 25600 ≤ A) (hc : 0 ≤ c) :
    IntegrableOn (actualCriticalPntAbsoluteIntegrand A c)
      (Ioi (Real.log (vaughanCutoff A : ℝ))) := by
  have hU := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  have hl := Real.log_nonneg hU
  exact (actualCriticalPntAbsoluteIntegrand_integrable A c (by linarith) hc).mono_set
    (Ioi_subset_Ioi hl)

/-- The full support-edge lower budget remains in the genuine localized norm. -/
theorem actual_cutoff_pnt_absolute_budget_lower {A c : ℝ}
    (hA : 25600 ≤ A) (hc : 0 ≤ c) :
    Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) ≤
      actualCutoffPntAbsoluteBudget A c := by
  have hp : 0 < A := by linarith
  have hb := actual_critical_absolute_upper_strip_lower A (by linarith : 4 ≤ A)
  have hbcont : Continuous (baselineLogKernel A) := by
    unfold baselineLogKernel criticalWeight
    have hq := sourceCorrelation_contDiff A hp
    exact (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((hq.continuous.div_const 2).sub hq.continuous_deriv_one)
  have hpcont : Continuous (actualCriticalPntAbsoluteIntegrand A c) := by
    unfold actualCriticalPntAbsoluteIntegrand
    exact (Real.continuous_exp.comp (continuous_const.mul Real.continuous_sqrt)).mul
      hbcont.abs
  have hm : Real.exp (-c * Real.sqrt (2 * A)) *
      (∫ t in (2 * A - 1)..2 * A, |baselineLogKernel A t|) ≤
      ∫ t in (2 * A - 1)..2 * A, actualCriticalPntAbsoluteIntegrand A c t := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_mono_on (by linarith)
      ((hbcont.abs.const_mul _).intervalIntegrable _ _)
      (hpcont.intervalIntegrable _ _)
    intro t ht
    have hs := Real.sqrt_le_sqrt ht.2
    have he : Real.exp (-c * Real.sqrt (2 * A)) ≤ Real.exp (-c * Real.sqrt t) :=
      Real.exp_le_exp.mpr (by nlinarith)
    exact mul_le_mul_of_nonneg_right he (abs_nonneg _)
  have hf := setIntegral_mono_set (s := Ioc (2 * A - 1) (2 * A))
    (actual_cutoff_pnt_integrable hA hc)
    (Eventually.of_forall fun t => mul_nonneg (Real.exp_pos _).le (abs_nonneg _))
    (Eventually.of_forall fun t ht => actual_upper_strip_after_cutoff hA ht)
  rw [← intervalIntegral.integral_of_le (by linarith : 2 * A - 1 ≤ 2 * A)] at hf
  have hlo := mul_le_mul_of_nonneg_left hb (Real.exp_pos (-c * Real.sqrt (2 * A))).le
  have he : Real.exp (-c * Real.sqrt (2 * A)) *
      (Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) := by
    rw [← mul_div_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he] at hlo
  exact hlo.trans (hm.trans hf)

/-- At c=0, the actual absolute tail weight itself has an exponential edge budget. -/
theorem actual_cutoff_absolute_budget_lower {A : ℝ} (hA : 25600 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      actualCutoffPntAbsoluteBudget A 0 := by
  simpa only [zero_mul, sub_zero] using actual_cutoff_pnt_absolute_budget_lower hA (le_refl 0)

/-- A fixed classical PNT absolute envelope still diverges after the real moving cutoff. -/
theorem actual_cutoff_pnt_absolute_budget_tendsto_atTop (c : ℝ) (hc : 0 ≤ c) :
    Tendsto (fun A : ℝ => actualCutoffPntAbsoluteBudget A c) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9)) =
      fun A => (Real.exp (-1 / 2) / (30 * 2 ^ 9)) *
        (Real.exp (A / 2) / (A / 2) ^ 9) := by
    funext A
    rw [show A / 2 - 1 / 2 = A / 2 + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    apply Tendsto.const_mul_atTop (by positivity)
    exact (Real.tendsto_exp_div_pow_atTop 9).comp
      (by simpa only [div_eq_mul_inv, mul_comm, one_mul, id_eq] using
        (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 1 / 2)))
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (max (25600 : ℝ) (8 * c ^ 2))] with A hA
  have hA0 : 25600 ≤ A := (le_max_left _ _).trans hA
  have hAc : 8 * c ^ 2 ≤ A := (le_max_right _ _).trans hA
  have hs : c * Real.sqrt (2 * A) ≤ A / 2 := by
    have hsq : (c * Real.sqrt (2 * A)) ^ 2 = 2 * c ^ 2 * A := by
      rw [mul_pow, Real.sq_sqrt (by positivity : 0 ≤ 2 * A)]
      ring
    nlinarith [mul_nonneg hc (Real.sqrt_nonneg (2 * A))]
  have hle : Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9) ≤
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) :=
    div_le_div_of_nonneg_right (Real.exp_le_exp.mpr (by linarith)) (by positivity)
  exact hle.trans (actual_cutoff_pnt_absolute_budget_lower hA0 hc)

end
end FormalResearch.RiemannHypothesis.SourceCriticalTailPntObstruction
```
