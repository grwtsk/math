# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Defs.Variant0116ee984dd9b8d0026e1e146f7935c26ac3fafabe8d4d6f325b5e5283d38344

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f880b0ca9b0f4a2a0b1b171402967b191c6f99d` · SHA-256 `3da2de69eee149729ed8a59641cb0436619095c10339f0c4a6a058392779363e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeight.Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GoodHeight.Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/RvM/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/RvM/Defs.lean — shared vocabulary for the Riemann–von Mangoldt argument.

Target: Zeta23.RiemannVonMangoldt Zeta23.zetaZeroConfig (Zeta23/Hypotheses.lean), i.e.
  main        : ∃ C T₀, ∀ T ≥ T₀, |N(T,2T) − (T/2π)·ell1 T| ≤ C log T      ([Tit86, Thm 9.4])
  local_count : ∃ A₀ ≥ 1, ∀ t, N(t,t+1] ≤ A₀ log(|t|+3)                      ([Tit86, Thm 9.2]),
                see Zeta23.RvM.zetaZeroConfig_local_count (Zeta23/RvM/LocalCount.lean).
Route for main: argument principle for Λ = completedRiemannZeta
on the rectangle [−1,2]×[T₁,T₂] at zero-free ordinates, folded onto its right half L by
Λ(1−s̄) = conj Λ(s):  N(T₁,T₂) = (1/π)·Im ∫_L Λ'/Λ;  then Λ'/Λ = ζ'/ζ + Γℝ'/Γℝ (Γℝ = Complex.Gammaℝ,
π^{−s/2}Γ(s/2)), and (1/π)·Im ∫_L Γℝ'/Γℝ = ∫_{T₁}^{T₂} μ exactly (μ = Zeta23.mu), whose asymptotic
∫_T^{2T} μ = T·ell1 T/(2π) + O(1/T) is GammaFacts.int_mu. The ζ'/ζ part is O(log T)
(Backlund on the horizontals, |log ζ| ≤ log 3 on σ = 2). Hence: riemannVonMangoldt (hΓ : GammaFacts).
-/
import Zeta23.Statement.SeamClosed
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.Calculus.LogDeriv


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeight.Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671

open Complex

noncomputable section

namespace Zeta23.RvM

/-- T is a zero-free ordinate: no nontrivial zero of ζ has Im ρ = T. -/
def GoodHeight (T : ℝ) : Prop := ∀ ρ : ℂ, IsNontrivialZero ρ → ρ.im ≠ T

/-- The right half-contour L = [½+iT₁ → 2+iT₁ → 2+iT₂ → ½+iT₂] integral of F, as three interval
integrals (bottom rightwards, right side upwards with ds = i dt, top leftwards). -/
def halfContour (F : ℂ → ℂ) (T₁ T₂ : ℝ) : ℂ :=
  (∫ σ in (1/2:ℝ)..2, F (σ + T₁ * I)) + (∫ t in T₁..T₂, F (2 + t * I)) * I
    - ∫ σ in (1/2:ℝ)..2, F (σ + T₂ * I)

lemma halfContour_add (F G : ℂ → ℂ) (T₁ T₂ : ℝ)
    (hb : IntervalIntegrable (fun σ : ℝ => F (σ + T₁ * I)) MeasureTheory.volume (1/2) 2)
    (hb' : IntervalIntegrable (fun σ : ℝ => G (σ + T₁ * I)) MeasureTheory.volume (1/2) 2)
    (hr : IntervalIntegrable (fun t : ℝ => F (2 + t * I)) MeasureTheory.volume T₁ T₂)
    (hr' : IntervalIntegrable (fun t : ℝ => G (2 + t * I)) MeasureTheory.volume T₁ T₂)
    (ht : IntervalIntegrable (fun σ : ℝ => F (σ + T₂ * I)) MeasureTheory.volume (1/2) 2)
    (ht' : IntervalIntegrable (fun σ : ℝ => G (σ + T₂ * I)) MeasureTheory.volume (1/2) 2) :
    halfContour (fun s => F s + G s) T₁ T₂ = halfContour F T₁ T₂ + halfContour G T₁ T₂ := by
  unfold halfContour
  rw [intervalIntegral.integral_add hb hb', intervalIntegral.integral_add hr hr',
    intervalIntegral.integral_add ht ht']
  ring

end Zeta23.RvM
```
