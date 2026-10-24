# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualMertensOrdinaryLimit.Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c437547c7b01ca48a36fa098d46351ad747e5e96` · SHA-256 `385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
