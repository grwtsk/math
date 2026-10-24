# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variantaa24133a81c184a6dc03136dd628c422acecbc52371311da8a75bf59638eeb50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a0d3807208e22957833a3ad98a2f573aa0d04dc` · SHA-256 `c451c5c1fc71f38349c221f6ac22b9365a0b4dc4ab0cb41ba7f6f735f6610cf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhysicalDecayHasDerivAt.Variantea59441fb6acceb3a29a4f7315ea2994987d0477d594928389790f6566e2bd2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea59441fb6acceb3a29a4f7315ea2994987d0477d594928389790f6566e2bd2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PhysicalDecayHasDerivAt.Variantea59441fb6acceb3a29a4f7315ea2994987d0477d594928389790f6566e2bd2d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ea59441fb6acceb3a29a4f7315ea2994987d0477d594928389790f6566e2bd2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-far-periodic-budget/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPhysicalPeriodicPrimitive

/-!
The genuine physical periodic Abel estimate uses the full positive-column
decay moment. Both finite endpoints are retained; no independent main sector
or signed period mean is replaced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhysicalDecayHasDerivAt.Variantea59441fb6acceb3a29a4f7315ea2994987d0477d594928389790f6566e2bd2d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
open MeasureTheory Set
open scoped Interval
noncomputable section

private theorem physical_decay_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => (-2 / 3 : ℝ) * Real.exp (-3 * Real.log x / 2))
      (Real.exp (-5 * Real.log x / 2)) x := by
  have hd := ((((Real.hasDerivAt_log hx.ne').const_mul (-3)).div_const 2).exp).
    const_mul (-2 / 3 : ℝ)
  have he : Real.exp (-5 * Real.log x / 2) =
      Real.exp (-3 * Real.log x / 2) * x⁻¹ := by
    rw [← Real.exp_log hx, ← Real.exp_neg, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  convert hd using 1 <;> try rfl
  ring

private theorem physical_decay_integral {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) =
      (2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2)) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hc : ContinuousOn (fun x : ℝ => Real.exp (-5 * Real.log x / 2)) (uIcc l b) :=
    (((Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')).const_mul (-5)).
      div_const 2).exp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => physical_decay_hasDerivAt (hp x hx)) hc.intervalIntegrable
  rw [he]
  ring

private theorem physical_decay_integral_le {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) ≤
      (2 / 3 : ℝ) * Real.exp (-3 * Real.log l / 2) := by
  rw [physical_decay_integral hl hlb]
  nlinarith [Real.exp_pos (-3 * Real.log b / 2)]

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
```
