# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile.Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d080fad9cddc20efa3c8303452d5c49f8450ce9` · SHA-256 `f4cb13edbafa5c7bd1fa93cbaffa77c7f36e48af24406383190546e6e3966808`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtJetRatio.Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivAtJetRatio.Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a","mathematical_subject":"Analysis.Calculus","original_sha256":"a30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a3/a30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a--Criterion-02-failed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.MeasureTheory.Integral.Bochner.Basic


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtJetRatio.Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a

open Set Matrix MeasureTheory

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

theorem hasDerivAt_jetRatio (f0 f1 f2 f3 f4 : ℝ → ℝ) {t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) (h3 : HasDerivAt f3 (f4 t) t)
    (hw : f0 t * f2 t - f1 t ^ 2 ≠ 0) :
    HasDerivAt (fun u => (f0 u * f3 u - f1 u * f2 u) /
      (f0 u * f2 u - f1 u ^ 2))
      (f0 t * Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t;
        f2 t, f3 t, f4 t] / (f0 t * f2 t - f1 t ^ 2) ^ 2) t := by
  convert! ((h0.mul h3).sub (h1.mul h2)).div ((h0.mul h2).sub (h1.pow 2)) hw using 1
  simp [Matrix.det_fin_three]
  ring

theorem source_jet_det_nonpos_of_wronskian
    (f0 f1 f2 f3 f4 : ℝ → ℝ)
    (hd0 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f0 (f1 t) t)
    (hd1 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f1 (f2 t) t)
    (hd2 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f2 (f3 t) t)
    (hd3 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f3 (f4 t) t)
    (hp : ∀ t ∈ Ici (0 : ℝ), 0 < f0 t)
    (hw2 : ∀ t ∈ Ici (0 : ℝ), f0 t * f2 t - f1 t ^ 2 < 0)
    (hw3 : ∀ t ∈ Ici (0 : ℝ),
      Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t; f2 t, f3 t, f4 t] ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![f0 x, f0 y, f0 z; f1 x, f1 y, f1 z; f2 x, f2 y, f2 z] ≤ 0 := by
  let d1 := fun t => (f0 t * f2 t - f1 t ^ 2) / f0 t ^ 2
  let d2 := fun t => (f0 t * f3 t - f1 t * f2 t) / f0 t ^ 2
  let k := fun t => (f0 t * f3 t - f1 t * f2 t) / (f0 t * f2 t - f1 t ^ 2)
  have hkder t (ht : t ∈ Ici (0 : ℝ)) := hasDerivAt_jetRatio f0 f1 f2 f3 f4
    (hd0 t ht) (hd1 t ht) (hd2 t ht) (hd3 t ht) (ne_of_lt (hw2 t ht))
  have hk : AntitoneOn k (Ici 0) := by
    apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
    · exact fun t ht => (hkder t ht).continuousAt.continuousWithinAt
    · exact fun t ht => (hkder t (interior_subset ht)).differentiableAt.differentiableWithinAt
    · intro t ht
      rw [(hkder t (interior_subset ht)).deriv]
      exact div_nonpos_of_nonpos_of_nonneg
        (mul_nonpos_of_nonneg_of_nonpos (hp t (interior_subset ht)).le
          (hw3 t (interior_subset ht))) (sq_nonneg _)
  have hdq1 t (ht : t ∈ Ici (0 : ℝ)) :
      HasDerivAt (fun u => f1 u / f0 u) (d1 t) t := by
    convert! (hd1 t ht).div (hd0 t ht) (hp t ht).ne' using 1
    dsimp [d1]
    ring
  have hdq2 t (ht : t ∈ Ici (0 : ℝ)) :
      HasDerivAt (fun u => f2 u / f0 u) (d2 t) t := by
    convert! (hd2 t ht).div (hd0 t ht) (hp t ht).ne' using 1
    dsimp [d2]
    ring
  have heq t (ht : t ∈ Ici (0 : ℝ)) : d2 t / d1 t = k t := by
    dsimp [d1, d2, k]
    field_simp [(hp t ht).ne', ne_of_lt (hw2 t ht)]
  have hcc : Icc x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1
  have hoo : Ioo x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1.le
  have hn := normalized_det_nonpos_of_antitone_deriv_ratio
    (fun t => f1 t / f0 t) (fun t => f2 t / f0 t) d1 d2 hxy hyz
    (fun t ht => (hdq1 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => (hdq2 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => hdq1 t (hoo ht)) (fun t ht => hdq2 t (hoo ht))
    (fun t ht => div_neg_of_neg_of_pos (hw2 t (hoo ht)) (sq_pos_of_pos (hp t (hoo ht))))
    (by
      intro a ha b hb hab
      change d2 b / d1 b ≤ d2 a / d1 a
      rw [heq a (hoo ha), heq b (hoo hb)]
      exact hk (hoo ha) (hoo hb) hab)
  have hy : 0 ≤ y := hx.trans hxy.le
  have hz : 0 ≤ z := hy.trans hyz.le
  have hf := det_fin_three_normalize_first_row
    !![f0 x, f0 y, f0 z; f1 x, f1 y, f1 z; f2 x, f2 y, f2 z]
    (by intro j; fin_cases j <;> simp [ne_of_gt (hp x hx), ne_of_gt (hp y hy), ne_of_gt (hp z hz)])
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val,
    ] at hf
  rw [hf]
  exact mul_nonpos_of_nonneg_of_nonpos
    (mul_nonneg (mul_nonneg (hp x hx).le (hp y hy).le) (hp z hz).le) hn

theorem residual_cross_nonpos_of_source_jet_det
    (f0 f1 f2 : ℝ → ℝ) (t u v : ℝ) (hp : 0 ≤ f0 t)
    (hd : Matrix.det !![f0 t, f0 u, f0 v; f1 t, f1 u, f1 v; f2 t, f2 u, f2 v] ≤ 0) :
    (f2 t * f0 v - f0 t * f2 v) * (f1 t * f0 u - f0 t * f1 u) -
      (f2 t * f0 u - f0 t * f2 u) * (f1 t * f0 v - f0 t * f1 v) ≤ 0 := by
  have heq := oriented_plucker_three_scalar
    (f0 t) (f1 t) (f2 t) (f0 u) (f1 u) (f2 u) (f0 v) (f1 v) (f2 v)
  have hprod := mul_nonpos_of_nonneg_of_nonpos hp hd
  simp [Matrix.det_fin_three] at hprod
  nlinarith only [heq, hprod]

theorem integral_moment_cross_nonpos {α : Type*} [MeasurableSpace α] (μ : Measure α)
    (A C w : α → ℝ) (hA : Integrable A μ) (hC : Integrable C μ)
    (hwA : Integrable (fun u => w u * A u) μ)
    (hwC : Integrable (fun u => w u * C u) μ)
    (hcross : ∀ᵐ v ∂μ, ∀ᵐ u ∂μ, (w u - w v) * (C u * A v - A u * C v) ≤ 0) :
    (∫ u, w u * C u ∂μ) * (∫ u, A u ∂μ) -
      (∫ u, w u * A u ∂μ) * (∫ u, C u ∂μ) ≤ 0 := by
  have hinner : ∀ᵐ v ∂μ,
      (∫ u, w u * C u ∂μ) * A v - (∫ u, w u * A u ∂μ) * C v -
        (∫ u, C u ∂μ) * (w v * A v) + (∫ u, A u ∂μ) * (w v * C v) ≤ 0 := by
    filter_upwards [hcross] with v hv
    have h := integral_nonpos_of_ae hv
    have heq : (fun u => (w u - w v) * (C u * A v - A u * C v)) =
        fun u => (w u * C u) * A v - (w u * A u) * C v -
          C u * (w v * A v) + A u * (w v * C v) := by funext u; ring
    rw [heq] at h
    rw [integral_add (f := fun u => (w u * C u) * A v - (w u * A u) * C v -
      C u * (w v * A v)) ((hwC.mul_const _).sub (hwA.mul_const _) |>.sub (hC.mul_const _))
      (hA.mul_const _)] at h
    rw [integral_sub (f := fun u => (w u * C u) * A v - (w u * A u) * C v)
      ((hwC.mul_const _).sub (hwA.mul_const _)) (hC.mul_const _),
      integral_sub (hwC.mul_const _) (hwA.mul_const _)] at h
    simpa only [integral_mul_const] using h
  have h := integral_nonpos_of_ae hinner
  rw [integral_add (f := fun v => (∫ u, w u * C u ∂μ) * A v -
    (∫ u, w u * A u ∂μ) * C v - (∫ u, C u ∂μ) * (w v * A v))
    (((hA.const_mul _).sub (hC.const_mul _)).sub (hwA.const_mul _)) (hwC.const_mul _)] at h
  rw [integral_sub (f := fun v => (∫ u, w u * C u ∂μ) * A v -
    (∫ u, w u * A u ∂μ) * C v) ((hA.const_mul _).sub (hC.const_mul _))
    (hwA.const_mul _), integral_sub (hA.const_mul _) (hC.const_mul _)] at h
  simp only [integral_const_mul] at h
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
