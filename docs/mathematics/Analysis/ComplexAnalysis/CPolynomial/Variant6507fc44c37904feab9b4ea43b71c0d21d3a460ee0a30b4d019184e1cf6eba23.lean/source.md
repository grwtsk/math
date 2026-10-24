# Complete source: GRWTSK.Analysis.ComplexAnalysis.CPolynomial.Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9baa8381560f64df4fc54cdfd38730f88a67d772` · SHA-256 `d25fabf47cfe3bd4371cf1687d982b437108f3d733cdf02d03952fa17a8c2dca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.HasFiniteFPowerSeriesOnBallConst.Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.HasFiniteFPowerSeriesOnBallConst.Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Analytic/CPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sophie Morel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel
-/
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Analytic.CPolynomialDef

/-! # Properties of continuously polynomial functions

We expand the API around continuously polynomial functions. Notably, we show that this class is
stable under the usual operations (addition, subtraction, negation).

We also prove that continuous multilinear maps are continuously polynomial, and so
are continuous linear maps into continuous multilinear maps. In particular, such maps are
analytic.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.HasFiniteFPowerSeriesOnBallConst.Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15

variable {𝕜 E F G : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F] [NormedAddCommGroup G] [NormedSpace 𝕜 G]

open scoped Topology
open Set Filter Asymptotics NNReal ENNReal

variable {f g : E → F} {p pf pg : FormalMultilinearSeries 𝕜 E F} {x : E} {r r' : ℝ≥0∞} {n m : ℕ}

theorem hasFiniteFPowerSeriesOnBall_const {c : F} {e : E} :
    HasFiniteFPowerSeriesOnBall (fun _ => c) (constFormalMultilinearSeries 𝕜 E c) e 1 ⊤ :=
  ⟨hasFPowerSeriesOnBall_const, fun n hn ↦ constFormalMultilinearSeries_apply (id hn : 0 < n).ne'⟩

theorem hasFiniteFPowerSeriesAt_const {c : F} {e : E} :
    HasFiniteFPowerSeriesAt (fun _ => c) (constFormalMultilinearSeries 𝕜 E c) e 1 :=
  ⟨⊤, hasFiniteFPowerSeriesOnBall_const⟩

theorem CPolynomialAt_const {v : F} : CPolynomialAt 𝕜 (fun _ => v) x :=
  ⟨constFormalMultilinearSeries 𝕜 E v, 1, hasFiniteFPowerSeriesAt_const⟩

theorem CPolynomialOn_const {v : F} {s : Set E} : CPolynomialOn 𝕜 (fun _ => v) s :=
  fun _ _ => CPolynomialAt_const

theorem HasFiniteFPowerSeriesOnBall.add (hf : HasFiniteFPowerSeriesOnBall f pf x n r)
    (hg : HasFiniteFPowerSeriesOnBall g pg x m r) :
    HasFiniteFPowerSeriesOnBall (f + g) (pf + pg) x (max n m) r :=
  ⟨hf.1.add hg.1, fun N hN ↦ by
    rw [Pi.add_apply, hf.finite _ ((le_max_left n m).trans hN),
        hg.finite _ ((le_max_right n m).trans hN), zero_add]⟩

theorem HasFiniteFPowerSeriesAt.add (hf : HasFiniteFPowerSeriesAt f pf x n)
    (hg : HasFiniteFPowerSeriesAt g pg x m) :
    HasFiniteFPowerSeriesAt (f + g) (pf + pg) x (max n m) := by
  rcases (hf.eventually.and hg.eventually).exists with ⟨r, hr⟩
  exact ⟨r, hr.1.add hr.2⟩

theorem CPolynomialAt.add (hf : CPolynomialAt 𝕜 f x) (hg : CPolynomialAt 𝕜 g x) :
    CPolynomialAt 𝕜 (f + g) x :=
  let ⟨_, _, hpf⟩ := hf
  let ⟨_, _, hqf⟩ := hg
  (hpf.add hqf).cpolynomialAt

theorem HasFiniteFPowerSeriesOnBall.neg (hf : HasFiniteFPowerSeriesOnBall f pf x n r) :
    HasFiniteFPowerSeriesOnBall (-f) (-pf) x n r :=
  ⟨hf.1.neg, fun m hm ↦ by rw [Pi.neg_apply, hf.finite m hm, neg_zero]⟩

theorem HasFiniteFPowerSeriesAt.neg (hf : HasFiniteFPowerSeriesAt f pf x n) :
    HasFiniteFPowerSeriesAt (-f) (-pf) x n :=
  let ⟨_, hrf⟩ := hf
  hrf.neg.hasFiniteFPowerSeriesAt

theorem CPolynomialAt.neg (hf : CPolynomialAt 𝕜 f x) : CPolynomialAt 𝕜 (-f) x :=
  let ⟨_, _, hpf⟩ := hf
  hpf.neg.cpolynomialAt

theorem HasFiniteFPowerSeriesOnBall.sub (hf : HasFiniteFPowerSeriesOnBall f pf x n r)
    (hg : HasFiniteFPowerSeriesOnBall g pg x m r) :
    HasFiniteFPowerSeriesOnBall (f - g) (pf - pg) x (max n m) r := by
  simpa only [sub_eq_add_neg] using hf.add hg.neg

theorem HasFiniteFPowerSeriesAt.sub (hf : HasFiniteFPowerSeriesAt f pf x n)
    (hg : HasFiniteFPowerSeriesAt g pg x m) :
    HasFiniteFPowerSeriesAt (f - g) (pf - pg) x (max n m) := by
  simpa only [sub_eq_add_neg] using hf.add hg.neg

theorem CPolynomialAt.sub (hf : CPolynomialAt 𝕜 f x) (hg : CPolynomialAt 𝕜 g x) :
    CPolynomialAt 𝕜 (f - g) x := by
  simpa only [sub_eq_add_neg] using hf.add hg.neg

theorem CPolynomialOn.add {s : Set E} (hf : CPolynomialOn 𝕜 f s) (hg : CPolynomialOn 𝕜 g s) :
    CPolynomialOn 𝕜 (f + g) s :=
  fun z hz => (hf z hz).add (hg z hz)

theorem CPolynomialOn.sub {s : Set E} (hf : CPolynomialOn 𝕜 f s) (hg : CPolynomialOn 𝕜 g s) :
    CPolynomialOn 𝕜 (f - g) s :=
  fun z hz => (hf z hz).sub (hg z hz)


/-!
### Continuous multilinear maps

We show that continuous multilinear maps are continuously polynomial, and therefore analytic.
-/

namespace ContinuousMultilinearMap

variable {ι : Type*} {Em : ι → Type*} [∀ i, NormedAddCommGroup (Em i)] [∀ i, NormedSpace 𝕜 (Em i)]
  [Fintype ι] (f : ContinuousMultilinearMap 𝕜 Em F) {x : Π i, Em i} {s : Set (Π i, Em i)}

open FormalMultilinearSeries

protected theorem hasFiniteFPowerSeriesOnBall :
    HasFiniteFPowerSeriesOnBall f f.toFormalMultilinearSeries 0 (Fintype.card ι + 1) ⊤ :=
  .mk' (fun _ hm ↦ dif_neg (Nat.succ_le_iff.mp hm).ne) ENNReal.zero_lt_top fun y _ ↦ by
    rw [Finset.sum_eq_single_of_mem _ (Finset.self_mem_range_succ _), zero_add]
    · rw [toFormalMultilinearSeries, dif_pos rfl]; rfl
    · intro m _ ne; rw [toFormalMultilinearSeries, dif_neg ne.symm]; rfl

lemma cpolynomialAt  : CPolynomialAt 𝕜 f x :=
  f.hasFiniteFPowerSeriesOnBall.cpolynomialAt_of_mem
    (by simp only [Metric.emetric_ball_top, Set.mem_univ])

lemma cpolynomialOn : CPolynomialOn 𝕜 f s := fun _ _ ↦ f.cpolynomialAt

@[deprecated (since := "2025-02-15")] alias cpolyomialOn := cpolynomialOn

lemma analyticOnNhd : AnalyticOnNhd 𝕜 f s := f.cpolynomialOn.analyticOnNhd

lemma analyticOn : AnalyticOn 𝕜 f s := f.analyticOnNhd.analyticOn

lemma analyticAt : AnalyticAt 𝕜 f x := f.cpolynomialAt.analyticAt

lemma analyticWithinAt : AnalyticWithinAt 𝕜 f s x := f.analyticAt.analyticWithinAt

end ContinuousMultilinearMap


/-!
### Continuous linear maps into continuous multilinear maps

We show that a continuous linear map into continuous multilinear maps is continuously polynomial
(as a function of two variables, i.e., uncurried). Therefore, it is also analytic.
-/

namespace ContinuousLinearMap

variable {ι : Type*} {Em : ι → Type*} [∀ i, NormedAddCommGroup (Em i)] [∀ i, NormedSpace 𝕜 (Em i)]
  [Fintype ι] (f : G →L[𝕜] ContinuousMultilinearMap 𝕜 Em F)
  {s : Set (G × (Π i, Em i))} {x : G × (Π i, Em i)}

/-- Formal multilinear series associated to a linear map into multilinear maps. -/
noncomputable def toFormalMultilinearSeriesOfMultilinear :
    FormalMultilinearSeries 𝕜 (G × (Π i, Em i)) F :=
  fun n ↦ if h : Fintype.card (Option ι) = n then
    (f.continuousMultilinearMapOption).domDomCongr (Fintype.equivFinOfCardEq h)
  else 0

protected theorem hasFiniteFPowerSeriesOnBall_uncurry_of_multilinear :
    HasFiniteFPowerSeriesOnBall (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2)
      f.toFormalMultilinearSeriesOfMultilinear 0 (Fintype.card (Option ι) + 1) ⊤ := by
  apply HasFiniteFPowerSeriesOnBall.mk' ?_ ENNReal.zero_lt_top  ?_
  · intro m hm
    apply dif_neg
    exact Nat.ne_of_lt hm
  · intro y _
    rw [Finset.sum_eq_single_of_mem _ (Finset.self_mem_range_succ _), zero_add]
    · rw [toFormalMultilinearSeriesOfMultilinear, dif_pos rfl]; rfl
    · intro m _ ne; rw [toFormalMultilinearSeriesOfMultilinear, dif_neg ne.symm]; rfl

lemma cpolynomialAt_uncurry_of_multilinear :
    CPolynomialAt 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) x :=
  f.hasFiniteFPowerSeriesOnBall_uncurry_of_multilinear.cpolynomialAt_of_mem
    (by simp only [Metric.emetric_ball_top, Set.mem_univ])

lemma cpolyomialOn_uncurry_of_multilinear :
    CPolynomialOn 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) s :=
  fun _ _ ↦ f.cpolynomialAt_uncurry_of_multilinear

lemma analyticOnNhd_uncurry_of_multilinear :
    AnalyticOnNhd 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) s :=
  f.cpolyomialOn_uncurry_of_multilinear.analyticOnNhd

lemma analyticOn_uncurry_of_multilinear :
    AnalyticOn 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) s :=
  f.analyticOnNhd_uncurry_of_multilinear.analyticOn

lemma analyticAt_uncurry_of_multilinear : AnalyticAt 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) x :=
  f.cpolynomialAt_uncurry_of_multilinear.analyticAt

lemma analyticWithinAt_uncurry_of_multilinear :
    AnalyticWithinAt 𝕜 (fun (p : G × (Π i, Em i)) ↦ f p.1 p.2) s x :=
  f.analyticAt_uncurry_of_multilinear.analyticWithinAt

end ContinuousLinearMap
```
