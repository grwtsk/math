# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PositiveDomainQuadrature.Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4edd358f5d02eee6cf1acf23e159931fb3f2006` · SHA-256 `2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling

/-!
# Complete finite quadrature on the actual positive sampling domain

The earlier qualified sampler assumes a globally C1 function. A logarithmic
source need only have its actual derivative on x>0. This adapter retains every
unit cell from 1 through N+1, both endpoints, and the entire derivative price.
It generalizes the source sampler's integration-by-parts proof to that exact
positive-domain hypothesis, without extending the arithmetic sample across
zero. Human unchanged sampling-domain direction: grwtsk contributors. Local
domain adapter: OpenAI Codex, adapted from the earlier qualified sampler.
This is a local hypothesis transport; no new quadrature method or mathematical
priority is claimed. Source and Mathlib identities retain their own origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PositiveDomainQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateTwoMomentSampling MeasureTheory Set
noncomputable section

theorem positive_domain_unit_error_identity (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) {k : ℕ} (hk : 1 ≤ k) :
    g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u) =
      -(∫ u in (k : ℝ)..(k + 1 : ℝ), ((k + 1 : ℝ) - u) * d u) := by
  have hi : IntervalIntegrable d volume (k : ℝ) (k + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.mono
    rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)]
    intro u hu
    have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
    exact lt_of_lt_of_le zero_lt_one (hkR.trans hu.1)
  have h := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (k : ℝ)) (b := (k + 1 : ℝ))
    (u := fun u : ℝ ↦ (k + 1 : ℝ) - u) (v := g)
    (u' := fun _ : ℝ ↦ (-1 : ℝ)) (v' := d)
    (fun u _ ↦ (hasDerivAt_id u).const_sub (k + 1 : ℝ))
    (fun u hu ↦ hd u (by
      have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
      rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)] at hu
      linarith [hu.1]))
    (continuous_const.intervalIntegrable _ _) hi
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul, neg_one_mul,
    intervalIntegral.integral_neg] at h
  linarith

theorem positive_domain_unit_error_price (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) {k : ℕ} (hk : 1 ≤ k) :
    |g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| := by
  rw [positive_domain_unit_error_identity g d hd hc hk, abs_neg]
  have hi : IntervalIntegrable (fun u ↦ |d u|) volume (k : ℝ) (k + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)]
    intro u hu
    have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
    exact lt_of_lt_of_le zero_lt_one (hkR.trans hu.1)
  have h : ‖∫ u in (k : ℝ)..(k + 1 : ℝ), ((k + 1 : ℝ) - u) * d u‖ ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| :=
    intervalIntegral.norm_integral_le_of_norm_le (by norm_num)
      (Filter.Eventually.of_forall (fun u hu ↦ by
        have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith [hu.2]
        have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith [hu.1]
        rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hw0]
        exact mul_le_of_le_one_left (abs_nonneg _) hw1)) hi
  simpa only [Real.norm_eq_abs] using h

theorem positive_domain_integral_retains_every_unit_cell (f : ℝ → ℝ)
    (hc : ContinuousOn f (Ioi 0)) (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ), f u) =
      ∑ k ∈ Finset.Icc 1 N, ∫ u in (k : ℝ)..(k + 1 : ℝ), f u := by
  have hi {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) : IntervalIntegrable f volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply hc.mono
    rw [uIcc_of_le hab]
    intro u hu
    exact lt_of_lt_of_le zero_lt_one (ha.trans hu.1)
  induction N with
  | zero => simp
  | succ N ih =>
      have hsplit := intervalIntegral.integral_add_adjacent_intervals
        (a := (1 : ℝ)) (b := (N + 1 : ℝ)) (c := (N + 2 : ℝ))
        (hi (by norm_num) (by linarith [Nat.cast_nonneg (α := ℝ) N]))
        (hi (by linarith [Nat.cast_nonneg (α := ℝ) N]) (by linarith))
      rw [ih] at hsplit
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
      simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

theorem complete_positive_domain_sampling_price (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) (N : ℕ) :
    |leftSampleSum g N - (∫ u in (1 : ℝ)..(N + 1 : ℝ), g u)| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ), |d u| := by
  have hg : ContinuousOn g (Ioi 0) := fun x hx ↦ (hd x hx).continuousAt.continuousWithinAt
  rw [positive_domain_integral_retains_every_unit_cell g hg N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.Icc 1 N, |g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.Icc 1 N, ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| := by
      apply Finset.sum_le_sum
      intro k hk
      exact positive_domain_unit_error_price g d hd hc (Finset.mem_Icc.mp hk).1
    _ = _ := (positive_domain_integral_retains_every_unit_cell _ hc.abs N).symm

end
end GRWTSK.RiemannHypothesis.Conversation.PositiveDomainQuadrature
```
