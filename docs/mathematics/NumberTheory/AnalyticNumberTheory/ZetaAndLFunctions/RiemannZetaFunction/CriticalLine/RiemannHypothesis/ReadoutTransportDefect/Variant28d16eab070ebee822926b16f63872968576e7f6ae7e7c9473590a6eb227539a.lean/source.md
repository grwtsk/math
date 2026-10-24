# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReadoutTransportDefect.Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `702ff632751b13b0ef5657f61fefb357efe0babc` · SHA-256 `28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# Signed readout errors with the actual operator and vector debts

The source Mangoldt interaction is indefinite. Operator replacement and state
transport therefore use its actual real quadratic readout and carry both
errors, including `‖K-B‖ * ‖z‖²`. A coordinate estimate becomes a source
readout estimate only after its norm or metric conversion has been proved.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.Spectral.ReadoutTransportDefect

noncomputable section

open FormalResearch.RiemannHypothesis
open SourceReflectionDuality SourceMangoldtInteraction SourceScaleL2Continuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

def readout (K : ComplexL2 →L[ℂ] ComplexL2) (z : ComplexL2) : ℝ :=
  (inner ℂ z (K z)).re

/-- The exact state correction retains the multiplication order of the operator. -/
theorem state_difference (K : ComplexL2 →L[ℂ] ComplexL2) (x y : ComplexL2) :
    readout K x - readout K y =
      (inner ℂ (x - y) (K x)).re + (inner ℂ y (K (x - y))).re := by
  simp only [readout, inner_sub_left, map_sub, inner_sub_right, Complex.sub_re]
  ring

theorem state_readout_bound (K : ComplexL2 →L[ℂ] ComplexL2) (x y : ComplexL2) :
    |readout K x - readout K y| ≤ ‖K‖ * (‖x‖ + ‖y‖) * ‖x - y‖ := by
  rw [state_difference]
  calc
    _ ≤ |(inner ℂ (x - y) (K x)).re| + |(inner ℂ y (K (x - y))).re| := abs_add_le _ _
    _ ≤ ‖x - y‖ * ‖K x‖ + ‖y‖ * ‖K (x - y)‖ := by
      apply add_le_add
      · exact (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
      · exact (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
    _ ≤ ‖x - y‖ * (‖K‖ * ‖x‖) + ‖y‖ * (‖K‖ * ‖x - y‖) :=
      add_le_add (mul_le_mul_of_nonneg_left (K.le_opNorm x) (norm_nonneg _))
        (mul_le_mul_of_nonneg_left (K.le_opNorm (x - y)) (norm_nonneg _))
    _ = _ := by ring

/-- Changing the endpoint operator and endpoint state pays two different defects. -/
theorem operator_and_state_bound (K B : ComplexL2 →L[ℂ] ComplexL2) (x y : ComplexL2) :
    |readout K x - readout B y| ≤ ‖K - B‖ * ‖x‖ ^ 2 +
      ‖B‖ * (‖x‖ + ‖y‖) * ‖x - y‖ := by
  have h := abs_add_le (readout K x - readout B x) (readout B x - readout B y)
  have hk := quadratic_comparison_error K B x
  have hs := state_readout_bound B x y
  change |readout K x - readout B x| ≤ _ at hk
  have he : readout K x - readout B y =
      (readout K x - readout B x) + (readout B x - readout B y) := by ring
  rw [he]
  exact h.trans (add_le_add hk hs)

/-- Application to the original unit-normalized source and its complete closed prime moment. -/
theorem source_approximation_bound {A ε : ℝ} (hA : 0 < A) (hε : 0 ≤ ε)
    (B : ComplexL2 →L[ℂ] ComplexL2) (y : ComplexL2)
    (hy : ‖originalSourceState A - y‖ ≤ ε) :
    |EstimatePrimeSmoothDefect.closedPrimeMoment A - readout B y| ≤
      ‖mangoldtInteraction A - B‖ + ‖B‖ * (2 + ε) * ε := by
  rw [closedPrimeMoment_eq_quadratic hA]
  change |readout (mangoldtInteraction A) (originalSourceState A) - readout B y| ≤ _
  have hn := originalSourceState_norm hA
  have hny : ‖y‖ ≤ 1 + ε := by
    calc
      ‖y‖ = ‖originalSourceState A + (y - originalSourceState A)‖ := by congr 1; abel
      _ ≤ ‖originalSourceState A‖ + ‖y - originalSourceState A‖ := norm_add_le _ _
      _ ≤ 1 + ε := by rw [hn, norm_sub_rev]; exact add_le_add (le_refl 1) hy
  have hs := operator_and_state_bound (mangoldtInteraction A) B (originalSourceState A) y
  rw [hn, one_pow, mul_one] at hs
  apply hs.trans
  apply add_le_add (le_refl _)
  apply mul_le_mul
  · exact mul_le_mul_of_nonneg_left (by linarith only [hny]) (norm_nonneg B)
  · exact hy
  · exact norm_nonneg _
  · exact mul_nonneg (norm_nonneg B) (by linarith only [hε])

end
end FormalResearch.PositiveAtlas.Spectral.ReadoutTransportDefect
```
