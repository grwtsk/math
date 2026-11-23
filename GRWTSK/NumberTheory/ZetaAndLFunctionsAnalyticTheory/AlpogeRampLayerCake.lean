/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Weighted finite ramp and a one-third power level-set bound

Integration of each threshold indicator on (0,W] gives the capped value.
The resulting inequality transfers a level-set bound to a bound for the
finite ramp. No arithmetic level-set estimate is assumed outside its
explicit hypothesis.
-/

namespace GRWTSK.NumberTheory.AlpogeRampLayerCake

open MeasureTheory Set
open scoped BigOperators Interval

variable {ι : Type*}

private noncomputable def step (W x c : ℝ) : ℝ → ℝ :=
  (Iic (min W x)).indicator (fun _ => c)

private theorem step_integrable (W x c : ℝ) : IntervalIntegrable (step W x c) volume 0 W := by
  have h : IntervalIntegrable (fun _ : ℝ => c) volume 0 W := intervalIntegrable_const
  exact ⟨h.1.indicator measurableSet_Iic, h.2.indicator measurableSet_Iic⟩

private theorem step_integral {W x : ℝ} (hW : 0 ≤ W) (hx : 0 ≤ x) (c : ℝ) :
    (∫ t in (0 : ℝ)..W, step W x c t) = c * min W x := by
  change (∫ t in (0 : ℝ)..W, indicator {t : ℝ | t ≤ min W x} (fun _ => c) t) = _
  rw [intervalIntegral.integral_indicator (show min W x ∈ Icc 0 W from
    ⟨le_min hW hx, min_le_left ..⟩), intervalIntegral.integral_const]
  simp [mul_comm]

private theorem step_sum (s : Finset ι) (x c : ι → ℝ) {W t : ℝ} (ht : t ≤ W) :
    (∑ i ∈ s, step W (x i) (c i) t) = ∑ i ∈ s.filter (fun i => t ≤ x i), c i := by
  classical
  simp [step, Set.indicator_apply, Finset.sum_filter, ht]

private theorem ramp_steps_integral {W : ℝ} (hW : 0 ≤ W) (s : Finset ι)
    (x c : ι → ℝ) (hx : ∀ i ∈ s, 0 ≤ x i) :
    (∑ i ∈ s, c i * min W (x i)) = ∫ t in (0 : ℝ)..W,
      ∑ i ∈ s, step W (x i) (c i) t := by
  have hi (i : ι) (_ : i ∈ s) := step_integrable W (x i) (c i)
  calc
    _ = ∑ i ∈ s, ∫ t in (0 : ℝ)..W, step W (x i) (c i) t :=
      Finset.sum_congr rfl fun i hi => (step_integral hW (hx i hi) (c i)).symm
    _ = ∫ t in (0 : ℝ)..W, ∑ i ∈ s, step W (x i) (c i) t :=
      (intervalIntegral.integral_finsetSum hi).symm

/-- The capped finite sum is exactly the integral of its weighted level-set counts. -/
theorem finite_ramp_identity {W : ℝ} (hW : 0 ≤ W) (s : Finset ι) (x c : ι → ℝ)
    (hx : ∀ i ∈ s, 0 ≤ x i) :
    (∑ i ∈ s, c i * min W (x i)) = ∫ t in (0 : ℝ)..W,
      ∑ i ∈ s.filter (fun i => t ≤ x i), c i := by
  rw [ramp_steps_integral hW s x c hx]
  apply intervalIntegral.integral_congr
  intro t ht
  rw [uIcc_of_le hW] at ht
  exact step_sum s x c ht.2

/-- Any absolutely integrable envelope for the weighted level sets bounds the finite ramp
by its integral. The weights may be signed when the level-set bound is available. -/
theorem ramp_le_integral {W : ℝ} (hW : 0 ≤ W) (s : Finset ι) (x c : ι → ℝ)
    (hx : ∀ i ∈ s, 0 ≤ x i) (g : ℝ → ℝ) (hg : IntervalIntegrable g volume 0 W)
    (hlevel : ∀ t, 0 < t → t ≤ W → (∑ i ∈ s.filter (fun i => t ≤ x i), c i) ≤ g t) :
    (∑ i ∈ s, c i * min W (x i)) ≤ ∫ t in (0 : ℝ)..W, g t := by
  have hi (i : ι) (_ : i ∈ s) := step_integrable W (x i) (c i)
  calc
    _ = ∫ t in (0 : ℝ)..W, ∑ i ∈ s, step W (x i) (c i) t := ramp_steps_integral hW s x c hx
    _ ≤ _ := by
      have hsum : IntervalIntegrable (fun t => ∑ i ∈ s, step W (x i) (c i) t) volume 0 W := by
        convert IntervalIntegrable.sum s hi using 1
        ext t
        simp
      apply intervalIntegral.integral_mono_on_of_le_Ioo hW hsum hg
      intro t ht
      rw [step_sum s x c ht.2.le]
      exact hlevel t ht.1 ht.2.le

/-- The one-third power count integrates to the exact coefficient 3/2. -/
theorem ramp_le_three_halves {W A : ℝ} (hW : 0 ≤ W) (s : Finset ι) (x c : ι → ℝ)
    (hx : ∀ i ∈ s, 0 ≤ x i)
    (hlevel : ∀ t, 0 < t → t ≤ W →
      (∑ i ∈ s.filter (fun i => t ≤ x i), c i) ≤ A * t ^ (-(1 / 3 : ℝ))) :
    (∑ i ∈ s, c i * min W (x i)) ≤ (3 / 2 : ℝ) * A * W ^ (2 / 3 : ℝ) := by
  have hg : IntervalIntegrable (fun t : ℝ => A * t ^ (-(1 / 3 : ℝ))) volume 0 W :=
    (intervalIntegral.intervalIntegrable_rpow' (by norm_num : (-1 : ℝ) < -(1 / 3))).const_mul A
  apply (ramp_le_integral hW s x c hx _ hg hlevel).trans_eq
  rw [intervalIntegral.integral_const_mul, integral_rpow (Or.inl (by norm_num))]
  norm_num
  ring

/-- A weighted count below size u, on the exact range u ≥ a/W, bounds the reciprocal ramp. -/
theorem reciprocal_ramp_of_count {W a C : ℝ} (hW : 0 < W) (ha : 0 ≤ a)
    (s : Finset ι) (size c : ι → ℝ) (hs : ∀ i ∈ s, 0 < size i)
    (count : ∀ u : ℝ, a / W ≤ u →
      (∑ i ∈ s.filter (fun i => size i ≤ u), c i) ≤ C * u ^ (1 / 3 : ℝ)) :
    (∑ i ∈ s, c i * min W (a / size i)) ≤
      (3 / 2 : ℝ) * (C * a ^ (1 / 3 : ℝ)) * W ^ (2 / 3 : ℝ) := by
  apply ramp_le_three_halves hW.le s (fun i => a / size i) c (fun i hi => div_nonneg ha (hs i hi).le)
  intro t ht htW
  have hfilter : s.filter (fun i => t ≤ a / size i) = s.filter (fun i => size i ≤ a / t) := by
    apply Finset.filter_congr
    intro i hi
    rw [le_div_iff₀ (hs i hi), le_div_iff₀ ht, mul_comm]
  rw [hfilter]
  apply (count (a / t) (div_le_div_of_nonneg_left ha ht htW)).trans_eq
  rw [Real.div_rpow ha ht.le, Real.rpow_neg ht.le]
  ring

end GRWTSK.NumberTheory.AlpogeRampLayerCake
