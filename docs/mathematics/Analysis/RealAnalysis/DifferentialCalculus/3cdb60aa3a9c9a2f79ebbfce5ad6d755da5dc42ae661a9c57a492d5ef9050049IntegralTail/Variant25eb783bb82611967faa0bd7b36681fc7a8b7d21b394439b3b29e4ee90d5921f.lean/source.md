# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail.Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a40185e398ddec88ec7cda16474c27d993eaa59` · SHA-256 `5a0f4058f48446110c9aa50fafab5bbef2d10a755b20b4a6582e0155761aa1a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralTail.Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.IntegralTail.Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049","mathematical_subject":"Analysis.Calculus","original_sha256":"3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3c/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049--IntegralTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Tactic


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralTail.Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

def integralTail (f : ℝ → ℝ) (t : ℝ) : ℝ := (∫ u in Ici t, f u)

private theorem integrableOn_Ici_of_continuous
    {f : ℝ → ℝ} (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    IntegrableOn f (Ici t) := by
  by_cases ht : 0 ≤ t
  · exact hi.mono_set (Ici_subset_Ici.mpr ht)
  · apply ((hc.continuousOn.integrableOn_Icc (a := t) (b := 0)).union hi).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

private theorem integralTail_eq_sub {f : ℝ → ℝ}
    (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    integralTail f t = integralTail f 0 - (∫ u in (0 : ℝ)..t, f u) := by
  have h := intervalIntegral.integral_Ici_sub_Ici' hi
    (integrableOn_Ici_of_continuous hc hi t)
  dsimp only [integralTail]
  linarith

theorem hasDerivAt_integralTail {f : ℝ → ℝ}
    (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    HasDerivAt (integralTail f) (-f t) t := by
  have heq : integralTail f = fun t => integralTail f 0 - (∫ u in (0 : ℝ)..t, f u) :=
    funext (integralTail_eq_sub hc hi)
  rw [heq]
  exact (intervalIntegral.integral_hasDerivAt_right
    (hc.intervalIntegrable 0 t) (hc.stronglyMeasurableAtFilter volume _)
    hc.continuousAt).const_sub _

theorem integralTail_positive {f : ℝ → ℝ}
    (hi : IntegrableOn f (Ici (0 : ℝ))) (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    {t : ℝ} (ht : 0 ≤ t) : 0 < integralTail f t := by
  unfold integralTail
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (hi.mono_set (Ici_subset_Ici.mpr ht))).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have hut : t ≤ u := by have := hu.1; linarith
    exact ⟨(hp u (ht.trans hut)).ne', hut⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact (hp u (ht.trans hu)).le

theorem logSlope_cross_nonnegative {f : ℝ → ℝ}
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t u : ℝ} (ht : 0 ≤ t) (htu : t ≤ u) :
    0 ≤ deriv f t * f u - f t * deriv f u := by
  have h := (div_le_div_iff₀ (hp u (ht.trans htu)) (hp t ht)).mp
    (ha ht (ht.trans htu) htu)
  nlinarith only [h]

theorem integral_deriv_Ici_eq_neg {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0)) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, deriv f u) = -f t := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun u (_hu : u ∈ Ici t) => (hd u).hasDerivAt)
    (hi.mono_set (fun _ hu => ht.trans hu.le)) hz
  rw [← integral_Ici_eq_integral_Ioi] at h
  simpa using h

theorem integralTail_logSlope_identity {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0)) {t : ℝ} (ht : 0 ≤ t) :
    f t ^ 2 + integralTail f t * deriv f t =
      (∫ u in Ici t, (deriv f t * f u - f t * deriv f u)) := by
  have hf := hi.mono_set (Ici_subset_Ici.mpr ht)
  have hdf := hdi.mono_set (Ici_subset_Ici.mpr ht)
  rw [integral_sub (hf.const_mul _) (hdf.const_mul _), integral_const_mul,
    integral_const_mul, integral_deriv_Ici_eq_neg hd hdi hz ht]
  unfold integralTail
  ring

theorem integralTail_logSlope_nonnegative {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ f t ^ 2 + integralTail f t * deriv f t := by
  rw [integralTail_logSlope_identity hd hi hdi hz ht]
  exact setIntegral_nonneg measurableSet_Ici fun u hu =>
    logSlope_cross_nonnegative hp ha ht hu

theorem hasDerivAt_integralTail_ratio {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) {t : ℝ} (hf : f t ≠ 0) :
    HasDerivAt (fun u => integralTail f u / f u)
      (-(f t ^ 2 + integralTail f t * deriv f t) / f t ^ 2) t := by
  convert! (hasDerivAt_integralTail hd.continuous hi t).div (hd t).hasDerivAt hf using 1
  ring

theorem integralTail_ratio_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => integralTail f u / f u) (Ici (0 : ℝ)) := by
  have hderiv (t : ℝ) (ht : 0 ≤ t) := hasDerivAt_integralTail_ratio hd hi (hp t ht).ne'
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · intro t ht
    exact (hderiv t ht).continuousAt.continuousWithinAt
  · intro t ht
    exact (hderiv t (interior_subset ht)).differentiableAt.differentiableWithinAt
  · intro t ht
    rw [(hderiv t (interior_subset ht)).deriv]
    exact div_nonpos_of_nonpos_of_nonneg
      (neg_nonpos.mpr (integralTail_logSlope_nonnegative hd hi hdi hz hp ha (interior_subset ht)))
      (sq_nonneg _)

theorem integralTail_logSlope_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => deriv (integralTail f) u / integralTail f u) (Ici (0 : ℝ)) := by
  intro t ht u hu htu
  dsimp only
  rw [(hasDerivAt_integralTail hd.continuous hi u).deriv,
    (hasDerivAt_integralTail hd.continuous hi t).deriv]
  have h := (div_le_div_iff₀ (hp u hu) (hp t ht)).mp
    (integralTail_ratio_antitone hd hi hdi hz hp ha ht hu htu)
  apply (div_le_div_iff₀ (integralTail_positive hi hp hu)
    (integralTail_positive hi hp ht)).mpr
  nlinarith only [h]

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
