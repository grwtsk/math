# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzBoundAttempt02.Variantdc48ba51dbe7ccf9977384e79f7761c62330ffa51a28f9a01bc40430ef7ae21b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `152d8baf0b1203dc9fb9004078ea2593f646170c` · SHA-256 `dc48ba51dbe7ccf9977384e79f7761c62330ffa51a28f9a01bc40430ef7ae21b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMuntzInventory
import Mathlib.NumberTheory.AbelSummation

/-! Actual finite Abel identity and boundedness for the independently defined Müntz operator.
Direction grwtsk contributors; focused scratch proof OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzBound
open MeasureTheory Filter
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel
open ContinuousResearch.ActualMuntzInventory

theorem actual_source_interval_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..Real.exp A, actualLogSource A u) = 0 := by
  have hp : 0 < A := by linarith
  have he : (Set.Ioc 0 (Real.exp A)).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : u ∈ Set.Ioc 0 (Real.exp A)
    · simp [hu]
    · have hz : actualLogSource A u = 0 := by
        apply actualLogSource_zero_outside hp
        simp only [Set.mem_Ioc,not_and_or,not_lt,not_le] at hu
        rcases hu with hu | hu
        · exact Or.inl (hu.trans (Real.exp_pos (-A)).le)
        · exact Or.inr hu.le
      simp [hu,hz]
  have hepos : (Set.Ioi 0).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : 0 < u
    · simp [hu]
    · simp [hu,actualLogSource_zero_nonpos A (le_of_not_gt hu)]
  rw [intervalIntegral.integral_of_le (Real.exp_pos A).le,
    ←integral_indicator measurableSet_Ioc,he,
    ←hepos,integral_indicator measurableSet_Ioi]
  exact actualLogSource_integral_zero hA

theorem scaled_source_interval_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), actualLogSource A (x*t)) = 0 := by
  rw [intervalIntegral.integral_comp_mul_left _ hx.ne']
  simp only [mul_zero,mul_div_cancel₀ _ hx.ne',actual_source_interval_integral_zero hA,smul_zero]

theorem actual_scaled_Abel {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = -(∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *((⌊t⌋₊ : ℝ)+1)) := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hid : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hs := sum_mul_eq_sub_integral_mul (fun _ : ℕ => (1 : ℝ))
    (div_nonneg (Real.exp_pos A).le hx.le)
    (fun t _ => (hg.differentiable (by norm_num) t)) hid
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  have hleft : (∑ n ∈ Finset.Icc 0 ⌊Real.exp A/x⌋₊, g n * (1 : ℝ)) = actualMuntz A x := by
    simp only [mul_one]
    rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_allSamples (by linarith) hx,
      allSamples_eq_closed_inventory (by linarith) hx]
    unfold g upperInventory
    apply Finset.sum_congr rfl
    intro n _
    rw [mul_comm]
  rw [hleft,hz,zero_mul,zero_sub] at hs
  simpa only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,
    mul_one,Nat.cast_add,Nat.cast_one,g] using hs

theorem actual_scaled_linear_derivative_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), t*deriv (fun u : ℝ => actualLogSource A (x*u)) t) = 0 := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hs := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => t) (v:=g) (u':=fun _ => (1 : ℝ)) (v':=deriv g)
    continuous_id.continuousOn hg.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (Real.exp A/x))
    (hg.continuous_deriv_one.intervalIntegrable 0 (Real.exp A/x))
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  rw [hz,mul_zero,zero_mul,sub_zero] at hs
  dsimp [g] at hs
  simpa only [one_mul,scaled_source_interval_integral_zero hA hx,zero_sub,neg_zero] using hs

end ContinuousResearch.ActualMuntzBound
```
