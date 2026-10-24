# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HolomorphicLinearODE.Variantd7b5ecf825dd21325da423b0c13b136a60e7bc85e5b7f10d2349bb43164277f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `791605c898831ee6661fba1c7da7857914fb25b2` · SHA-256 `12f7b2005bd4bc85eca49445995a504708159f37325411c7424ed7cf6bdafd7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NowhereZeroOfDerivEqMul.Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NowhereZeroOfDerivEqMul.Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029","mathematical_subject":"Analysis.Calculus","original_sha256":"5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Analysis/HolomorphicLinearODE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.Analysis.Normed.Module.Connected

/-!
# Nonvanishing for a holomorphic scalar linear ODE

This module isolates the analytic uniqueness statement used by the
Dirichlet-GRH zero-exclusion argument.  A holomorphic solution of

`f' = g * f`

on a connected open complex domain is either identically zero or nowhere
zero.  The proof is local: on a ball, a primitive of `-g` gives an
integrating factor.  The complex identity theorem then propagates a local
zero solution across the domain.

No number-theoretic definition or hypothesis occurs here.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NowhereZeroOfDerivEqMul.Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029

public section

namespace Surface.Core.Analysis

noncomputable section

open Set Complex

/-- A holomorphic solution of `f' = g * f` on a connected open complex
domain is nowhere zero as soon as it is nonzero at one point. -/
@[surface_novel]
theorem nowhereZero_of_deriv_eq_mul
    {U : Set ℂ}
    (hUopen : IsOpen U)
    (hUconn : IsPreconnected U)
    (f g : ℂ → ℂ)
    (hf : DifferentiableOn ℂ f U)
    (hg : DifferentiableOn ℂ g U)
    (hODE : ∀ z ∈ U, deriv f z = g z * f z)
    (z₀ : ℂ)
    (hz₀ : z₀ ∈ U)
    (hf₀ : f z₀ ≠ 0) :
    ∀ z ∈ U, f z ≠ 0 := by
  intro z hz hfz
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp hUopen z hz
  have hnegG : DifferentiableOn ℂ (fun w ↦ -g w) (Metric.ball z r) :=
    (hg.mono hball).neg
  obtain ⟨P, _hPz, hP⟩ := hnegG.isExactOn_ball.with_val_at z (0 : ℂ)
  let H : ℂ → ℂ := fun w ↦ Complex.exp (P w) * f w
  have hPdiff : DifferentiableOn ℂ P (Metric.ball z r) := by
    intro w hw
    exact (hP w hw).differentiableAt.differentiableWithinAt
  have hHdiff : DifferentiableOn ℂ H (Metric.ball z r) :=
    hPdiff.cexp.mul (hf.mono hball)
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball z r) := by
    intro w hw
    have hpw := hP w hw
    have hfw :=
      (hf.differentiableAt (hUopen.mem_nhds (hball hw))).hasDerivAt
    have hprod := hpw.cexp.mul hfw
    change deriv ((fun w ↦ Complex.exp (P w)) * f) w = 0
    rw [hprod.deriv]
    rw [hODE w (hball hw)]
    ring
  have hHz : H z = 0 := by
    simp [H, hfz]
  have hH_zero : ∀ w ∈ Metric.ball z r, H w = 0 := by
    intro w hw
    have hconst :=
      (Metric.isOpen_ball : IsOpen (Metric.ball z r)).is_const_of_deriv_eq_zero
        Metric.isPreconnected_ball hHdiff hHderiv hw (Metric.mem_ball_self hr)
    exact hconst.trans hHz
  have hf_zero : ∀ w ∈ Metric.ball z r, f w = 0 := by
    intro w hw
    have h := hH_zero w hw
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P w))
  have hEventually : f =ᶠ[nhds z] (fun _ : ℂ ↦ 0) := by
    filter_upwards [Metric.ball_mem_nhds z hr] with w hw
    exact hf_zero w hw
  have hfAnalytic : AnalyticOnNhd ℂ f U :=
    hf.analyticOnNhd hUopen
  have hzeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ)) U :=
    analyticOnNhd_const
  have hEverywhere :=
    hfAnalytic.eqOn_of_preconnected_of_eventuallyEq
      hzeroAnalytic hUconn hz hEventually
  exact hf₀ (hEverywhere hz₀)

end

end Surface.Core.Analysis
```
