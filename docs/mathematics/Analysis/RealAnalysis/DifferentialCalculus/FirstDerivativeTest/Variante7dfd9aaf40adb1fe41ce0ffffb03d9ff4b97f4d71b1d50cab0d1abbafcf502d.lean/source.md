# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstDerivativeTest.Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8260cc39c68ba8357b60352b6cca20e42e0760a7` · SHA-256 `d76846d1e655629178aa0ef5fa041e9bfd5c0fe819484d50c1f58df6251cdc4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IsLocalMaxOfDerivIoo.Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.IsLocalMaxOfDerivIoo.Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac","mathematical_subject":"Analysis.Calculus","original_sha256":"97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/FirstDerivativeTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bjørn Kjos-Hanssen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bjørn Kjos-Hanssen, Patrick Massot, Floris van Doorn
-/
import Mathlib.Topology.Order.OrderClosedExtr
import Mathlib.Analysis.Calculus.Deriv.MeanValue
/-!
# The First-Derivative Test

We prove the first-derivative test in the strong form given on [Wikipedia](https://en.wikipedia.org/wiki/Derivative_test#First-derivative_test).

The test is proved over the real numbers ℝ
using `monotoneOn_of_deriv_nonneg` from [Mathlib.Analysis.Calculus.MeanValue].

## Main results

* `isLocalMax_of_deriv_Ioo`: Suppose `f` is a real-valued function of a real variable
  defined on some interval containing the point `a`.
  Further suppose that `f` is continuous at `a` and differentiable on some open interval
  containing `a`, except possibly at `a` itself.

  If there exists a positive number `r > 0` such that for every `x` in `(a − r, a)`
  we have `f′(x) ≥ 0`, and for every `x` in `(a, a + r)` we have `f′(x) ≤ 0`,
  then `f` has a local maximum at `a`.

* `isLocalMin_of_deriv_Ioo`: The dual of `first_derivative_max`, for minima.

* `isLocalMax_of_deriv`: 1st derivative test for maxima using filters.

* `isLocalMin_of_deriv`: 1st derivative test for minima using filters.

## Tags

derivative test, calculus
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IsLocalMaxOfDerivIoo.Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac

open Set Topology


/-- The First-Derivative Test from calculus, maxima version.
Suppose `a < b < c`, `f : ℝ → ℝ` is continuous at `b`,
the derivative `f'` is nonnegative on `(a,b)`, and
the derivative `f'` is nonpositive on `(b,c)`. Then `f` has a local maximum at `a`. -/
lemma isLocalMax_of_deriv_Ioo {f : ℝ → ℝ} {a b c : ℝ} (g₀ : a < b) (g₁ : b < c)
    (h : ContinuousAt f b)
    (hd₀ : DifferentiableOn ℝ f (Ioo a b))
    (hd₁ : DifferentiableOn ℝ f (Ioo b c))
    (h₀ : ∀ x ∈ Ioo a b, 0 ≤ deriv f x)
    (h₁ : ∀ x ∈ Ioo b c, deriv f x ≤ 0) : IsLocalMax f b :=
  have hIoc : ContinuousOn f (Ioc a b) :=
    Ioo_union_right g₀ ▸ hd₀.continuousOn.union_continuousAt (isOpen_Ioo (a := a) (b := b))
      (by simp_all)
  have hIco : ContinuousOn f (Ico b c) :=
    Ioo_union_left g₁ ▸ hd₁.continuousOn.union_continuousAt (isOpen_Ioo (a := b) (b := c))
      (by simp_all)
  isLocalMax_of_mono_anti g₀ g₁
    (monotoneOn_of_deriv_nonneg (convex_Ioc a b) hIoc (by simp_all) (by simp_all))
    (antitoneOn_of_deriv_nonpos (convex_Ico b c) hIco (by simp_all) (by simp_all))


/-- The First-Derivative Test from calculus, minima version. -/
lemma isLocalMin_of_deriv_Ioo {f : ℝ → ℝ} {a b c : ℝ}
    (g₀ : a < b) (g₁ : b < c) (h : ContinuousAt f b)
    (hd₀ : DifferentiableOn ℝ f (Ioo a b)) (hd₁ : DifferentiableOn ℝ f (Ioo b c))
    (h₀ : ∀ x ∈ Ioo a b, deriv f x ≤ 0)
    (h₁ : ∀ x ∈ Ioo b c, 0 ≤ deriv f x) : IsLocalMin f b := by
  have := isLocalMax_of_deriv_Ioo (f := -f) g₀ g₁
    (by simp_all) hd₀.neg hd₁.neg
    (fun x hx => deriv.neg (f := f) ▸ Left.nonneg_neg_iff.mpr <|h₀ x hx)
    (fun x hx => deriv.neg (f := f) ▸ Left.neg_nonpos_iff.mpr <|h₁ x hx)
  exact (neg_neg f) ▸ IsLocalMax.neg this

/-- The First-Derivative Test from calculus, maxima version,
expressed in terms of left and right filters. -/
lemma isLocalMax_of_deriv' {f : ℝ → ℝ} {b : ℝ} (h : ContinuousAt f b)
    (hd₀ : ∀ᶠ x in 𝓝[<] b, DifferentiableAt ℝ f x) (hd₁ : ∀ᶠ x in 𝓝[>] b, DifferentiableAt ℝ f x)
    (h₀ : ∀ᶠ x in 𝓝[<] b, 0 ≤ deriv f x) (h₁ : ∀ᶠ x in 𝓝[>] b, deriv f x ≤ 0) :
    IsLocalMax f b := by
  obtain ⟨a, ha⟩ := (nhdsLT_basis b).eventually_iff.mp <| hd₀.and h₀
  obtain ⟨c, hc⟩ := (nhdsGT_basis b).eventually_iff.mp <| hd₁.and h₁
  exact isLocalMax_of_deriv_Ioo ha.1 hc.1 h
    (fun _ hx => (ha.2 hx).1.differentiableWithinAt)
    (fun _ hx => (hc.2 hx).1.differentiableWithinAt)
    (fun _ hx => (ha.2 hx).2) (fun x hx => (hc.2 hx).2)

/-- The First-Derivative Test from calculus, minima version,
expressed in terms of left and right filters. -/
lemma isLocalMin_of_deriv' {f : ℝ → ℝ} {b : ℝ} (h : ContinuousAt f b)
    (hd₀ : ∀ᶠ x in 𝓝[<] b, DifferentiableAt ℝ f x) (hd₁ : ∀ᶠ x in 𝓝[>] b, DifferentiableAt ℝ f x)
    (h₀ : ∀ᶠ x in 𝓝[<] b, deriv f x ≤ 0) (h₁ : ∀ᶠ x in 𝓝[>] b, deriv f x ≥ 0) :
    IsLocalMin f b := by
  obtain ⟨a, ha⟩ := (nhdsLT_basis b).eventually_iff.mp <| hd₀.and h₀
  obtain ⟨c, hc⟩ := (nhdsGT_basis b).eventually_iff.mp <| hd₁.and h₁
  exact isLocalMin_of_deriv_Ioo ha.1 hc.1 h
    (fun _ hx => (ha.2 hx).1.differentiableWithinAt)
    (fun _ hx => (hc.2 hx).1.differentiableWithinAt)
    (fun _ hx => (ha.2 hx).2) (fun x hx => (hc.2 hx).2)

/-- The First Derivative test, maximum version. -/
theorem isLocalMax_of_deriv {f : ℝ → ℝ} {b : ℝ} (h : ContinuousAt f b)
    (hd : ∀ᶠ x in 𝓝[≠] b, DifferentiableAt ℝ f x)
    (h₀ : ∀ᶠ x in 𝓝[<] b, 0 ≤ deriv f x) (h₁ : ∀ᶠ x in 𝓝[>] b, deriv f x ≤ 0) :
    IsLocalMax f b :=
  isLocalMax_of_deriv' h (nhdsLT_le_nhdsNE _ (by tauto)) (nhdsGT_le_nhdsNE _ (by tauto)) h₀ h₁

/-- The First Derivative test, minimum version. -/
theorem isLocalMin_of_deriv {f : ℝ → ℝ} {b : ℝ} (h : ContinuousAt f b)
    (hd : ∀ᶠ x in 𝓝[≠] b, DifferentiableAt ℝ f x)
    (h₀ : ∀ᶠ x in 𝓝[<] b, deriv f x ≤ 0) (h₁ : ∀ᶠ x in 𝓝[>] b, 0 ≤ deriv f x) :
    IsLocalMin f b :=
  isLocalMin_of_deriv' h (nhdsLT_le_nhdsNE _ (by tauto)) (nhdsGT_le_nhdsNE _ (by tauto)) h₀ h₁
```
