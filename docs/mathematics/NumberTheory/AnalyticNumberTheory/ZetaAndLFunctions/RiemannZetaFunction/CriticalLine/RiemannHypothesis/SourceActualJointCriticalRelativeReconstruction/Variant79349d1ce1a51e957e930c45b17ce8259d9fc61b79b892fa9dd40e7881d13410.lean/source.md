# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualJointCriticalRelativeReconstruction.Variant79349d1ce1a51e957e930c45b17ce8259d9fc61b79b892fa9dd40e7881d13410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `971d5418d87c9901750363cea69addb4d18da194` · SHA-256 `880cf9a4201ed770da836ddd933cdddb397f02c816a6ef7a01a2ffd32ba192bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalRelativeJointReadoutAbsLe.Variantf03d170ae6c0e54c4110ba6d82d11a25f7c62ec6b4c3c5775f3c002353f3f621","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f03d170ae6c0e54c4110ba6d82d11a25f7c62ec6b4c3c5775f3c002353f3f621","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCriticalRelativeJointReadoutAbsLe.Variantf03d170ae6c0e54c4110ba6d82d11a25f7c62ec6b4c3c5775f3c002353f3f621","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f03d170ae6c0e54c4110ba6d82d11a25f7c62ec6b4c3c5775f3c002353f3f621","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T102714Z-1791368834176814000/SourceActualJointCriticalRelativeReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualComplementCriticalRelative

/-!
Exact joint cancellation pays only the genuine closed short replacement.
The independently defined actual relative-Psi pairing and the full signed
long Mangoldt inventory are retained. No uniform bound is constructed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalRelativeJointReadoutAbsLe.Variantf03d170ae6c0e54c4110ba6d82d11a25f7c62ec6b4c3c5775f3c002353f3f621

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
