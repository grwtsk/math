# Complete source: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleBeforeInventory.Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5195fa17e5a6f7b5a0020cfa7e6183f984349ba8` · SHA-256 `b734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Zeta23.FromPNTPlus.ZetaBounds
import Mathlib.Analysis.Complex.RemovableSingularity

/-!
The actual reciprocal of zeta at `1 + s`, with its pole value removed. The
smoothed Perron integrand has a genuine simple pole of residue one at zero.
These local results impose no zero-location or arithmetic cancellation premise.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole

open Complex Filter Set
open scoped Topology

noncomputable section

/-- The factor `s * zeta(1 + s)` with its removable value one at zero. -/
def zetaPoleFactor (s : ℂ) : ℂ := if s = 0 then 1 else s * riemannZeta (1 + s)

@[simp] theorem zetaPoleFactor_zero : zetaPoleFactor 0 = 1 := by
  simp [zetaPoleFactor]

private theorem zetaPoleFactor_off (s : ℂ) (hs : s ≠ 0) :
    zetaPoleFactor s = s * riemannZeta (1 + s) := by
  simp [zetaPoleFactor, hs]

private theorem zetaPoleFactor_limit :
    Tendsto zetaPoleFactor (𝓝[≠] 0) (𝓝 1) := by
  have ht : Tendsto (fun s : ℂ => 1 + s) (𝓝[≠] 0) (𝓝[≠] 1) := by
    apply tendsto_nhdsWithin_iff.mpr
    constructor
    · simpa using! (((continuous_const : Continuous (fun _ : ℂ => (1 : ℂ))).add
        continuous_id).tendsto 0).mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin] with s hs
      simpa using hs
  have h := riemannZeta_residue_one.comp ht
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  simp only [Function.comp_apply, add_sub_cancel_left]
  exact (zetaPoleFactor_off s hs).symm

theorem zetaPoleFactor_analyticAt_zero : AnalyticAt ℂ zetaPoleFactor 0 := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [self_mem_nhdsWithin] with s hs
    have hn : 1 + s ≠ (1 : ℂ) := by simpa using hs
    have hz := (differentiableAt_riemannZeta hn).comp s
      ((differentiableAt_const 1).add differentiableAt_id)
    apply (differentiableAt_id.mul hz).congr_of_eventuallyEq
    filter_upwards [eventually_ne_nhds hs] with t ht
    exact zetaPoleFactor_off t ht
  · rw [continuousAt_iff_punctured_nhds, zetaPoleFactor_zero]
    exact zetaPoleFactor_limit

/-- The reciprocal zeta function with the genuine removed value zero at `s = 0`. -/
def reciprocalZeta (s : ℂ) : ℂ := if s = 0 then 0 else (riemannZeta (1 + s))⁻¹

@[simp] theorem reciprocalZeta_zero : reciprocalZeta 0 = 0 := by
  simp [reciprocalZeta]

theorem reciprocalZeta_off (s : ℂ) (hs : s ≠ 0) :
    reciprocalZeta s = (riemannZeta (1 + s))⁻¹ := by
  simp [reciprocalZeta, hs]

theorem reciprocalZeta_eq_div_factor (s : ℂ) :
    reciprocalZeta s = s / zetaPoleFactor s := by
  by_cases hs : s = 0
  · simp [hs]
  · rw [reciprocalZeta_off s hs, zetaPoleFactor_off s hs, div_mul_eq_div_div,
      div_self hs, one_div]

theorem reciprocalZeta_analyticAt_zero : AnalyticAt ℂ reciprocalZeta 0 := by
  have h := analyticAt_id.div zetaPoleFactor_analyticAt_zero
    (by simp : zetaPoleFactor 0 ≠ 0)
  apply h.congr
  exact Filter.Eventually.of_forall fun s => (reciprocalZeta_eq_div_factor s).symm

theorem reciprocalZeta_hasDerivAt_zero : HasDerivAt reciprocalZeta 1 0 := by
  have h := (hasDerivAt_id (0 : ℂ)).div zetaPoleFactor_analyticAt_zero.differentiableAt.hasDerivAt
    (by simp : zetaPoleFactor 0 ≠ 0)
  have hd : HasDerivAt (fun s : ℂ => s / zetaPoleFactor s) 1 0 := by
    simpa only [zetaPoleFactor_zero, mul_one, id_eq, zero_mul, sub_zero, one_pow,
      div_one, Pi.div_apply] using! h
  exact hd.congr_of_eventuallyEq (Filter.Eventually.of_forall reciprocalZeta_eq_div_factor)

theorem reciprocalZeta_eventually_ne_zero :
    ∀ᶠ s in 𝓝[≠] 0, reciprocalZeta s ≠ 0 ∧ riemannZeta (1 + s) ≠ 0 := by
  have hf := zetaPoleFactor_analyticAt_zero.continuousAt.eventually_ne
    (by simp : zetaPoleFactor 0 ≠ 0)
  filter_upwards [hf.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with s hs hs0
  have hr : reciprocalZeta s ≠ 0 := by
    rw [reciprocalZeta_eq_div_factor]
    exact div_ne_zero hs0 hs
  exact ⟨hr, by simpa only [reciprocalZeta_off s hs0, ne_eq, inv_eq_zero] using hr⟩

/-- The literal logarithmically smoothed Perron integrand, including its source zeta factor. -/
def smoothedPerronIntegrand (x : ℝ) (s : ℂ) : ℂ :=
  (x : ℂ) ^ s / (s ^ 2 * riemannZeta (1 + s))

private theorem smoothedPerronIntegrand_factor (x : ℝ) (s : ℂ) :
    smoothedPerronIntegrand x s = ((x : ℂ) ^ s / zetaPoleFactor s) / s := by
  by_cases hs : s = 0
  · simp [smoothedPerronIntegrand, hs]
  · rw [smoothedPerronIntegrand, zetaPoleFactor_off s hs, div_div]
    congr 1
    ring

private theorem perronNumerator_analyticAt_zero (x : ℝ) (hx : 0 < x) :
    AnalyticAt ℂ (fun s : ℂ => (x : ℂ) ^ s / zetaPoleFactor s) 0 := by
  apply AnalyticAt.div _ zetaPoleFactor_analyticAt_zero (by simp)
  have hxn : (x : ℂ) ≠ 0 := by exact_mod_cast hx.ne'
  have hl : AnalyticAt ℂ (fun s : ℂ => Complex.log (x : ℂ) * s) 0 := by fun_prop
  convert! hl.cexp using 1
  funext s
  exact Complex.cpow_def_of_ne_zero hxn s

theorem smoothedPerronIntegrand_meromorphicAt_zero (x : ℝ) (hx : 0 < x) :
    MeromorphicAt (smoothedPerronIntegrand x) 0 := by
  have h := (perronNumerator_analyticAt_zero x hx).meromorphicAt.div
    analyticAt_id.meromorphicAt
  apply h.congr
  exact Filter.Eventually.of_forall fun s => (smoothedPerronIntegrand_factor x s).symm

theorem smoothedPerronIntegrand_order_zero (x : ℝ) (hx : 0 < x) :
    meromorphicOrderAt (smoothedPerronIntegrand x) 0 = (-1 : ℤ) := by
  apply (meromorphicOrderAt_eq_int_iff (smoothedPerronIntegrand_meromorphicAt_zero x hx)).mpr
  refine ⟨fun s => (x : ℂ) ^ s / zetaPoleFactor s,
    perronNumerator_analyticAt_zero x hx, by simp, ?_⟩
  filter_upwards [self_mem_nhdsWithin] with s _hs
  rw [smoothedPerronIntegrand_factor]
  simp only [sub_zero, zpow_neg_one, smul_eq_mul, div_eq_mul_inv]
  ring

theorem smoothedPerronIntegrand_residue_limit (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * smoothedPerronIntegrand x s) (𝓝[≠] 0) (𝓝 1) := by
  have h : Tendsto (fun s : ℂ => (x : ℂ) ^ s / zetaPoleFactor s)
      (𝓝[≠] 0) (𝓝 ((x : ℂ) ^ (0 : ℂ) / zetaPoleFactor 0)) :=
    (perronNumerator_analyticAt_zero x hx).continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  simp only [cpow_zero, zetaPoleFactor_zero, div_one] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  rw [smoothedPerronIntegrand_factor]
  exact (mul_div_cancel₀ _ hs).symm

theorem smoothedPerronIntegrand_residue_one (x : ℝ) (hx : 0 < x) :
    residue (smoothedPerronIntegrand x) 0 = 1 := by
  apply residue_eq_of_tendsto
  simpa only [sub_zero] using smoothedPerronIntegrand_residue_limit x hx

end
end FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole
```
