# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8181ba79b818c7c1f68d9f16495945a97778fbec` · SHA-256 `8adce0e400768153cfb76ac3ad51d765f9f3a607d5d6df44327e7d72185589b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.RealFourierCoeffTsumCompAdd.Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.RealFourierCoeffTsumCompAdd.Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"b732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Fourier/PoissonSummation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Distribution.SchwartzSpace
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral


namespace GRWTSK.Analysis.AsymptoticAnalysis.RealFourierCoeffTsumCompAdd.Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597

#align_import analysis.fourier.poisson_summation from "leanprover-community/mathlib"@"fd5edc43dc4f10b85abfe544b88f82cf13c5f844"

/-!
# Poisson's summation formula

We prove Poisson's summation formula `∑ (n : ℤ), f n = ∑ (n : ℤ), 𝓕 f n`, where `𝓕 f` is the
Fourier transform of `f`, under the following hypotheses:
* `f` is a continuous function `ℝ → ℂ`.
* The sum `∑ (n : ℤ), 𝓕 f n` is convergent.
* For all compacts `K ⊂ ℝ`, the sum `∑ (n : ℤ), sup { ‖f(x + n)‖ | x ∈ K }` is convergent.
See `Real.tsum_eq_tsum_fourierIntegral` for this formulation.

These hypotheses are potentially a little awkward to apply, so we also provide the less general but
easier-to-use result `Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay`, in which we assume `f` and
`𝓕 f` both decay as `|x| ^ (-b)` for some `b > 1`, and the even more specific result
`SchwartzMap.tsum_eq_tsum_fourierIntegral`, where we assume that both `f` and `𝓕 f` are Schwartz
functions.

## TODO

At the moment `SchwartzMap.tsum_eq_tsum_fourierIntegral` requires separate proofs that both `f`
and `𝓕 f` are Schwartz functions. In fact, `𝓕 f` is automatically Schwartz if `f` is; and once
we have this lemma in the library, we should adjust the hypotheses here accordingly.
-/


noncomputable section

open Function hiding comp_apply

open Set hiding restrict_apply

open Complex hiding abs_of_nonneg

open Real

open TopologicalSpace Filter MeasureTheory Asymptotics

open scoped Real BigOperators Filter FourierTransform

attribute [local instance] Real.fact_zero_lt_one

open ContinuousMap

/-- The key lemma for Poisson summation: the `m`-th Fourier coefficient of the periodic function
`∑' n : ℤ, f (x + n)` is the value at `m` of the Fourier transform of `f`. -/
theorem Real.fourierCoeff_tsum_comp_add {f : C(ℝ, ℂ)}
    (hf : ∀ K : Compacts ℝ, Summable fun n : ℤ => ‖(f.comp (ContinuousMap.addRight n)).restrict K‖)
    (m : ℤ) : fourierCoeff (Periodic.lift <| f.periodic_tsum_comp_add_zsmul 1) m = 𝓕 f m := by
  -- NB: This proof can be shortened somewhat by telescoping together some of the steps in the calc
  -- block, but I think it's more legible this way. We start with preliminaries about the integrand.
  let e : C(ℝ, ℂ) := (fourier (-m)).comp ⟨((↑) : ℝ → UnitAddCircle), continuous_quotient_mk'⟩
  have neK : ∀ (K : Compacts ℝ) (g : C(ℝ, ℂ)), ‖(e * g).restrict K‖ = ‖g.restrict K‖ := by
    have : ∀ x : ℝ, ‖e x‖ = 1 := fun x => abs_coe_circle (AddCircle.toCircle (-m • x))
    intro K g
    simp_rw [norm_eq_iSup_norm, restrict_apply, mul_apply, norm_mul, this, one_mul]
  have eadd : ∀ (n : ℤ), e.comp (ContinuousMap.addRight n) = e := by
    intro n; ext1 x
    have : Periodic e 1 := Periodic.comp (fun x => AddCircle.coe_add_period 1 x) (fourier (-m))
    simpa only [mul_one] using this.int_mul n x
  -- Now the main argument. First unwind some definitions.
  calc
    fourierCoeff (Periodic.lift <| f.periodic_tsum_comp_add_zsmul 1) m =
        ∫ x in (0 : ℝ)..1, e x * (∑' n : ℤ, f.comp (ContinuousMap.addRight n)) x := by
      simp_rw [fourierCoeff_eq_intervalIntegral _ m 0, div_one, one_smul, zero_add, comp_apply,
        coe_mk, Periodic.lift_coe, zsmul_one, smul_eq_mul]
    -- Transform sum in C(ℝ, ℂ) evaluated at x into pointwise sum of values.
    _ = ∫ x in (0:ℝ)..1, ∑' n : ℤ, (e * f.comp (ContinuousMap.addRight n)) x := by
      simp_rw [coe_mul, Pi.mul_apply,
        ← ContinuousMap.tsum_apply (summable_of_locally_summable_norm hf), tsum_mul_left]
    -- Swap sum and integral.
    _ = ∑' n : ℤ, ∫ x in (0:ℝ)..1, (e * f.comp (ContinuousMap.addRight n)) x := by
      refine' (intervalIntegral.tsum_intervalIntegral_eq_of_summable_norm _).symm
      convert hf ⟨uIcc 0 1, isCompact_uIcc⟩ using 1
      exact funext fun n => neK _ _
    _ = ∑' n : ℤ, ∫ x in (0:ℝ)..1, (e * f).comp (ContinuousMap.addRight n) x := by
      simp only [ContinuousMap.comp_apply, mul_comp] at eadd ⊢
      simp_rw [eadd]
    -- Rearrange sum of interval integrals into an integral over `ℝ`.
    _ = ∫ x, e x * f x := by
      suffices Integrable (e * f) from this.hasSum_intervalIntegral_comp_add_int.tsum_eq
      apply integrable_of_summable_norm_Icc
      convert hf ⟨Icc 0 1, isCompact_Icc⟩ using 1
      simp_rw [mul_comp] at eadd ⊢
      simp_rw [eadd]
      exact funext fun n => neK ⟨Icc 0 1, isCompact_Icc⟩ _
    -- Minor tidying to finish
    _ = 𝓕 f m := by
      rw [fourierIntegral_eq_integral_exp_smul]
      congr 1 with x : 1
      rw [smul_eq_mul, comp_apply, coe_mk, coe_mk, ContinuousMap.toFun_eq_coe, fourier_coe_apply]
      congr 2
      push_cast
      ring
#align real.fourier_coeff_tsum_comp_add Real.fourierCoeff_tsum_comp_add

/-- **Poisson's summation formula**, most general form. -/
theorem Real.tsum_eq_tsum_fourierIntegral {f : C(ℝ, ℂ)}
    (h_norm :
      ∀ K : Compacts ℝ, Summable fun n : ℤ => ‖(f.comp <| ContinuousMap.addRight n).restrict K‖)
    (h_sum : Summable fun n : ℤ => 𝓕 f n) : ∑' n : ℤ, f n = (∑' n : ℤ, 𝓕 f n) := by
  let F : C(UnitAddCircle, ℂ) :=
    ⟨(f.periodic_tsum_comp_add_zsmul 1).lift, continuous_coinduced_dom.mpr (map_continuous _)⟩
  have : Summable (fourierCoeff F) := by
    convert h_sum
    exact Real.fourierCoeff_tsum_comp_add h_norm _
  convert (has_pointwise_sum_fourier_series_of_summable this 0).tsum_eq.symm using 1
  · have := (hasSum_apply (summable_of_locally_summable_norm h_norm).hasSum 0).tsum_eq
    simpa only [coe_mk, ← QuotientAddGroup.mk_zero, Periodic.lift_coe, zsmul_one, comp_apply,
      coe_addRight, zero_add] using this
  · congr 1 with n : 1
    rw [← Real.fourierCoeff_tsum_comp_add h_norm n, fourier_eval_zero, smul_eq_mul, mul_one]
    rfl
#align real.tsum_eq_tsum_fourier_integral Real.tsum_eq_tsum_fourierIntegral

section RpowDecay

variable {E : Type*} [NormedAddCommGroup E]

/-- If `f` is `O(x ^ (-b))` at infinity, then so is the function
`λ x, ‖f.restrict (Icc (x + R) (x + S))‖` for any fixed `R` and `S`. -/
theorem isBigO_norm_Icc_restrict_atTop {f : C(ℝ, E)} {b : ℝ} (hb : 0 < b)
    (hf : IsBigO atTop f fun x : ℝ => |x| ^ (-b)) (R S : ℝ) :
    IsBigO atTop (fun x : ℝ => ‖f.restrict (Icc (x + R) (x + S))‖) fun x : ℝ => |x| ^ (-b) := by
  -- First establish an explicit estimate on decay of inverse powers.
  -- This is logically independent of the rest of the proof, but of no mathematical interest in
  -- itself, so it is proved using `async` rather than being formulated as a separate lemma.
  have claim :
    ∀ x : ℝ, max 0 (-2 * R) < x → ∀ y : ℝ, x + R ≤ y → y ^ (-b) ≤ (1 / 2) ^ (-b) * x ^ (-b) := by
    intro x hx y hy
    rw [max_lt_iff] at hx
    have hxR : 0 < x + R := by
      rcases le_or_lt 0 R with (h | h)
      · exact add_pos_of_pos_of_nonneg hx.1 h
      · rw [← sub_lt_iff_lt_add, zero_sub]
        refine' lt_trans _ hx.2
        rwa [neg_mul, neg_lt_neg_iff, two_mul, add_lt_iff_neg_left]
    have hy' : 0 < y := hxR.trans_le hy
    have : y ^ (-b) ≤ (x + R) ^ (-b) := by
      rw [rpow_neg hy'.le, rpow_neg hxR.le,
        inv_le_inv (rpow_pos_of_pos hy' _) (rpow_pos_of_pos hxR _)]
      exact rpow_le_rpow hxR.le hy hb.le
    refine' this.trans _
    rw [← mul_rpow one_half_pos.le hx.1.le, rpow_neg (mul_pos one_half_pos hx.1).le,
      rpow_neg hxR.le]
    refine' inv_le_inv_of_le (rpow_pos_of_pos (mul_pos one_half_pos hx.1) _) _
    exact rpow_le_rpow (mul_pos one_half_pos hx.1).le (by linarith) hb.le
  -- Now the main proof.
  obtain ⟨c, hc, hc'⟩ := hf.exists_pos
  simp only [IsBigO, IsBigOWith, eventually_atTop] at hc' ⊢
  obtain ⟨d, hd⟩ := hc'
  refine' ⟨c * (1 / 2) ^ (-b), ⟨max (1 + max 0 (-2 * R)) (d - R), fun x hx => _⟩⟩
  rw [ge_iff_le, max_le_iff] at hx
  have hx' : max 0 (-2 * R) < x := by linarith
  rw [max_lt_iff] at hx'
  rw [norm_norm,
    ContinuousMap.norm_le _
      (mul_nonneg (mul_nonneg hc.le <| rpow_nonneg_of_nonneg one_half_pos.le _) (norm_nonneg _))]
  refine' fun y => (hd y.1 (by linarith [hx.1, y.2.1])).trans _
  have A : ∀ x : ℝ, 0 ≤ |x| ^ (-b) := fun x => by positivity
  rw [mul_assoc, mul_le_mul_left hc, norm_of_nonneg (A _), norm_of_nonneg (A _)]
  convert claim x (by linarith only [hx.1]) y.1 y.2.1
  · apply abs_of_nonneg; linarith [y.2.1]
  · exact abs_of_pos hx'.1
set_option linter.uppercaseLean3 false in
#align is_O_norm_Icc_restrict_at_top isBigO_norm_Icc_restrict_atTop

theorem isBigO_norm_Icc_restrict_atBot {f : C(ℝ, E)} {b : ℝ} (hb : 0 < b)
    (hf : IsBigO atBot f fun x : ℝ => |x| ^ (-b)) (R S : ℝ) :
    IsBigO atBot (fun x : ℝ => ‖f.restrict (Icc (x + R) (x + S))‖) fun x : ℝ => |x| ^ (-b) := by
  have h1 : IsBigO atTop (f.comp (ContinuousMap.mk _ continuous_neg)) fun x : ℝ => |x| ^ (-b) := by
    convert hf.comp_tendsto tendsto_neg_atTop_atBot using 1
    ext1 x; simp only [Function.comp_apply, abs_neg]
  have h2 := (isBigO_norm_Icc_restrict_atTop hb h1 (-S) (-R)).comp_tendsto tendsto_neg_atBot_atTop
  have : (fun x : ℝ => |x| ^ (-b)) ∘ Neg.neg = fun x : ℝ => |x| ^ (-b) := by
    ext1 x; simp only [Function.comp_apply, abs_neg]
  rw [this] at h2
  refine' (isBigO_of_le _ fun x => _).trans h2
  -- equality holds, but less work to prove `≤` alone
  rw [norm_norm, Function.comp_apply, norm_norm, ContinuousMap.norm_le _ (norm_nonneg _)]
  rintro ⟨x, hx⟩
  rw [ContinuousMap.restrict_apply_mk]
  refine' (le_of_eq _).trans (ContinuousMap.norm_coe_le_norm _ ⟨-x, _⟩)
  rw [ContinuousMap.restrict_apply_mk, ContinuousMap.comp_apply, ContinuousMap.coe_mk,
    ContinuousMap.coe_mk, neg_neg]
  exact ⟨by linarith [hx.2], by linarith [hx.1]⟩
set_option linter.uppercaseLean3 false in
#align is_O_norm_Icc_restrict_at_bot isBigO_norm_Icc_restrict_atBot

theorem isBigO_norm_restrict_cocompact (f : C(ℝ, E)) {b : ℝ} (hb : 0 < b)
    (hf : IsBigO (cocompact ℝ) f fun x : ℝ => |x| ^ (-b)) (K : Compacts ℝ) :
    IsBigO (cocompact ℝ) (fun x => ‖(f.comp (ContinuousMap.addRight x)).restrict K‖) fun x =>
      |x| ^ (-b) := by
  obtain ⟨r, hr⟩ := K.isCompact.bounded.subset_ball 0
  rw [closedBall_eq_Icc, zero_add, zero_sub] at hr
  have :
    ∀ x : ℝ,
      ‖(f.comp (ContinuousMap.addRight x)).restrict K‖ ≤ ‖f.restrict (Icc (x - r) (x + r))‖ := by
    intro x
    rw [ContinuousMap.norm_le _ (norm_nonneg _)]
    rintro ⟨y, hy⟩
    refine' (le_of_eq _).trans (ContinuousMap.norm_coe_le_norm _ ⟨y + x, _⟩)
    · simp_rw [ContinuousMap.restrict_apply, ContinuousMap.comp_apply, ContinuousMap.coe_addRight]
    · exact ⟨by linarith [(hr hy).1], by linarith [(hr hy).2]⟩
  simp_rw [cocompact_eq, isBigO_sup] at hf ⊢
  constructor
  · refine' (isBigO_of_le atBot _).trans (isBigO_norm_Icc_restrict_atBot hb hf.1 (-r) r)
    simp_rw [norm_norm]; exact this
  · refine' (isBigO_of_le atTop _).trans (isBigO_norm_Icc_restrict_atTop hb hf.2 (-r) r)
    simp_rw [norm_norm]; exact this
set_option linter.uppercaseLean3 false in
#align is_O_norm_restrict_cocompact isBigO_norm_restrict_cocompact

/-- **Poisson's summation formula**, assuming that `f` decays as
`|x| ^ (-b)` for some `1 < b` and its Fourier transform is summable. -/
theorem Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable {f : ℝ → ℂ} (hc : Continuous f)
    {b : ℝ} (hb : 1 < b) (hf : IsBigO (cocompact ℝ) f fun x : ℝ => |x| ^ (-b))
    (hFf : Summable fun n : ℤ => 𝓕 f n) : ∑' n : ℤ, f n = (∑' n : ℤ, 𝓕 f n) :=
  Real.tsum_eq_tsum_fourierIntegral
    (fun K =>
      summable_of_isBigO (Real.summable_abs_int_rpow hb)
        ((isBigO_norm_restrict_cocompact (ContinuousMap.mk _ hc) (zero_lt_one.trans hb) hf
              K).comp_tendsto
          Int.tendsto_coe_cofinite))
    hFf
#align real.tsum_eq_tsum_fourier_integral_of_rpow_decay_of_summable Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable

/-- **Poisson's summation formula**, assuming that both `f` and its Fourier transform decay as
`|x| ^ (-b)` for some `1 < b`. (This is the one-dimensional case of Corollary VII.2.6 of Stein and
Weiss, *Introduction to Fourier analysis on Euclidean spaces*.) -/
theorem Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay {f : ℝ → ℂ} (hc : Continuous f) {b : ℝ}
    (hb : 1 < b) (hf : IsBigO (cocompact ℝ) f fun x : ℝ => |x| ^ (-b))
    (hFf : IsBigO (cocompact ℝ) (𝓕 f) fun x : ℝ => |x| ^ (-b)) :
    ∑' n : ℤ, f n = ∑' n : ℤ, 𝓕 f n :=
  Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable hc hb hf
    (summable_of_isBigO (Real.summable_abs_int_rpow hb) (hFf.comp_tendsto Int.tendsto_coe_cofinite))
#align real.tsum_eq_tsum_fourier_integral_of_rpow_decay Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay

end RpowDecay

section Schwartz

/-- **Poisson's summation formula** for Schwartz functions. -/
theorem SchwartzMap.tsum_eq_tsum_fourierIntegral (f g : SchwartzMap ℝ ℂ) (hfg : 𝓕 f = g) :
    ∑' n : ℤ, f n = (∑' n : ℤ, g n) := by
  -- We know that Schwartz functions are `O(‖x ^ (-b)‖)` for *every* `b`; for this argument we take
  -- `b = 2` and work with that.
  simp_rw [← hfg]
  rw [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay f.continuous one_lt_two
    (f.isBigO_cocompact_rpow (-2))]
  rw [hfg]
  exact g.isBigO_cocompact_rpow (-2)
#align schwartz_map.tsum_eq_tsum_fourier_integral SchwartzMap.tsum_eq_tsum_fourierIntegral

end Schwartz
```
