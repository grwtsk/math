# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.29SourceShortSamplingPointwise.Variant6327d2f815c708abca89ce04e9c78be001a0ca93f1c81ce2e20a2c572f2b9cad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5181694476470730aaeb28a490a6aed76f4a1141` · SHA-256 `6327d2f815c708abca89ce04e9c78be001a0ca93f1c81ce2e20a2c572f2b9cad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceSamplingPointwise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate

/-!
# Literal retained short kernels and positive-axis sampling profiles

Review-only adapter over the unchanged recorded Vaughan source closure.
The fixed closed inventory is retained exactly. Both profiles use the material
zero extension, while each actual integer sample has a positive input.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceShortSamplingPointwise

open SourcePairing SourceSamplingTaylor SourcePositiveSampling SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceMobiusKernel EstimatePlainKernel EstimateLogSampling

/-- The actual plain kernel is exactly the positive profile's fixed closed inventory. -/
theorem plainProfile_sum_eq_sourcePlainKernel (A : ℝ) {k : ℝ} (hk : 0 < k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), plainProfile A k n) = sourcePlainKernel A k := by
  unfold sourcePlainKernel
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  rw [plainProfile_eq_of_pos A k hn0, sourcePlainSamplingTerm_eq_source_weight A hk hn0]
  rfl

/-- The actual logarithmic Möbius kernel is exactly the positive logarithmic profile inventory. -/
theorem logProfile_sum_eq_sourceMobiusKernel (A : ℝ) {k : ℝ} (hk : 0 < k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) = sourceMobiusKernel A k := by
  unfold sourceMobiusKernel
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  rw [logProfile_eq_of_pos A k hn0]
  simpa only [sourceLogSamplingTerm, sourcePlainSamplingTerm, logSamplingTerm, mul_assoc] using
    logSamplingTerm_source_eq A k n hk (Finset.mem_Icc.mp hn).1

/-- The actual closed plain source kernel has the unconditional retained-coefficient error. -/
theorem sourcePlainKernel_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |sourcePlainKernel A k - sourcePlainSamplingMainTerm A k| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
  rw [← plainProfile_sum_eq_sourcePlainKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact plainProfile_sum_sub_mainTerm_abs_le hA hk

/-- The actual closed logarithmic source kernel retains the whole positive-axis cancellation. -/
theorem sourceMobiusKernel_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |sourceMobiusKernel A k - sourceLogSamplingMainTerm A k| ≤
      96 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
  rw [← logProfile_sum_eq_sourceMobiusKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact logProfile_sum_sub_mainTerm_abs_le hA hk

end FormalResearch.RiemannHypothesis.SourceShortSamplingPointwise
```
