# Complete source: GRWTSK.Topology.GeneralTopology.ActualCriticalAbsoluteGrowth.Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b34e870707a406e0c41c798cd6dc2f8a492f661` · SHA-256 `7ed20723962232e4082ed3f9a34bfb60576c87a1365a48f9f6e4f614f43ae073`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCriticalBaselineUpperStripLower.Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCriticalBaselineUpperStripLower.Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15","mathematical_subject":"Topology.GeneralTopology","original_sha256":"421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T172033Z-1791307233899293000/ActualCriticalAbsoluteGrowth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualBoundaryCorrelation
import SourceCriticalRelativeCompensation

/-!
Actual-source lower bound on the absolute critical kernel budget.
The signed Chebyshev pairing remains unrestricted. This estimate diagnoses
loss from taking absolute values; it is not a counterexample for actual psi.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualCriticalBaselineUpperStripLower.Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The complete signed baseline on this short strip has a positive boundary contribution. -/
theorem actual_critical_baseline_upper_strip_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in (2 * A - 1)..2 * A, baselineLogKernel A t := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  have he : baselineLogKernel A = fun t =>
      criticalPrimeTest A t - deriv (criticalPrimeTest A) t := by
    funext t
    rw [criticalPrimeTest_deriv A t hp]
    unfold baselineLogKernel criticalPrimeTest criticalWeight
    ring
  have hi : (∫ t in (2 * A - 1)..2 * A, baselineLogKernel A t) =
      (∫ t in (2 * A - 1)..2 * A, criticalPrimeTest A t) +
        criticalPrimeTest A (2 * A - 1) := by
    rw [he, intervalIntegral.integral_sub
      (hf.continuous.intervalIntegrable _ _) (hf.continuous_deriv_one.intervalIntegrable _ _),
      intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp]
      ring
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have hn : 0 ≤ ∫ t in (2 * A - 1)..2 * A, criticalPrimeTest A t := by
    apply intervalIntegral.integral_nonneg (by linarith)
    intro t ht
    have hh0 : 0 ≤ 2 * A - t := by linarith [ht.2]
    have hh1 : 2 * A - t ≤ 1 := by linarith [ht.1]
    have hc := actual_correlation_upper_strip_lower A (2 * A - t) hA hh0 hh1
    rw [show 2 * A - (2 * A - t) = t by ring] at hc
    have hc0 : 0 ≤ sourceCorrelation explicitSecondDerivative A t :=
      (by positivity : 0 ≤ (2 * A - t) ^ 5 / (30 * A ^ 9)).trans hc
    exact mul_nonneg (Real.exp_pos _).le hc0
  have hc := actual_correlation_upper_strip_lower A 1 hA (by norm_num) (by norm_num)
  have hb : Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      criticalPrimeTest A (2 * A - 1) := by
    unfold criticalPrimeTest
    have he : (2 * A - 1) / 2 = A - 1 / 2 := by ring
    rw [he]
    have hx := mul_le_mul_of_nonneg_left hc (Real.exp_pos (A - 1 / 2)).le
    simpa only [one_pow, mul_one_div] using hx
  rw [hi]
  linarith

/-- Taking absolute values already incurs this actual positive support-edge budget. -/
theorem actual_critical_absolute_upper_strip_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in (2 * A - 1)..2 * A, |baselineLogKernel A t| := by
  apply (actual_critical_baseline_upper_strip_lower A hA).trans
  have hc : Continuous (baselineLogKernel A) := by
    unfold baselineLogKernel criticalWeight
    have hq := sourceCorrelation_contDiff A (by linarith : 0 < A)
    exact (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((hq.continuous.div_const 2).sub hq.continuous_deriv_one)
  exact intervalIntegral.integral_mono (by linarith)
    (hc.intervalIntegrable _ _) (hc.abs.intervalIntegrable _ _)
    (fun t => le_abs_self (baselineLogKernel A t))

/-- The full actual positive-axis absolute critical budget has the same growing lower bound. -/
theorem actual_critical_absolute_full_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in Ioi (0 : ℝ), Real.exp (t / 2) * |criticalWeight A t| := by
  have hi := (baselineLogKernel_integrable (A := A) (by linarith : 1 ≤ A)).abs
  have he : (fun t : ℝ => |baselineLogKernel A t|) =
      fun t => Real.exp (t / 2) * |criticalWeight A t| := by
    funext t
    rw [baselineLogKernel, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hb := actual_critical_absolute_upper_strip_lower A hA
  rw [intervalIntegral.integral_of_le (by linarith : 2 * A - 1 ≤ 2 * A)] at hb
  have hsub : Ioc (2 * A - 1) (2 * A) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact mem_Ioi.mpr (by linarith [ht.1])
  have hm := setIntegral_mono_set (s := Ioc (2 * A - 1) (2 * A)) hi
    (Filter.Eventually.of_forall fun t => abs_nonneg (baselineLogKernel A t))
    (Filter.Eventually.of_forall fun t ht => hsub ht)
  rw [← he]
  exact hb.trans hm

/-- The actual absolute critical kernel budget itself is unbounded at large real scales. -/
theorem actual_critical_absolute_full_tendsto_atTop :
    Tendsto (fun A : ℝ => ∫ t in Ioi (0 : ℝ),
      Real.exp (t / 2) * |criticalWeight A t|) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      fun A => ((Real.exp (-1 / 2) / 30) * Real.exp A + 0) / A ^ 9 := by
    funext A
    rw [show A - 1 / 2 = A + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    exact Real.tendsto_mul_exp_add_div_pow_atTop _ _ 9 (by positivity)
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (4 : ℝ)] with A hA
  exact actual_critical_absolute_full_lower A hA

end
end RH16IndependentChallengeNext
```
