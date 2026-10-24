# Complete source: GRWTSK.Analysis.ComplexAnalysis.Attempt06.Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26b38e2912925233f60a85619c5404a17d04c0f4` · SHA-256 `1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiLaplaceMellin
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-!
The pole at one cancels locally in the complete actual closed-seven return.
The regularization uses the actual completed zeta and Gamma factors, preserves
the full finite head and gamma correction, and states no critical zero-free
region or arithmetic average witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
open MeasureTheory Set Filter Complex
open scoped Topology
open SourceActualXiMellinSeven SourceActualXiLaplaceMellin RootActualXiComplexLaplaceBudget
noncomputable section

/-- The actual completed-zeta formula clears its pole without inventing Laurent data. -/
def actualZetaPoleCleared (s : ℂ) : ℂ :=
  ((s - 1) * (completedRiemannZeta₀ s - 1 / s) + 1) * (Gammaℝ s)⁻¹

/-- The genuine continuous source pole has this independently literal numerator. -/
def actualContinuousSevenPoleNumerator (s : ℂ) : ℂ := 1 - s * (7 : ℂ) ^ (1 - s)

/-- The true difference quotient is assigned its derivative at the touching pole. -/
def actualContinuousSevenPoleRegularization : ℂ → ℂ :=
  dslope actualContinuousSevenPoleNumerator 1

/-- Every original lower-seven, gamma and continuous term remains in the actual return. -/
def actualXiSevenReturn (s : ℂ) : ℂ :=
  -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
    ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
      (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1)

/-- The same complete return is regularized at one using authentic source derivatives. -/
def actualXiSevenReturnRegularization (s : ℂ) : ℂ :=
  actualContinuousSevenPoleRegularization s - deriv actualZetaPoleCleared s /
    actualZetaPoleCleared s - actualClosedMangoldtMellinHeadSeven s +
      ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
        (7 : ℂ) ^ (-s)

/-- The genuine zeta residue is exactly one in this analytic source formula. -/
theorem actualZetaPoleCleared_at_one : actualZetaPoleCleared 1 = 1 := by
  simp [actualZetaPoleCleared, Gammaℝ_one]

/-- Only the genuine zero and one exceptions are needed to recover the original zeta. -/
theorem actualZetaPoleCleared_eq {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    actualZetaPoleCleared s = (s - 1) * riemannZeta s := by
  rw [riemannZeta_def_of_ne_zero hs0, completedRiemannZeta_eq]
  have hn : 1 - s ≠ 0 := sub_ne_zero.mpr hs1.symm
  have he : (s - 1) * (completedRiemannZeta₀ s - 1 / s) + 1 =
      (s - 1) * (completedRiemannZeta₀ s - 1 / s - 1 / (1 - s)) := by
    field_simp
    ring
  unfold actualZetaPoleCleared
  rw [he, div_eq_mul_inv]
  ring

/-- Actual entire completed zeta and inverse Gamma give local analyticity at one. -/
theorem actualZetaPoleCleared_analyticAt_one : AnalyticAt ℂ actualZetaPoleCleared 1 := by
  have hc : AnalyticAt ℂ completedRiemannZeta₀ 1 :=
    (differentiable_completedZeta₀.differentiableOn.analyticOnNhd isOpen_univ) 1 (mem_univ _)
  have hg : AnalyticAt ℂ (fun s => (Gammaℝ s)⁻¹) 1 :=
    (differentiable_Gammaℝ_inv.differentiableOn.analyticOnNhd isOpen_univ) 1 (mem_univ _)
  exact (((analyticAt_id.sub analyticAt_const).mul
    (hc.sub (analyticAt_const.div analyticAt_id one_ne_zero))).add analyticAt_const).mul hg

private theorem numerator_differentiable : Differentiable ℂ actualContinuousSevenPoleNumerator := by
  unfold actualContinuousSevenPoleNumerator
  simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
  fun_prop

/-- The prescribed continuous pole numerator has its true touching zero. -/
theorem actualContinuousSevenPoleNumerator_at_one : actualContinuousSevenPoleNumerator 1 = 0 := by
  simp [actualContinuousSevenPoleNumerator]

/-- Genuine complex difference-quotient regularity gives an analytic continuous correction. -/
theorem actualContinuousSevenPoleRegularization_analyticAt_one :
    AnalyticAt ℂ actualContinuousSevenPoleRegularization 1 := by
  have hd := (Complex.differentiableOn_dslope (Filter.univ_mem : (Set.univ : Set ℂ) ∈ 𝓝 1)).mpr
    numerator_differentiable.differentiableOn
  exact (hd.analyticOnNhd isOpen_univ) 1 (mem_univ _)

private theorem seven_power_hasDerivAt (s : ℂ) :
    HasDerivAt (fun s : ℂ => (7 : ℂ) ^ (1 - s))
      (-Complex.log 7 * (7 : ℂ) ^ (1 - s)) s := by
  simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
  simpa [mul_comm] using! (((hasDerivAt_const s (Complex.log 7)).fun_mul
    ((hasDerivAt_const s (1 : ℂ)).fun_sub (hasDerivAt_id s))).cexp)

/-- The continuous pole correction has the exact finite value log seven minus one. -/
theorem actualContinuousSevenPoleRegularization_at_one :
    actualContinuousSevenPoleRegularization 1 = Complex.log 7 - 1 := by
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_same]
  have hd := (hasDerivAt_const (1 : ℂ) (1 : ℂ)).fun_sub
    ((hasDerivAt_id (1 : ℂ)).fun_mul (seven_power_hasDerivAt 1))
  simpa [actualContinuousSevenPoleNumerator, neg_sub] using! hd.deriv

private theorem poleCleared_deriv {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    deriv actualZetaPoleCleared s = riemannZeta s + (s - 1) * deriv riemannZeta s := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 s] (fun s => (s - 1) * riemannZeta s) := by
    filter_upwards [eventually_ne_nhds hs0, eventually_ne_nhds hs1] with t ht0 ht1
    exact actualZetaPoleCleared_eq ht0 ht1
  rw [he.deriv_eq]
  have hd := ((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs1).hasDerivAt
  simpa only [Pi.mul_apply, sub_zero, one_mul] using! hd.deriv

/-- The logarithmic derivative removes its genuine pole with the explicit actual nonzero guard. -/
theorem actualZeta_logDerivative_pole_identity {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    -deriv riemannZeta s / riemannZeta s = 1 / (s - 1) -
      deriv actualZetaPoleCleared s / actualZetaPoleCleared s := by
  rw [poleCleared_deriv hs0 hs1, actualZetaPoleCleared_eq hs0 hs1]
  field_simp
  ring

private theorem closedHead_analyticAt (s : ℂ) :
    AnalyticAt ℂ actualClosedMangoldtMellinHeadSeven s := by
  unfold actualClosedMangoldtMellinHeadSeven
  apply Finset.analyticAt_fun_sum
  intro n _
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [ArithmeticFunction.map_zero, ofReal_zero, CharP.cast_eq_zero, zero_mul]
    exact analyticAt_const
  · simp_rw [cpow_def_of_ne_zero (by exact_mod_cast hn : (n : ℂ) ≠ 0)]
    fun_prop

/-- The full return has its exact local analytic regularization, with every source head retained. -/
theorem actualXiSevenReturnRegularization_analyticAt_one :
    AnalyticAt ℂ actualXiSevenReturnRegularization 1 := by
  have hr := actualZetaPoleCleared_analyticAt_one
  have hz : actualZetaPoleCleared 1 ≠ 0 := by rw [actualZetaPoleCleared_at_one]; norm_num
  have h7 : AnalyticAt ℂ (fun s : ℂ => (7 : ℂ) ^ (-s)) 1 := by
    simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
    fun_prop
  exact ((actualContinuousSevenPoleRegularization_analyticAt_one.sub
    (hr.deriv.div hr hz)).sub (closedHead_analyticAt 1)).add (analyticAt_const.mul h7)

/-- Away from genuine source exceptions, the regularized and original full returns agree. -/
theorem actualXiSevenReturn_eq_regularization {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    actualXiSevenReturn s = actualXiSevenReturnRegularization s := by
  unfold actualXiSevenReturn actualXiSevenReturnRegularization
  rw [actualZeta_logDerivative_pole_identity hs0 hs1 hsz]
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_of_ne _ hs1, slope_def_field, actualContinuousSevenPoleNumerator_at_one]
  unfold actualContinuousSevenPoleNumerator
  field_simp
  ring

/-- The authentic pole-cleared source derivative equals the proved Euler constant. -/
theorem actualZetaPoleCleared_deriv_one :
    deriv actualZetaPoleCleared 1 = (Real.eulerMascheroniConstant : ℂ) := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 1] riemannZeta₁ := by
    filter_upwards [eventually_ne_nhds (one_ne_zero : (1 : ℂ) ≠ 0)] with s hs0
    by_cases hs1 : s = 1
    · subst s
      simp only [actualZetaPoleCleared_at_one, riemannZeta₁_one]
    · rw [actualZetaPoleCleared_eq hs0 hs1, riemannZeta_eq_inv_sub_mul hs1]
      field_simp
  rw [he.deriv_eq, deriv_riemannZeta₁_one]

/-- The finite pole-one value retains the complete actual lower-seven and gamma heads. -/
def actualXiSevenPoleValue : ℂ :=
  Complex.log 7 - 1 - (Real.eulerMascheroniConstant : ℂ) -
    actualClosedMangoldtMellinHeadSeven 1 +
      ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) / 7

/-- The full regularization has the explicit authentic finite value, with no head deleted. -/
theorem actualXiSevenReturnRegularization_at_one :
    actualXiSevenReturnRegularization 1 = actualXiSevenPoleValue := by
  simp only [actualXiSevenReturnRegularization, actualContinuousSevenPoleRegularization_at_one,
    actualZetaPoleCleared_deriv_one, actualZetaPoleCleared_at_one, cpow_neg_one,
    actualXiSevenPoleValue, div_eq_mul_inv, inv_one, mul_one]

/-- Source nonvanishing is only local near the pole and follows the actual value one. -/
theorem actualXiSevenReturn_eventually_eq_regularization :
    actualXiSevenReturn =ᶠ[𝓝[≠] 1] actualXiSevenReturnRegularization := by
  have hr := actualZetaPoleCleared_analyticAt_one.continuousAt.eventually_ne
    (by rw [actualZetaPoleCleared_at_one]; norm_num : actualZetaPoleCleared 1 ≠ 0)
  filter_upwards [hr.filter_mono nhdsWithin_le_nhds,
    eventually_ne_nhdsWithin (one_ne_zero : (1 : ℂ) ≠ 0), self_mem_nhdsWithin] with s hsr hs0 hs1
  have hs1' : s ≠ 1 := hs1
  have hsz : riemannZeta s ≠ 0 := by
    rw [actualZetaPoleCleared_eq hs0 hs1'] at hsr
    exact (mul_ne_zero_iff.mp hsr).2
  exact actualXiSevenReturn_eq_regularization hs0 hs1' hsz

/-- Both actual poles cancel in the complete return along the genuine punctured neighborhood. -/
theorem actualXiSevenReturn_tendsto_pole_one :
    Tendsto actualXiSevenReturn (𝓝[≠] 1) (𝓝 actualXiSevenPoleValue) := by
  have hr := actualXiSevenReturnRegularization_analyticAt_one.continuousAt.tendsto
  rw [actualXiSevenReturnRegularization_at_one] at hr
  exact (hr.mono_left nhdsWithin_le_nhds).congr'
    actualXiSevenReturn_eventually_eq_regularization.symm

/-- The locally regularized return has a finite genuine bound, not a critical-axis witness. -/
theorem actualXiSevenReturn_eventual_norm_bound :
    ∀ᶠ s in 𝓝[≠] (1 : ℂ), ‖actualXiSevenReturn s‖ ≤ ‖actualXiSevenPoleValue‖ + 1 := by
  filter_upwards [(Metric.tendsto_nhds.mp actualXiSevenReturn_tendsto_pole_one) 1
    (by norm_num)] with s hs
  exact norm_le_norm_add_const_of_dist_le hs.le

/-- This expression regularizes only the initial Laplace boundary z = one half. -/
def actualXiLaplacePoleOneRegularization (z : ℂ) : ℂ :=
  actualXiSevenReturnRegularization (z + 1 / 2) / ((z + 1 / 2) * z)

/-- The complete regularized Laplace expression is analytic at the initial boundary. -/
theorem actualXiLaplacePoleOneRegularization_analyticAt_half :
    AnalyticAt ℂ actualXiLaplacePoleOneRegularization (1 / 2) := by
  have hr : AnalyticAt ℂ (fun z : ℂ => actualXiSevenReturnRegularization (z + 1 / 2))
      (1 / 2) :=
    actualXiSevenReturnRegularization_analyticAt_one.fun_comp_of_eq
      (analyticAt_id.add analyticAt_const) (by norm_num)
  exact hr.div ((analyticAt_id.add analyticAt_const).mul analyticAt_id) (by norm_num)

/-- The initial Laplace boundary value keeps every closed-seven and gamma term. -/
theorem actualXiLaplacePoleOneRegularization_at_half :
    actualXiLaplacePoleOneRegularization (1 / 2) = 2 * actualXiSevenPoleValue := by
  unfold actualXiLaplacePoleOneRegularization
  norm_num only [show (1 / 2 : ℂ) + 1 / 2 = 1 by norm_num, one_mul]
  rw [actualXiSevenReturnRegularization_at_one]
  ring

/-- The actual L1 Laplace integral equals the regularization only on its proved initial domain. -/
theorem actualXiComplexLaplace_eq_poleOneRegularization {z : ℂ} (hz : 1 / 2 < z.re) :
    actualXiComplexLaplace z = actualXiLaplacePoleOneRegularization z := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hs0 : z + 1 / 2 ≠ 0 := by intro he; rw [he] at hs; norm_num at hs
  have hs1 : z + 1 / 2 ≠ 1 := by intro he; rw [he] at hs; norm_num at hs
  have hz0 : z ≠ 0 := by intro he; rw [he] at hz; norm_num at hz
  have hi := actualXiComplexLaplace_mul_eq_logDerivative hz
  change (z + 1 / 2) * (z * actualXiComplexLaplace z) = actualXiSevenReturn (z + 1 / 2) at hi
  rw [actualXiSevenReturn_eq_regularization hs0 hs1
    (riemannZeta_ne_zero_of_one_le_re hs.le)] at hi
  unfold actualXiLaplacePoleOneRegularization
  apply (eq_div_iff (mul_ne_zero hs0 hz0)).mpr
  linear_combination hi

/-- The genuine initial-domain Laplace integral has a finite Abel limit at z = one half. -/
theorem actualXiComplexLaplace_tendsto_initial_boundary :
    Tendsto actualXiComplexLaplace (𝓝[{z : ℂ | 1 / 2 < z.re}] (1 / 2))
      (𝓝 (2 * actualXiSevenPoleValue)) := by
  have hr := actualXiLaplacePoleOneRegularization_analyticAt_half.continuousAt.tendsto
  rw [actualXiLaplacePoleOneRegularization_at_half] at hr
  apply (hr.mono_left nhdsWithin_le_nhds).congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact (actualXiComplexLaplace_eq_poleOneRegularization hz).symm

/-- A finite bound near the initial boundary does not assert critical-half-plane integrability. -/
theorem actualXiComplexLaplace_eventual_initial_norm_bound :
    ∀ᶠ z in 𝓝[{z : ℂ | 1 / 2 < z.re}] (1 / 2),
      ‖actualXiComplexLaplace z‖ ≤ ‖2 * actualXiSevenPoleValue‖ + 1 := by
  filter_upwards [(Metric.tendsto_nhds.mp actualXiComplexLaplace_tendsto_initial_boundary) 1
    (by norm_num)] with z hz
  exact norm_le_norm_add_const_of_dist_le hz.le

end
end FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
```
