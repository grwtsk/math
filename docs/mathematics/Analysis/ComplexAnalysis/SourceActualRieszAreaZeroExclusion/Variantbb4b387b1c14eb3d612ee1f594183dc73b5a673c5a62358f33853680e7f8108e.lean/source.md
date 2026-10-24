# Complete source: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `605c9df22a1e31ff005ddb5483efe12c2ddf16c5` · SHA-256 `bb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualRieszQuadraticHolomorphy
import SourceActualRieszZeroPole
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Complex.Convex

/-!
A supplied complete quadratic area budget yields the connected-domain cleared
zeta differential identity for the literal actual centered H transform. Finite
actual multiplicities then exclude an actual right-hand zero under that premise.
No area witness, actual zero existence or unconditional signed estimate is given.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszAreaZeroExclusion
open Complex Set Filter Zeta23
open scoped Topology
open SourceActualRieszCriticalCenter SourceActualRieszRealConstantCenter
open SourceActualRieszCenteredInitialLaplace SourceActualRieszQuadraticLaplace
open SourceActualRieszQuadraticHolomorphy SourceActualRieszZeroPole
open SourceActualXiSevenPoleCancellation

private def extensionNumerator (s : ℂ) : ℂ :=
  (s - 1 / 2) ^ 2 * actualFixedCenteredRieszLaplace (s - 1 / 2) +
    (actualRieszLimitingLinearCenter : ℂ) +
      (actualRieszRealConstantCenter : ℂ) * (s - 1 / 2)

private theorem poleCleared_analyticAt {s : ℂ} (hs : s ≠ 0) :
    AnalyticAt ℂ actualZetaPoleCleared s := by
  have hc : AnalyticAt ℂ completedRiemannZeta₀ s :=
    (differentiable_completedZeta₀.differentiableOn.analyticOnNhd isOpen_univ) s (mem_univ _)
  have hg : AnalyticAt ℂ (fun s => (Gammaℝ s)⁻¹) s :=
    (differentiable_Gammaℝ_inv.differentiableOn.analyticOnNhd isOpen_univ) s (mem_univ _)
  exact (((analyticAt_id.sub analyticAt_const).mul
    (hc.sub (analyticAt_const.div analyticAt_id hs))).add analyticAt_const).mul hg

private theorem poleCleared_deriv {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    deriv actualZetaPoleCleared s = riemannZeta s + (s - 1) * deriv riemannZeta s := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 s] fun w => (w - 1) * riemannZeta w := by
    filter_upwards [eventually_ne_nhds hs0, eventually_ne_nhds hs1] with w hw0 hw1
    exact actualZetaPoleCleared_eq hw0 hw1
  rw [he.deriv_eq]
  have hd := ((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs1).hasDerivAt
  simpa only [Pi.mul_apply, sub_zero, one_mul] using! hd.deriv

private theorem extension_initial {s : ℂ} (hs : 1 < s.re) :
    actualZetaPoleCleared s * extensionNumerator s = -deriv actualZetaPoleCleared s := by
  have hs0 : s ≠ 0 := by intro h; norm_num [h] at hs
  have hs1 : s ≠ 1 := by intro h; norm_num [h] at hs
  have hsz : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_le_re hs.le
  have hz : 1 / 2 < (s - 1 / 2).re := by simp only [sub_re, div_ofNat_re, one_re]; linarith
  have hzn : s - 1 / 2 ≠ 0 := by
    intro h
    have hh := congrArg Complex.re h
    rw [hh] at hz
    norm_num at hz
  have he := actualFixedCenteredRieszLaplace_eq_regularization hz
  rw [actualRieszCriticalRegularization_eq_real_centers hzn] at he
  have hE : extensionNumerator s = actualRieszCriticalNumerator (s - 1 / 2) := by
    unfold extensionNumerator
    rw [he]
    rw [mul_div_cancel₀ _ (pow_ne_zero 2 hzn)]
    ring
  rw [hE]
  have ha : 1 / 2 + (s - 1 / 2) = s := by ring
  have hb : s - 1 / 2 - 1 / 2 = s - 1 := by ring
  unfold actualRieszCriticalNumerator
  rw [ha, hb, actualZetaPoleCleared_eq hs0 hs1, poleCleared_deriv hs0 hs1]
  simp only [logDeriv_apply]
  field_simp [hsz, sub_ne_zero.mpr hs1]
  <;> ring

private theorem extension_analytic {M R : ℝ} (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {s : ℂ} (hs : 1 / 2 < s.re) : AnalyticAt ℂ extensionNumerator s := by
  have hz : 0 < (s - 1 / 2).re := by simp only [sub_re, div_ofNat_re, one_re]; linarith
  have hh := (actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area
    hM hR harea) (s - 1 / 2) hz
  have hshift : AnalyticAt ℂ (fun w : ℂ => w - 1 / 2) s :=
    analyticAt_id.sub analyticAt_const
  have hcomp : AnalyticAt ℂ (fun w : ℂ => actualFixedCenteredRieszLaplace (w - 1 / 2)) s :=
    by simpa only [Function.comp_apply] using hh.comp (f := fun w : ℂ => w - 1 / 2) (x := s) hshift
  unfold extensionNumerator
  exact ((hshift.pow 2).mul hcomp).add analyticAt_const |>.add
    (analyticAt_const.mul hshift)

/-- Connected-domain continuation is proved for the cleared identity, retaining the area premise. -/
theorem actualFixedCenteredRieszLaplace_poleCleared_identity {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {s : ℂ} (hs : 1 / 2 < s.re) :
    actualZetaPoleCleared s * ((s - 1 / 2) ^ 2 *
      actualFixedCenteredRieszLaplace (s - 1 / 2) +
        (actualRieszLimitingLinearCenter : ℂ) +
          (actualRieszRealConstantCenter : ℂ) * (s - 1 / 2)) =
      -deriv actualZetaPoleCleared s := by
  let U := {s : ℂ | 1 / 2 < s.re}
  have hl : AnalyticOnNhd ℂ (fun s => actualZetaPoleCleared s * extensionNumerator s) U := by
    intro w hw
    have hw0 : w ≠ 0 := by intro h; norm_num [U, h] at hw
    exact (poleCleared_analyticAt hw0).mul (extension_analytic hM hR harea hw)
  have hr : AnalyticOnNhd ℂ (fun s => -deriv actualZetaPoleCleared s) U := by
    intro w hw
    have hw0 : w ≠ 0 := by intro h; norm_num [U, h] at hw
    exact (poleCleared_analyticAt hw0).deriv.neg
  have hconn : IsPreconnected U := (convex_halfSpace_re_gt (1 / 2)).isPreconnected
  have ht : (2 : ℂ) ∈ U := by norm_num [U]
  have he : (fun s => actualZetaPoleCleared s * extensionNumerator s) =ᶠ[𝓝 (2 : ℂ)]
      (fun s => -deriv actualZetaPoleCleared s) := by
    have hu : {s : ℂ | 1 < s.re} ∈ 𝓝 (2 : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by norm_num)
    filter_upwards [hu] with w hw
    exact extension_initial hw
  exact hl.eqOn_of_preconnected_of_eventuallyEq hr hconn ht he hs

/-- The supplied actual area budget excludes an actual nontrivial zero right of the axis. -/
theorem actualRiesz_quadratic_area_excludes_actual_right_zero {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    (ρ : (zetaZeros zetaSeam).carrier) : ¬ 1 / 2 < (ρ : ℂ).re := by
  intro hρ
  have hρ0 : (ρ : ℂ) ≠ 0 := by intro h; norm_num [h] at hρ
  have hρ1 : (ρ : ℂ) ≠ 1 := by
    intro h
    have hh := ρ.2.2.2
    simp [h] at hh
  have hz : riemannZeta (ρ : ℂ) = 0 := ρ.2.1
  have ha := poleCleared_analyticAt hρ0
  have hab := extension_analytic hM hR harea hρ
  have he : actualZetaPoleCleared =ᶠ[𝓝 (ρ : ℂ)] fun w => (w - 1) * riemannZeta w := by
    filter_upwards [eventually_ne_nhds hρ0, eventually_ne_nhds hρ1] with w hw0 hw1
    exact actualZetaPoleCleared_eq hw0 hw1
  have hzR : actualZetaPoleCleared (ρ : ℂ) = 0 := by
    rw [actualZetaPoleCleared_eq hρ0 hρ1, hz, mul_zero]
  have ho : analyticOrderAt actualZetaPoleCleared (ρ : ℂ) =
      ((zetaZeros zetaSeam).mult ρ : ℕ∞) := by
    rw [analyticOrderAt_congr he]
    have hsAff : AnalyticAt ℂ (fun w : ℂ => w - 1) (ρ : ℂ) :=
      analyticAt_id.sub analyticAt_const
    have hm := analyticOrderAt_mul hsAff (Zeta23.WeilEF.analyticAt_riemannZeta hρ1)
    have hn : analyticOrderAt (fun w : ℂ => w - 1) (ρ : ℂ) = 0 :=
      hsAff.analyticOrderAt_eq_zero.mpr (sub_ne_zero.mpr hρ1)
    simpa only [hn, zero_add] using hm.trans (by
      rw [(actualRiesz_zero_order_and_multiplicity ρ).2])
  have hprod : (fun w => actualZetaPoleCleared w * extensionNumerator w) =ᶠ[𝓝 (ρ : ℂ)]
      (fun w => -deriv actualZetaPoleCleared w) := by
    have hu : {s : ℂ | 1 / 2 < s.re} ∈ 𝓝 (ρ : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hρ
    filter_upwards [hu] with w hw
    exact actualFixedCenteredRieszLaplace_poleCleared_identity hM hR harea hw
  have hp := analyticOrderAt_congr hprod
  change analyticOrderAt (actualZetaPoleCleared * extensionNumerator) (ρ : ℂ) =
    analyticOrderAt (-deriv actualZetaPoleCleared) (ρ : ℂ) at hp
  rw [analyticOrderAt_neg, analyticOrderAt_mul ha hab] at hp
  have hd := ha.analyticOrderAt_deriv_add_one
  simp only [hzR, sub_zero] at hd
  rw [← hp, ho] at hd
  have hlt : ((zetaZeros zetaSeam).mult ρ : ℕ∞) <
      ((zetaZeros zetaSeam).mult ρ : ℕ∞) +
        analyticOrderAt extensionNumerator (ρ : ℂ) + 1 := by
    calc
      _ < ((zetaZeros zetaSeam).mult ρ : ℕ∞) + 1 := by exact_mod_cast Nat.lt_succ_self _
      _ ≤ _ := by gcongr; exact zero_le
  exact (ne_of_gt hlt) hd

end FormalResearch.RiemannHypothesis.SourceActualRieszAreaZeroExclusion
```
