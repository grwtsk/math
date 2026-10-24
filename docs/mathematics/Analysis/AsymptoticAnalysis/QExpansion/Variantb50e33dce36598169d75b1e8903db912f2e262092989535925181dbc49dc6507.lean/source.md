# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.QExpansion.Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `378aa1c30d950b8a351a0506f8f82b94eef84765` · SHA-256 `908d1793beb78d5f6d69605f985486fb1a5a821e74a54110e687d8fab78c931b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PeriodicCompOfComplex.Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PeriodicCompOfComplex.Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"fda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/QExpansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Analysis.Complex.TaylorSeries
import Mathlib.Analysis.Complex.UpperHalfPlane.Exp
import Mathlib.NumberTheory.ModularForms.Basic
import Mathlib.NumberTheory.ModularForms.Identities
import Mathlib.RingTheory.PowerSeries.Basic

/-!
# q-expansions of modular forms

We show that a modular form of level `Γ(n)` can be written as `τ ↦ F (𝕢 n τ)` where `F` is
analytic on the open unit disc, and `𝕢 n` is the parameter `τ ↦ exp (2 * I * π * τ / n)`. As an
application, we show that cusp forms decay exponentially to 0 as `im τ → ∞`.

We also define the `q`-expansion of a modular form, either as a power series or as a
`FormalMultlinearSeries`, and show that it converges to `f` on the upper half plane.

## Main definitions and results

* `SlashInvariantFormClass.cuspFunction`: for a level `n` slash-invariant form, this is the function
  `F` such that `f τ = F (exp (2 * π * I * τ / n))`, extended by a choice of limit at `0`.
* `ModularFormClass.differentiableAt_cuspFunction`: when `f` is a modular form, its `cuspFunction`
  is differentiable on the open unit disc (including at `0`).
* `ModularFormClass.qExpansion`: the `q`-expansion of a modular form (defined as the Taylor series
  of its `cuspFunction`), bundled as a `PowerSeries`.
* `ModularFormClass.hasSum_qExpansion`: the `q`-expansion evaluated at `𝕢 n τ` sums to `f τ`, for
  `τ` in the upper half plane.

## TO DO:

* generalise to handle arbitrary finite-index subgroups (not just `Γ(n)` for some `n`)
* define the `q`-expansion map on modular form spaces as a linear map (or even a ring hom from
  the graded ring of all modular forms?)
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.PeriodicCompOfComplex.Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1

open ModularForm Complex Filter UpperHalfPlane Function

open scoped Real MatrixGroups CongruenceSubgroup

noncomputable section

variable {k : ℤ} {F : Type*} [FunLike F ℍ ℂ] {Γ : Subgroup SL(2, ℤ)} (n : ℕ) (f : F)

local notation "I∞" => comap Complex.im atTop
local notation "𝕢" => Periodic.qParam

namespace SlashInvariantFormClass

theorem periodic_comp_ofComplex [SlashInvariantFormClass F Γ(n) k] :
    Periodic (f ∘ ofComplex) n := by
  intro w
  by_cases hw : 0 < im w
  · have : 0 < im (w + n) := by simp only [add_im, natCast_im, add_zero, hw]
    simp only [comp_apply, ofComplex_apply_of_im_pos this, ofComplex_apply_of_im_pos hw]
    convert SlashInvariantForm.vAdd_width_periodic n k 1 f ⟨w, hw⟩ using 2
    simp only [Int.cast_one, mul_one, UpperHalfPlane.ext_iff, coe_mk_subtype, coe_vadd,
      ofReal_natCast, add_comm]
  · have : im (w + n) ≤ 0 := by simpa only [add_im, natCast_im, add_zero, not_lt] using hw
    simp only [comp_apply, ofComplex_apply_of_im_nonpos this,
      ofComplex_apply_of_im_nonpos (not_lt.mp hw)]

/--
The analytic function `F` such that `f τ = F (exp (2 * π * I * τ / n))`, extended by a choice of
limit at `0`.
-/
def cuspFunction : ℂ → ℂ := Function.Periodic.cuspFunction n (f ∘ ofComplex)

theorem eq_cuspFunction [NeZero n] [SlashInvariantFormClass F Γ(n) k] (τ : ℍ) :
    cuspFunction n f (𝕢 n τ) = f τ := by
  simpa only [comp_apply, ofComplex_apply]
    using (periodic_comp_ofComplex n f).eq_cuspFunction (NeZero.ne _) τ

end SlashInvariantFormClass

open SlashInvariantFormClass

namespace ModularFormClass

theorem differentiableAt_comp_ofComplex [ModularFormClass F Γ k] {z : ℂ} (hz : 0 < im z) :
    DifferentiableAt ℂ (f ∘ ofComplex) z :=
  mdifferentiableAt_iff_differentiableAt.mp ((holo f _).comp z (mdifferentiableAt_ofComplex hz))

theorem bounded_at_infty_comp_ofComplex [ModularFormClass F Γ k] :
    BoundedAtFilter I∞ (f ∘ ofComplex) := by
  simpa only [SlashAction.slash_one, ModularForm.toSlashInvariantForm_coe]
    using (ModularFormClass.bdd_at_infty f 1).comp_tendsto tendsto_comap_im_ofComplex

theorem differentiableAt_cuspFunction [NeZero n] [ModularFormClass F Γ(n) k]
    {q : ℂ} (hq : ‖q‖ < 1) :
    DifferentiableAt ℂ (cuspFunction n f) q := by
  have npos : 0 < (n : ℝ) := mod_cast (Nat.pos_iff_ne_zero.mpr (NeZero.ne _))
  rcases eq_or_ne q 0 with rfl | hq'
  · exact (periodic_comp_ofComplex n f).differentiableAt_cuspFunction_zero npos
      (eventually_of_mem (preimage_mem_comap (Ioi_mem_atTop 0))
        (fun _ ↦ differentiableAt_comp_ofComplex f))
      (bounded_at_infty_comp_ofComplex f)
  · exact Periodic.qParam_right_inv npos.ne' hq' ▸
      (periodic_comp_ofComplex n f).differentiableAt_cuspFunction npos.ne'
        <| differentiableAt_comp_ofComplex _ <| Periodic.im_invQParam_pos_of_norm_lt_one npos hq hq'

lemma analyticAt_cuspFunction_zero [NeZero n] [ModularFormClass F Γ(n) k] :
    AnalyticAt ℂ (cuspFunction n f) 0 :=
  DifferentiableOn.analyticAt
    (fun q hq ↦ (differentiableAt_cuspFunction _ _ hq).differentiableWithinAt)
    (by simpa only [ball_zero_eq] using Metric.ball_mem_nhds (0 : ℂ) zero_lt_one)

/-- The `q`-expansion of a level `n` modular form, bundled as a `PowerSeries`. -/
def qExpansion : PowerSeries ℂ :=
  .mk fun m ↦ (↑m.factorial)⁻¹ * iteratedDeriv m (cuspFunction n f) 0

lemma qExpansion_coeff (m : ℕ) :
    (qExpansion n f).coeff ℂ m = (↑m.factorial)⁻¹ * iteratedDeriv m (cuspFunction n f) 0 := by
  simp [qExpansion]

lemma hasSum_qExpansion_of_abs_lt [NeZero n] [ModularFormClass F Γ(n) k]
    {q : ℂ} (hq : ‖q‖ < 1) :
    HasSum (fun m : ℕ ↦ (qExpansion n f).coeff ℂ m • q ^ m) (cuspFunction n f q) := by
  simp only [qExpansion_coeff, ← eq_cuspFunction n f]
  have hdiff : DifferentiableOn ℂ (cuspFunction n f) (Metric.ball 0 1) := by
    refine fun z hz ↦ (differentiableAt_cuspFunction n f ?_).differentiableWithinAt
    simpa using hz
  have qmem : q ∈ Metric.ball 0 1 := by simpa using hq
  convert hasSum_taylorSeries_on_ball hdiff qmem using 2 with m
  rw [sub_zero, smul_eq_mul, smul_eq_mul, mul_right_comm, smul_eq_mul, mul_assoc]

lemma hasSum_qExpansion [NeZero n] [ModularFormClass F Γ(n) k] (τ : ℍ) :
    HasSum (fun m : ℕ ↦ (qExpansion n f).coeff ℂ m • 𝕢 n τ ^ m) (f τ) := by
  simpa only [eq_cuspFunction n f] using
    hasSum_qExpansion_of_abs_lt n f (τ.norm_qParam_lt_one n)

/--
The `q`-expansion of a level `n` modular form, bundled as a `FormalMultilinearSeries`.

TODO: Maybe get rid of this and instead define a general API for converting `PowerSeries` to
`FormalMultlinearSeries`.
-/
def qExpansionFormalMultilinearSeries : FormalMultilinearSeries ℂ ℂ ℂ :=
  fun m ↦ (qExpansion n f).coeff ℂ m • ContinuousMultilinearMap.mkPiAlgebraFin ℂ m _

lemma qExpansionFormalMultilinearSeries_apply_norm (m : ℕ) :
    ‖qExpansionFormalMultilinearSeries n f m‖ = ‖(qExpansion n f).coeff ℂ m‖ := by
  rw [qExpansionFormalMultilinearSeries,
    ← (ContinuousMultilinearMap.piFieldEquiv ℂ (Fin m) ℂ).symm.norm_map]
  simp

lemma qExpansionFormalMultilinearSeries_radius [NeZero n] [ModularFormClass F Γ(n) k] :
    1 ≤ (qExpansionFormalMultilinearSeries n f).radius := by
  refine le_of_forall_lt_imp_le_of_dense fun r hr ↦ ?_
  lift r to NNReal using hr.ne_top
  apply FormalMultilinearSeries.le_radius_of_summable
  simp only [qExpansionFormalMultilinearSeries_apply_norm]
  rw [← r.abs_eq]
  simp_rw [← Real.norm_eq_abs, ← Complex.norm_real, ← norm_pow, ← norm_mul]
  exact (hasSum_qExpansion_of_abs_lt n f (q := r) (by simpa using hr)).summable.norm

/-- The `q`-expansion of `f` is an `FPowerSeries` representing `cuspFunction n f`. -/
lemma hasFPowerSeries_cuspFunction [NeZero n] [ModularFormClass F Γ(n) k] :
    HasFPowerSeriesOnBall (cuspFunction n f) (qExpansionFormalMultilinearSeries n f) 0 1 := by
  refine ⟨qExpansionFormalMultilinearSeries_radius n f, zero_lt_one, fun hy ↦ ?_⟩
  rw [EMetric.mem_ball, edist_zero_right, enorm_eq_nnnorm, ENNReal.coe_lt_one_iff,
    ← NNReal.coe_lt_one, coe_nnnorm] at hy
  simpa [qExpansionFormalMultilinearSeries] using hasSum_qExpansion_of_abs_lt n f hy

end ModularFormClass

open ModularFormClass

namespace CuspFormClass

theorem zero_at_infty_comp_ofComplex [CuspFormClass F Γ k] : ZeroAtFilter I∞ (f ∘ ofComplex) := by
  simpa only [SlashAction.slash_one, toSlashInvariantForm_coe]
    using (zero_at_infty f 1).comp tendsto_comap_im_ofComplex

theorem cuspFunction_apply_zero [NeZero n] [CuspFormClass F Γ(n) k] :
    cuspFunction n f 0 = 0 :=
  Periodic.cuspFunction_zero_of_zero_at_inf (mod_cast (Nat.pos_iff_ne_zero.mpr (NeZero.ne _)))
    (zero_at_infty_comp_ofComplex f)

theorem exp_decay_atImInfty [NeZero n] [CuspFormClass F Γ(n) k] :
    f =O[atImInfty] fun τ ↦ Real.exp (-2 * π * τ.im / n) := by
  simpa only [neg_mul, comp_def, ofComplex_apply, coe_im] using
    ((periodic_comp_ofComplex n f).exp_decay_of_zero_at_inf
      (mod_cast (Nat.pos_iff_ne_zero.mpr (NeZero.ne _)))
      (eventually_of_mem (preimage_mem_comap (Ioi_mem_atTop 0))
        fun _ ↦ differentiableAt_comp_ofComplex f)
      (zero_at_infty_comp_ofComplex f)).comp_tendsto tendsto_coe_atImInfty

end CuspFormClass
```
