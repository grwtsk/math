# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualCriticalPntConsumer.Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `918240bbeba65c89058c328f5a21e92a7e7a88e3` · SHA-256 `91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCriticalPntBudget

/-!
An actual-source quantitative consumer for an explicitly supplied PNT envelope.
The input is about the independently specified actual Chebyshev relative error.
The resulting absolute budget is proved growing, so no uniform arithmetic
witness is inferred. AI attribution: OpenAI Codex independent research.
-/

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing

noncomputable section

/-- Explicit actual PNT control gives this genuine, quantitatively growing absolute budget. -/
theorem actual_criticalRelative_abs_le_pnt_budget (A c M : ℝ) (hA : 4 ≤ A)
    (hc : 0 ≤ c) (_hM : 0 ≤ M)
    (herr : ∀ t : ℝ, 0 < t → |relativePsiError t| ≤ M * Real.exp (-c * Real.sqrt t)) :
    |criticalRelativePairing A| ≤ M * actualCriticalPntAbsoluteBudget A c := by
  have hAi : 1 ≤ A := by linarith
  have hi := criticalKernel_integrable (A := A) hAi
  have hg := (actualCriticalPntAbsoluteIntegrand_integrable A c hA hc).const_mul M
  change |∫ t in Ioi (0 : ℝ), criticalKernel A t| ≤ _
  calc
    _ ≤ ∫ t in Ioi (0 : ℝ), |criticalKernel A t| := abs_integral_le_integral_abs
    _ ≤ ∫ t in Ioi (0 : ℝ), M * actualCriticalPntAbsoluteIntegrand A c t := by
      apply integral_mono_ae hi.abs hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have he : |criticalKernel A t| = |relativePsiError t| * |baselineLogKernel A t| := by
        unfold criticalKernel baselineLogKernel
        rw [abs_mul, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
        ring
      rw [he, actualCriticalPntAbsoluteIntegrand]
      have hb := mul_le_mul_of_nonneg_right (herr t ht) (abs_nonneg (baselineLogKernel A t))
      simpa only [mul_assoc] using hb
    _ = _ := by rw [integral_const_mul, actualCriticalPntAbsoluteBudget]

end
end RH16IndependentChallengeNext
```
