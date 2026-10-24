# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalWeightMassObstructionAttempt02.Variantb8a9f1ee24db5bc7fc8d257dd5d3572e6e1451c9dc3b9fe431dcdf906de6915b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d792ea03777fe878286b16c49b123b9af7a6451` · SHA-256 `b8a9f1ee24db5bc7fc8d257dd5d3572e6e1451c9dc3b9fe431dcdf906de6915b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalRelativeCompensation
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
Quantitative actual-source obstruction to separate absolute critical-weight control.
This is a kernel norm result, not an assertion that the actual signed Chebyshev
pairing is unbounded. The actual psi is never replaced by a chosen function.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalWeightMassObstruction
open MeasureTheory Set
open scoped Interval
open SourcePairing SourceMangoldtNorm SourceCorrelationEnergy
open SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def absoluteCriticalWeightMass (A : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), |baselineLogKernel A t|

/-- The actual minus kernel is uniformly positive on a growing early physical window. -/
theorem criticalWeight_early_lower {A t : ℝ} (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 40) : (5 / 16 : ℝ) ≤ criticalWeight A t := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have htbound : 5 * t / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hcLower : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := (le_abs_self (deriv (sourceCorrelation explicitSecondDerivative A) t)).trans
    (sourceCorrelation_deriv_abs_le_five_div hA1 t)
  have hfive : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold criticalWeight
  linarith

theorem baselineLogKernel_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (baselineLogKernel A) := by
  exact (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
    (criticalWeight_continuous hA)

/-- Genuine actual integrability; no norm callback is assumed. -/
theorem absoluteCriticalWeightMass_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun t => |baselineLogKernel A t|) (Ioi (0 : ℝ)) :=
  (baselineLogKernel_integrable hA).abs

/-- The source's positive prefix already has an exponential absolute-weight lower budget. -/
theorem absoluteWeight_prefix_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 1) ≤
      ∫ t in 0..A / 40, |baselineLogKernel A t| := by
  have hA1 : 1 ≤ A := by linarith
  have he : (∫ t in 0..A / 40, Real.exp (t / 2)) =
      2 * (Real.exp (A / 80) - 1) := by
    have hd (t : ℝ) : HasDerivAt (fun u : ℝ => 2 * Real.exp (u / 2))
        (Real.exp (t / 2)) t :=
      (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv (by simp only [id_eq]; ring)
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => hd t) (show IntervalIntegrable (fun t : ℝ => Real.exp (t / 2))
        volume 0 (A / 40) from (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
    rw [show A / 40 / 2 = A / 80 by ring, zero_div, Real.exp_zero] at hi
    linarith
  have hmono : (∫ t in 0..A / 40, (5 / 16 : ℝ) * Real.exp (t / 2)) ≤
      ∫ t in 0..A / 40, |baselineLogKernel A t| := by
    apply intervalIntegral.integral_mono_on (by linarith : (0 : ℝ) ≤ A / 40)
      ((by fun_prop : Continuous (fun t : ℝ => (5 / 16 : ℝ) * Real.exp (t / 2))).intervalIntegrable _ _)
      ((baselineLogKernel_continuous hA1).abs.intervalIntegrable _ _)
    intro t ht
    have hm := mul_le_mul_of_nonneg_left (criticalWeight_early_lower hA ht.1 ht.2)
      (Real.exp_pos (t / 2)).le
    simpa only [baselineLogKernel, mul_comm] using hm.trans (le_abs_self _)
  rw [intervalIntegral.integral_const_mul, he] at hmono
  nlinarith

/-- Total actual absolute weight is at least its positive early prefix. -/
theorem absoluteCriticalWeightMass_exponential_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 1) ≤ absoluteCriticalWeightMass A := by
  have hA1 : 1 ≤ A := by linarith
  have hm : (∫ t in 0..A / 40, |baselineLogKernel A t|) ≤
      absoluteCriticalWeightMass A := by
    rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ A / 40)]
    exact setIntegral_mono_set (absoluteCriticalWeightMass_integrable hA1)
      (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
      (Filter.Eventually.of_forall (fun t ht => ht.1))
  exact (absoluteWeight_prefix_lower hA).trans hm

theorem absoluteCriticalWeightMass_linear_lower {A : ℝ} (hA : 40 ≤ A) :
    A / 128 ≤ absoluteCriticalWeightMass A := by
  have h := absoluteCriticalWeightMass_exponential_lower hA
  have he := Real.add_one_le_exp (A / 80)
  linarith

/-- Actual kernel norm has no eventual constant upper budget. This is not a Q counterexample. -/
theorem absoluteCriticalWeightMass_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A → absoluteCriticalWeightMass A ≤ M := by
  rintro ⟨M, R, h⟩
  let A : ℝ := max 40 (max R (128 * (M + 1)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 128 * (M + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := absoluteCriticalWeightMass_linear_lower h40
  have hhi := h A h40 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalWeightMassObstruction
```
