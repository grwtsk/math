# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualJointCriticalRelativeReconstruction.Variant78fac8ad5a31a666645cb5771f6108631bddbbf1f7172fda6962b3da7d79dd31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dc6c73a7962c17aa7983a01a8d931e87eb54eab` · SHA-256 `78fac8ad5a31a666645cb5771f6108631bddbbf1f7172fda6962b3da7d79dd31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualComplementCriticalRelative

/-!
Exact joint cancellation pays only the genuine closed short replacement.
The independently defined actual relative-Psi pairing and the full signed
long Mangoldt inventory are retained. No uniform bound is constructed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointCriticalRelativeReconstruction

open Filter
open scoped Topology
open SourceActualComplementCriticalRelative SourceActualShortMangoldtBlock
open SourceActualXiErrorConvolution SourceCriticalRelativeCompensation SourceFirstPrimeAbel
open OmegaResearch.CriticalRelativePairing

/-- Combining the exact actual readouts cancels the near error before the absolute value. -/
theorem actualCriticalRelative_joint_readout_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |criticalRelativePairing A - (actualLongMangoldtBlock A +
      actualMangoldtHalfClosedPrefix (2 * Real.log A) - 1 - criticalContinuousMoment A)| ≤
      20 * (Real.log 4 + 4) * (Real.log A) ^ 2 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actualResidual_eq_short_add_long hA1
  have hj := mertensResidual_eq_criticalRelative_add_baseline hA1
  have he : criticalRelativePairing A - (actualLongMangoldtBlock A +
      actualMangoldtHalfClosedPrefix (2 * Real.log A) - 1 - criticalContinuousMoment A) =
      actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A) := by
    linarith only [hr, hj]
  rw [he]
  exact actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le hA

/-- The joint closed arithmetic replacement tends to zero before normalization. -/
theorem actualCriticalRelative_joint_readout_tendsto_zero :
    Tendsto (fun A : ℝ => criticalRelativePairing A - (actualLongMangoldtBlock A +
      actualMangoldtHalfClosedPrefix (2 * Real.log A) - 1 - criticalContinuousMoment A))
      atTop (𝓝 0) := by
  have ht : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 one_ne_zero
  have hh := ht.const_mul (20 * (Real.log 4 + 4))
  simp only [mul_zero] at hh
  apply squeeze_zero_norm' ?_ hh
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs, mul_div_assoc] using actualCriticalRelative_joint_readout_abs_le hA

end FormalResearch.RiemannHypothesis.SourceActualJointCriticalRelativeReconstruction
```
