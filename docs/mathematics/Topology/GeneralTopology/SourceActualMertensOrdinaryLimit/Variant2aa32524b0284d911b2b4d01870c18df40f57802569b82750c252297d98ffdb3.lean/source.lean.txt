-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualPntMertensLimit.Variant1cf2f12d62b625ae6f2ed17e1ab6889548d78aad0eb5b2b690d604cff6ceeb0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cf2f12d62b625ae6f2ed17e1ab6889548d78aad0eb5b2b690d604cff6ceeb0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualPntMertensLimit.Variant1cf2f12d62b625ae6f2ed17e1ab6889548d78aad0eb5b2b690d604cff6ceeb0b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1cf2f12d62b625ae6f2ed17e1ab6889548d78aad0eb5b2b690d604cff6ceeb0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T024020Z-1791340820546673000/SourceActualMertensOrdinaryLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Topology.GeneralTopology.ActualPntMertensLimit.Variant1cf2f12d62b625ae6f2ed17e1ab6889548d78aad0eb5b2b690d604cff6ceeb0b

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
  have h := ((tendsto_const_nhds.add
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
