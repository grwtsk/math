# Complete source: GRWTSK.Analysis.MeasureTheory.69250e284bf978881002SourceOmegaContinuousSector.Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92e6e08a80abd9bd954ff7b836119fe574e43fcf` · SHA-256 `63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePositiveSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
Literal continuous divisor sector of the supplied complete Omega construction.
Both sides are independently defined from the unchanged actual source. Positive
multiplicative substitution retains its Jacobian and true touching upper support.
The full finite signed short-divisor sum is transported without deletion.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceOmegaContinuousSector
open MeasureTheory Set
open SourcePairing SourcePositiveSampling SourceSamplingTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceMobiusKernel EstimateMertensAbel EstimateVaughanSource

/-- Independent literal x-coordinate continuous row from the supplied Omega formula. -/
def continuousDivisorIntegrand (A d x : ℝ) : ℝ :=
  Real.log (x / d) * plainProfile A 1 x

/-- Actual u-coordinate row, with lower endpoint one retained. -/
def upperContinuousDivisorIntegral (A d : ℝ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), logProfile A d u

/-- Literal finite I_A(U), retaining each actual signed divisor coefficient. -/
def literalOmegaIntegralSector (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / (d : ℝ) *
    ∫ x in (d : ℝ)..Real.exp (2 * A), continuousDivisorIntegrand A (d : ℝ) x

/-- Positive multiplicative inputs have exactly the same actual plain source. -/
theorem plainProfile_multiplicative (A : ℝ) {d u : ℝ} (hd : 0 < d) (hu : 0 < u) :
    plainProfile A d u = plainProfile A 1 (d * u) := by
  rw [plainProfile_eq_of_pos A d hu,
    sourcePlainSamplingTerm_eq_source_weight A hd hu,
    plainProfile_eq_of_pos A 1 (mul_pos hd hu),
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1)
      (mul_pos hd hu), one_mul]

/-- Actual logarithmic row under x=d*u; no surrogate source is introduced. -/
theorem logProfile_eq_continuousDivisorIntegrand_mul (A : ℝ) {d u : ℝ}
    (hd : 0 < d) (hu : 0 < u) :
    logProfile A d u = continuousDivisorIntegrand A d (d * u) := by
  unfold continuousDivisorIntegrand
  rw [mul_div_cancel_left₀ u hd.ne', logProfile_eq_log_mul,
    plainProfile_multiplicative A hd hu]

/-- Genuine x-coordinate integrability comes from the proved actual profile integrability. -/
theorem continuousDivisorIntegrand_integrable {A d : ℝ} (hA : 1 ≤ A) (hd : 0 < d) :
    IntegrableOn (continuousDivisorIntegrand A d) (Ioi d) := by
  have hi : IntegrableOn (fun u => continuousDivisorIntegrand A d (d * u))
      (Ioi (1 : ℝ)) := by
    apply ((logProfile_integrable (by linarith : 0 < A) d).integrableOn).congr_fun
    · intro u hu
      exact logProfile_eq_continuousDivisorIntegrand_mul A hd (zero_lt_one.trans hu)
    · exact measurableSet_Ioi
  simpa only [mul_one] using
    (integrableOn_Ioi_comp_mul_left_iff (continuousDivisorIntegrand A d) 1 hd).mp hi

/-- The actual touching upper support kills the entire continuous tail above exp(2A). -/
theorem continuousDivisorIntegrand_zero_above {A d x : ℝ} (hA : 1 ≤ A)
    (hx : Real.exp (2 * A) ≤ x) : continuousDivisorIntegrand A d x = 0 := by
  unfold continuousDivisorIntegrand
  have hz : plainProfile A 1 x = 0 := by
    apply plainProfile_zero_above (by linarith : 0 < A) 1
    simpa only [Real.log_one, sub_zero] using hx
  rw [hz, mul_zero]

/-- Exact positive scaling, including the reciprocal Jacobian. -/
theorem upperContinuousDivisorIntegral_eq_full_x {A d : ℝ} (hA : 1 ≤ A) (hd : 0 < d) :
    upperContinuousDivisorIntegral A d =
      (1 / d) * ∫ x in Ioi d, continuousDivisorIntegrand A d x := by
  have _hi := continuousDivisorIntegrand_integrable hA hd
  unfold upperContinuousDivisorIntegral
  have he : (∫ u in Ioi (1 : ℝ), logProfile A d u) =
      ∫ u in Ioi (1 : ℝ), continuousDivisorIntegrand A d (d * u) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    exact logProfile_eq_continuousDivisorIntegrand_mul A hd (zero_lt_one.trans hu)
  rw [he, integral_comp_mul_left_Ioi (continuousDivisorIntegrand A d) 1 hd]
  simp only [mul_one, smul_eq_mul, one_div]

/-- The literal finite upper endpoint and interval orientation are retained. -/
theorem upperContinuousDivisorIntegral_eq_literal_row {A d : ℝ} (hA : 1 ≤ A)
    (hd : 0 < d) (hdX : d ≤ Real.exp (2 * A)) :
    upperContinuousDivisorIntegral A d = (1 / d) *
      ∫ x in d..Real.exp (2 * A), continuousDivisorIntegrand A d x := by
  rw [upperContinuousDivisorIntegral_eq_full_x hA hd]
  congr 1
  rw [intervalIntegral.integral_of_le hdX, ← Ioc_union_Ioi_eq_Ioi hdX]
  apply integral_union_eq_left_of_forall measurableSet_Ioi
  intro x hx
  exact continuousDivisorIntegrand_zero_above hA hx.le

/-- The complete actual short-divisor continuous sum is exactly the supplied literal I_A(U). -/
theorem full_short_continuous_sector_eq_literal_I (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      upperContinuousDivisorIntegral A (d : ℝ)) = literalOmegaIntegralSector A := by
  unfold literalOmegaIntegralSector
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) := by
    have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
      Nat.floor_le (Real.exp_pos (2 * A)).le
    exact (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans hf
  rw [upperContinuousDivisorIntegral_eq_literal_row hA hd0 hdX]
  ring

end FormalResearch.RiemannHypothesis.SourceOmegaContinuousSector
```
