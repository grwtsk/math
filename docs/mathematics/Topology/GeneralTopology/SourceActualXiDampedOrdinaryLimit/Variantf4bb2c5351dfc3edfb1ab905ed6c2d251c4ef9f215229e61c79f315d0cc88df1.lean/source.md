# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualXiDampedOrdinaryLimit.Variantf4bb2c5351dfc3edfb1ab905ed6c2d251c4ef9f215229e61c79f315d0cc88df1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb253a0a938ec81d8200960a2986d40921f9e17` · SHA-256 `3326b5dfbe0a8785865d72da33fe6150d0600110d1cc5c879f317f7421323978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualPhysicalIntegralEqValue.Variantfa183b6667310a9ef0c6c531bf696af041a9ae3deb7957dffb9564ddf83bc99e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa183b6667310a9ef0c6c531bf696af041a9ae3deb7957dffb9564ddf83bc99e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualPhysicalIntegralEqValue.Variantfa183b6667310a9ef0c6c531bf696af041a9ae3deb7957dffb9564ddf83bc99e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fa183b6667310a9ef0c6c531bf696af041a9ae3deb7957dffb9564ddf83bc99e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualXiDampedOrdinaryLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMertensGammaCalibration
import SourceActualF7NormalizedPnt

/-!
The genuine ordinary inverse-square integral and the actual normalized upper
F7 trace identify the ordinary signed fixed-damped primitive limit. This
keeps the prescribed closed-seven value and gives no critical signed bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualPhysicalIntegralEqValue.Variantfa183b6667310a9ef0c6c531bf696af041a9ae3deb7957dffb9564ddf83bc99e

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiDampedOrdinaryLimit

open MeasureTheory Set Filter Complex
open scoped Interval Topology
open RH16ActualPsiNegativeBlock SourceActualXiDampedFiniteBound
open SourceActualXiPntAtOne SourceActualXiMellinAtOne SourceActualMertensGammaCalibration
open SourceActualXiErrorConvolution SourceActualF7NormalizedPnt

noncomputable section

private theorem actual_physical_integral_eq_value :
    (∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2) =
      actualXiErrorConvolutionSevenValue := by
  exact ofReal_inj.mp (actualXiInverseSquarePhysical_integral_eq_poleValue.trans
    actualXiSevenPoleValue_eq_convolutionSevenValue)

/-- The actual half primitive converges to its complete closed-seven value. -/
theorem actualDampedXiFinitePrimitive_half_tendsto_value :
    Tendsto (fun T : ℝ => (1 / 2 : ℝ) * actualDampedXiFinitePrimitive T) atTop
      (𝓝 actualXiErrorConvolutionSevenValue) := by
  have hp := intervalIntegral_tendsto_integral_Ioi (7 : ℝ)
    actualXiInverseSquarePhysical_integrableOn Real.tendsto_exp_atTop
  rw [actual_physical_integral_eq_value] at hp
  have h := hp.sub actualAnchoredXiTailPrimitive_normalized_tendsto_zero
  have he : (fun T : ℝ => (1 / 2 : ℝ) * actualDampedXiFinitePrimitive T) =ᶠ[atTop]
      fun T => (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) -
        RootActualXiTailPrimitive.actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
    filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualDampedXiFinitePrimitive_abel hT
  simpa only [sub_zero] using h.congr' he.symm

/-- The literal actual signed fixed-damped primitive has its ordinary limit. -/
theorem actualDampedXiFinitePrimitive_tendsto_value :
    Tendsto actualDampedXiFinitePrimitive atTop
      (𝓝 (2 * actualXiErrorConvolutionSevenValue)) := by
  simpa only [← mul_assoc, show (2 : ℝ) * (1 / 2) = 1 by norm_num, one_mul] using
    actualDampedXiFinitePrimitive_half_tendsto_value.const_mul 2

/-- The centered actual signed primitive tends to zero with its full head retained. -/
theorem actualDampedXiFinitePrimitive_centered_tendsto_zero :
    Tendsto (fun T : ℝ => actualDampedXiFinitePrimitive T -
      2 * actualXiErrorConvolutionSevenValue) atTop (𝓝 0) := by
  simpa only [sub_self] using
    actualDampedXiFinitePrimitive_tendsto_value.sub_const (2 * actualXiErrorConvolutionSevenValue)

end
end FormalResearch.RiemannHypothesis.SourceActualXiDampedOrdinaryLimit
```
