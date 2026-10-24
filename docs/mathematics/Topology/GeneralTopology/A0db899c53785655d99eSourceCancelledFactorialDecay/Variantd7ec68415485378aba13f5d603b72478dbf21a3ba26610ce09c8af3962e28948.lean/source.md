# Complete source: GRWTSK.Topology.GeneralTopology.A0db899c53785655d99eSourceCancelledFactorialDecay.Variantd7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6abdc04d1c568097d022a39e3e271888fde822f6` · SHA-256 `d7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCancelledFactorialSectorBudget

/-!
Quantitative decay of the genuine factorial sector after the actual Mellin
cancellation. Both the full positive axis and the original tail are retained.
This estimate supplies no upper witness for the remaining signed psi sector.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCancelledFactorialDecay

open MeasureTheory Set Filter
open scoped Topology
open SourceCancelledFactorialSectorBudget SourceActualFactorialTailDecomposition
open SourcePairing SourcePositiveSampling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource

noncomputable section

/-- Independently specified actual full positive-axis cancelled factorial work. -/
def actualCancelledFactorialWork (A : ℝ) : ℝ :=
  ∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
    ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)

/-- Quantitative logarithmic envelope keeps the complete actual floor cutoff. -/
def cancelledFactorialEnvelope (A : ℝ) : ℝ :=
  480 * ((Real.log A) ^ 2 / A) + 2560 * (Real.log A / A) + 3840 * (1 / A)

/-- The original closed-floor budget is bounded on every real scale A>=91. -/
theorem actual_floor_budget_le_logarithmic {A : ℝ} (hA : 91 ≤ A) :
    (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
      1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A ≤
        cancelledFactorialEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hU1 := (SourceStrictComplementaryLocalization.actual_cutoff_order A hA1).1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hh := Real.log_le_log (by linarith : 0 < (vaughanCutoff A : ℝ)) hf
    simpa only [Real.log_pow, Nat.cast_ofNat] using hh
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
    nlinarith
  calc
    _ ≤ (480 * Real.log A ^ 2 + 2560 * Real.log A + 3840) / A := by
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = _ := by unfold cancelledFactorialEnvelope; ring

/-- The quantitative envelope vanishes along the original real scale domain. -/
theorem cancelledFactorialEnvelope_tendsto_zero :
    Tendsto cancelledFactorialEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h2 : Tendsto (fun A : ℝ => Real.log A ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have h1 : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have hh := ((h2.const_mul 480).add (h1.const_mul 2560)).add (h0.const_mul 3840)
  change Tendsto (fun A : ℝ => 480 * (Real.log A ^ 2 / A) +
    2560 * (Real.log A / A) + 3840 * (1 / A)) atTop (𝓝 (0 : ℝ))
  simpa only [mul_zero, add_zero] using hh

/-- Full actual cancelled factorial work tends to zero including all real floor jumps. -/
theorem actualCancelledFactorialWork_tendsto_zero :
    Tendsto actualCancelledFactorialWork atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    cancelledFactorialEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact (actual_cancelled_factorial_full_abs_le A hA).trans
    (actual_floor_budget_le_logarithmic hA)

/-- The originally retained factorial tail also tends to zero on the real scale domain. -/
theorem actualCancelledFactorialTail_tendsto_zero :
    Tendsto (fun A : ℝ => ∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    cancelledFactorialEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact (actual_cancelled_factorial_tail_abs_le A hA).trans
    (actual_floor_budget_le_logarithmic hA)

end
end FormalResearch.RiemannHypothesis.SourceCancelledFactorialDecay
```
