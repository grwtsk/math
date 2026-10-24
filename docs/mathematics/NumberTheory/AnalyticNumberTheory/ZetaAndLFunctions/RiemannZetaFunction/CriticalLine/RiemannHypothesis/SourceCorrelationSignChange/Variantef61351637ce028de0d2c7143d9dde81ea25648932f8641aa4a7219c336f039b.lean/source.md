# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationSignChange.Variantef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f91b52da12005da93ee25bf01a8bc2ccb7d32134` · SHA-256 `ef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# Sign change in the unchanged normalized source correlation

The actual correlation equals one at zero and has a vanishing critical Laplace
moment. Continuity and compact support therefore force a negative value. Evenness
and the literal support place one in the open positive half-support. This keeps
source cancellation visible; it supplies no signed arithmetic tail bound.

Research direction and selection: grwtsk contributors.
Formal construction: OpenAI Codex; independent review is a separate gate.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

open MeasureTheory Set Function
open SourcePairing SourcePrimitiveCriticalMoment SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Exact Laplace cancellation and unit normalization exclude a pointwise-positive kernel. -/
theorem sourceCorrelation_exists_neg {A : ℝ} (hA : 0 < A) :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative A t < 0 := by
  by_contra hn
  push_neg at hn
  let f : ℝ → ℝ := fun t => Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous f :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A hA).continuous
  have hs : HasCompactSupport f := (sourceCorrelation_hasCompactSupport A hA).mul_left
  have hp : 0 ≤ f := by
    intro t
    exact mul_nonneg (Real.exp_pos _).le (hn t)
  have hf0 : f 0 ≠ 0 := by
    simp [f, sourceCorrelation_zero hA]
  have hi : 0 < ∫ t : ℝ, f t :=
    hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hp hf0
  have hz : (∫ t : ℝ, f t) = 0 := (sourceCorrelation_critical_filter_zero hA).1
  linarith

/-- The negative value is internal to the literal positive half-support, excluding endpoints. -/
theorem sourceCorrelation_exists_neg_in_half_support {A : ℝ} (hA : 0 < A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧
      sourceCorrelation explicitSecondDerivative A t < 0 := by
  obtain ⟨x, hx⟩ := sourceCorrelation_exists_neg hA
  have hx0 : x ≠ 0 := by
    intro h
    rw [h, sourceCorrelation_zero hA] at hx
    norm_num at hx
  have hx2 : |x| < 2 * A := by
    by_contra h
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A x hA (le_of_not_gt h)] at hx
    norm_num at hx
  have he : sourceCorrelation explicitSecondDerivative A |x| =
      sourceCorrelation explicitSecondDerivative A x := by
    rcases le_total 0 x with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h, sourceCorrelation_even]
  exact ⟨|x|, abs_pos.mpr hx0, hx2, by rwa [he]⟩

end FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
```
