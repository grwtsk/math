# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualMertensOrdinaryLimit.Variant670f29ce11c7ea2495fd0fa16fdedafc2fade51564bda3362feed1bc92f25dfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8329c96419680b4fbf862e0e85adc28d267ee3a` · SHA-256 `65725e9823d08abb345cc05ff120785de0363e8bdd1cd39103b51a9ec831ddb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualPntMertensLimit.Variant20226336428e8622e15aa9bc636880b94d452ca72e134b9088d9d52b96c1ab9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20226336428e8622e15aa9bc636880b94d452ca72e134b9088d9d52b96c1ab9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualPntMertensLimit.Variant20226336428e8622e15aa9bc636880b94d452ca72e134b9088d9d52b96c1ab9c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"20226336428e8622e15aa9bc636880b94d452ca72e134b9088d9d52b96c1ab9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualMertensOrdinaryLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiErrorTimeNormalization
import SourceActualPsiPntTimeDecay
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
The actual PNT supplies a genuine ordinary limit for the actual weighted
Mangoldt error, using the proved finite plus-one normalization. Its value is
the actual signed time integral; Euler-constant calibration is not assumed.
This gives no critical exponential rate or critical signed covariance bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualPntMertensLimit.Variant20226336428e8622e15aa9bc636880b94d452ca72e134b9088d9d52b96c1ab9c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMertensOrdinaryLimit

open MeasureTheory Set Filter SourceMangoldtAbel
open scoped Interval Topology

noncomputable section

/-- The actual signed integral defines the ordinary Mertens-error center. -/
def actualPntMertensLimit : ℝ := 1 +
  ∫ r in Ioi 0, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r

/-- The two literal actual-error definitions agree at every real time. -/
theorem actualRelativePsiTimeError_eq_pnt_error (t : ℝ) :
    SourceActualPsiErrorTimeNormalization.actualRelativePsiTimeError t =
      SourceActualPsiPntTimeDecay.actualRelativePsiTimeError t := by
  exact SourceActualPsiErrorTimeNormalization.actualRelativePsiTimeError_eq_normalizedPsi t

/-- The finite actual identity carries the plus-one trace into the PNT context. -/
theorem mangoldtLogError_eq_pnt_relative_primitive {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t = 1 + SourceActualPsiPntTimeDecay.actualRelativePsiTimeError t +
      ∫ r in 0..t, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r := by
  rw [SourceActualPsiErrorTimeNormalization.mangoldtLogError_eq_relative_primitive ht]
  simp only [actualRelativePsiTimeError_eq_pnt_error]

/-- Full actual positive-time L1 gives a genuine ordinary primitive limit. -/
theorem actualRelativePsiTimePrimitive_tendsto :
    Tendsto (fun t : ℝ => ∫ r in 0..t,
      SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r) atTop
      (𝓝 (∫ r in Ioi 0, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r)) := by
  exact intervalIntegral_tendsto_integral_Ioi 0
    (SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_integrableOn.mono_set
      Ioi_subset_Ici_self) tendsto_id

/-- The actual weighted Mangoldt error has a finite ordinary limit. -/
theorem mangoldtLogError_tendsto_actualPntMertensLimit :
    Tendsto mangoldtLogError atTop (𝓝 actualPntMertensLimit) := by
  have h := (((tendsto_const_nhds (x := (1 : ℝ))).add
    SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_tendsto_zero).add
      actualRelativePsiTimePrimitive_tendsto)
  have he : mangoldtLogError =ᶠ[atTop] fun t : ℝ =>
      1 + SourceActualPsiPntTimeDecay.actualRelativePsiTimeError t +
        ∫ r in 0..t, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r := by
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
    exact mangoldtLogError_eq_pnt_relative_primitive ht
  simpa only [actualPntMertensLimit, add_zero] using h.congr' he.symm

/-- Centering by gamma transports the ordinary limit without calibrating it. -/
theorem actualCenteredMangoldtLogError_tendsto :
    Tendsto SourceActualXiErrorConvolution.actualCenteredMangoldtLogError atTop
      (𝓝 (actualPntMertensLimit + Real.eulerMascheroniConstant)) := by
  exact mangoldtLogError_tendsto_actualPntMertensLimit.add_const _

end
end FormalResearch.RiemannHypothesis.SourceActualMertensOrdinaryLimit
```
