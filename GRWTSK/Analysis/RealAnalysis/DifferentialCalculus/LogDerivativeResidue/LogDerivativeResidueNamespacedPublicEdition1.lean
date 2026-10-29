-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasSimplePoleResidueAt.Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasSimplePoleResidueAt.Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34","mathematical_subject":"Analysis.Calculus","original_sha256":"b74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ComplexAnalysis/LogDerivativeResidue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Calculus.LogDeriv
public import Mathlib.Analysis.Analytic.Order
public import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# Local logarithmic-derivative residue coefficient

Pinned mathlib has no general complex residue or Laurent-coefficient object.
For the logarithmic derivative of an analytic function, however, analytic
order gives the exact punctured-neighborhood coefficient:

`(w - z) * f'(w) / f(w) -> n`

when `f` has finite analytic order `n` at `z`.  This is the multiplicity-aware
local statement needed before defining circle or rectangle residue sums.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasSimplePoleResidueAt.Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- A function has simple-pole coefficient `r` at `z` when multiplication by
`w - z` converges to `r` through the punctured neighborhood. -/
def HasSimplePoleResidueAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  Tendsto (fun w ↦ (w - z) * h w) (𝓝[≠] z) (𝓝 r)

namespace AnalyticAt

/-- Exact principal-part decomposition of the logarithmic derivative near a
finite-order analytic zero.  The equality is asserted only on the punctured
neighborhood, where totalized division agrees with the meromorphic germ. -/
theorem logDeriv_eventuallyEq_principalPart
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w := by
  obtain ⟨g, hg, hg0, hfg⟩ :=
    hf.analyticOrderAt_eq_natCast.mp hn

  have hfgMul : f =ᶠ[𝓝 z] fun w ↦ (w - z) ^ n * g w :=
    hfg.mono fun w hw ↦ by
      simpa only [smul_eq_mul] using hw

  have hg_ne : ∀ᶠ w in 𝓝 z, g w ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0

  have hfg' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hfgMul

  have hder' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hfgMul.deriv

  have hg_ne' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hg_ne

  have hga' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hg.eventually_analyticAt

  have hlog : logDeriv f =ᶠ[𝓝[≠] z]
      fun w ↦ (n : ℂ) / (w - z) + logDeriv g w := by
    filter_upwards [hfg', hder', hg_ne', hga',
      self_mem_nhdsWithin] with w hwval hwder hgw hgaw hwz

    have hwz' : w - z ≠ 0 := sub_ne_zero.mpr hwz

    calc
      logDeriv f w =
          logDeriv (fun u : ℂ ↦ (u - z) ^ n * g u) w := by
            simp only [logDeriv_apply, hwder, hwval]
      _ = logDeriv (fun u : ℂ ↦ (u - z) ^ n) w +
          logDeriv g w := by
            exact logDeriv_mul w (pow_ne_zero n hwz') hgw
              (by fun_prop) hgaw.differentiableAt
      _ = (n : ℂ) / (w - z) + logDeriv g w := by
            rw [logDeriv_fun_pow
              (f := fun u : ℂ ↦ u - z) (by fun_prop) n]
            simp [logDeriv_apply, div_eq_mul_inv]

  exact ⟨g, hg, hg0, hlog⟩

/-- The logarithmic derivative of a finite-order analytic germ has local
simple-pole coefficient equal to its analytic multiplicity. -/
theorem hasSimplePoleResidueAt_logDeriv
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasSimplePoleResidueAt (logDeriv f) z (n : ℂ) := by
  obtain ⟨g, hg, hg0, hlog⟩ :=
    logDeriv_eventuallyEq_principalPart hf hn

  have hld : ContinuousAt (logDeriv g) z := by
    exact hg.deriv.continuousAt.div hg.continuousAt hg0

  have hsub : Tendsto (fun w : ℂ ↦ w - z)
      (𝓝[≠] z) (𝓝 0) := by
    have hc : ContinuousAt (fun w : ℂ ↦ w - z) z := by
      fun_prop
    simpa only [sub_self] using hc.tendsto.mono_left
      (show 𝓝[≠] z ≤ 𝓝 z from nhdsWithin_le_nhds)

  have hmul :
      Tendsto (fun w ↦ (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 0) := by
    simpa only [zero_mul] using
      hsub.mul (hld.tendsto.mono_left nhdsWithin_le_nhds)

  have hmain :
      Tendsto
        (fun w ↦ (n : ℂ) + (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 (n : ℂ)) := by
    simpa only [add_zero] using tendsto_const_nhds.add hmul

  apply hmain.congr'
  filter_upwards [hlog, self_mem_nhdsWithin] with w hw hwz
  rw [hw]
  have hwz' : w - z ≠ 0 := sub_ne_zero.mpr hwz
  field_simp

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
