/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
import Mathlib.Tactic

/-! # An actual integral primitive of the rational tent correction

The base a>1 fixes the primitive, with value zero at a. On every tent
whose left endpoint is at least a, its second difference is exactly h
times the existing rational correction. No arithmetic discrepancy is used
to define the primitive and no affine normalization of a zeta formula is
inferred from second differences alone.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval
namespace GRWTSK.Analysis.RealAnalysis.RationalRieszPrimitive
open TentWeight TentRationalCorrection

def rationalRieszPrimitive (a x : ℝ) : ℝ :=
  -(∫ t in a..x, (x - t) * rationalDensity t)

def windowPrimitive (a b x : ℝ) : ℝ :=
  -(∫ t in a..b, max (x - t) 0 * rationalDensity t)

theorem hinge_density_integrable (a b u : ℝ) (ha : 1 < a) (hab : a ≤ b) :
    IntervalIntegrable (fun t => max (u - t) 0 * rationalDensity t) volume a b := by
  have hc : Continuous (fun t : ℝ => max (u - t) 0) := by fun_prop
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    (hc.continuousOn.mul (rationalDensity_continuousOn ha))

theorem windowPrimitive_eq (a b u : ℝ) (ha : 1 < a) (hau : a ≤ u) (hub : u ≤ b) :
    windowPrimitive a b u = rationalRieszPrimitive a u := by
  have hi := hinge_density_integrable a u u ha hau
  have hj := hinge_density_integrable u b u (ha.trans_le hau) hub
  have hz : (∫ t in u..b, max (u - t) 0 * rationalDensity t) = 0 := by
    calc
      _ = ∫ t in u..b, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Icc u b := (uIcc_of_le hub) ▸ ht
        rw [max_eq_right (by linarith [ht'.1]), zero_mul]
      _ = 0 := by simp
  have he : (∫ t in a..u, max (u - t) 0 * rationalDensity t) =
      ∫ t in a..u, (u - t) * rationalDensity t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    have ht' : t ∈ Icc a u := (uIcc_of_le hau) ▸ ht
    rw [max_eq_left (by linarith [ht'.2])]
  unfold windowPrimitive rationalRieszPrimitive
  rw [← intervalIntegral.integral_add_adjacent_intervals hi hj, hz, add_zero, he]

theorem integral_tent_on_window (a b x h : ℝ) (hh : 0 < h)
    (hal : a ≤ x - h) (hrb : x + h ≤ b) :
    (∫ t in a..b, tent x h t * rationalDensity t) =
      ∫ t in (x - h)..(x + h), tent x h t * rationalDensity t := by
  have hs : Function.support (fun t => tent x h t * rationalDensity t) ⊆
      Ioc (x - h) (x + h) := by
    intro t ht
    have hn : tent x h t ≠ 0 := (mul_ne_zero_iff.mp ht).1
    have hp : 0 < tent x h t := lt_of_le_of_ne (tent_nonneg x h t) (Ne.symm hn)
    have hm := (tent_pos_iff x h t hh).mp hp
    exact ⟨hm.1, hm.2.le⟩
  have hb : Function.support (fun t => tent x h t * rationalDensity t) ⊆ Ioc a b := by
    intro t ht
    have hm := hs ht
    exact ⟨lt_of_le_of_lt hal hm.1, hm.2.trans hrb⟩
  rw [intervalIntegral.integral_eq_integral_of_support_subset hb,
    intervalIntegral.integral_eq_integral_of_support_subset hs]

theorem windowPrimitive_second_difference (a b x h : ℝ)
    (ha : 1 < a) (hh : 0 < h) (hal : a ≤ x - h) (hrb : x + h ≤ b) :
    windowPrimitive a b (x + h) - 2 * windowPrimitive a b x +
      windowPrimitive a b (x - h) = h * rationalTentCorrection x h := by
  let H : ℝ → ℝ → ℝ := fun u t => max (u - t) 0 * rationalDensity t
  have hab : a ≤ b := by linarith
  have hp := hinge_density_integrable a b (x + h) ha hab
  have hc := hinge_density_integrable a b x ha hab
  have hm := hinge_density_integrable a b (x - h) ha hab
  have he : (∫ t in a..b, (H (x + h) t - 2 * H x t + H (x - h) t)) =
      (∫ t in a..b, H (x + h) t) - 2 * (∫ t in a..b, H x t) +
        (∫ t in a..b, H (x - h) t) := by
    rw [intervalIntegral.integral_add (hp.sub (hc.const_mul 2)) hm,
      intervalIntegral.integral_sub hp (hc.const_mul 2), intervalIntegral.integral_const_mul]
  have hg : (fun t => H (x + h) t - 2 * H x t + H (x - h) t) =
      (fun t => h * (tent x h t * rationalDensity t)) := by
    funext t
    have hhg := hinge_second_difference x h t hh
    dsimp [H]
    nlinarith only [congrArg (fun v : ℝ => v * rationalDensity t) hhg]
  rw [hg, intervalIntegral.integral_const_mul,
    integral_tent_on_window a b x h hh hal hrb] at he
  unfold windowPrimitive rationalTentCorrection
  dsimp [H] at he
  linarith

/-- A single independently defined primitive, for every admitted tent above its base. -/
theorem rationalRieszPrimitive_second_difference (a x h : ℝ)
    (ha : 1 < a) (hh : 0 < h) (hal : a ≤ x - h) :
    rationalRieszPrimitive a (x + h) - 2 * rationalRieszPrimitive a x +
      rationalRieszPrimitive a (x - h) = h * rationalTentCorrection x h := by
  have he := windowPrimitive_second_difference a (x + h) x h ha hh hal (le_refl _)
  rw [windowPrimitive_eq a (x + h) (x + h) ha (by linarith) (le_refl _),
    windowPrimitive_eq a (x + h) x ha (by linarith) (by linarith),
    windowPrimitive_eq a (x + h) (x - h) ha hal (by linarith)] at he
  exact he

theorem rationalRieszPrimitive_base (a : ℝ) : rationalRieszPrimitive a a = 0 := by
  simp [rationalRieszPrimitive]

/-- Changing the base changes the primitive by this explicit affine function.
Both coefficients are actual rational-density integrals, not normalization premises. -/
theorem rationalRieszPrimitive_change_base (a b x : ℝ)
    (ha : 1 < a) (hab : a ≤ b) (hbx : b ≤ x) :
    rationalRieszPrimitive a x = rationalRieszPrimitive b x -
      x * (∫ t in a..b, rationalDensity t) +
        (∫ t in a..b, t * rationalDensity t) := by
  have hf : IntervalIntegrable rationalDensity volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab (rationalDensity_continuousOn ha)
  have htf : IntervalIntegrable (fun t => t * rationalDensity t) volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab
      (continuous_id.continuousOn.mul (rationalDensity_continuousOn ha))
  have hi : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab
      ((continuous_const.sub continuous_id).continuousOn.mul (rationalDensity_continuousOn ha))
  have hj : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume b x :=
    ContinuousOn.intervalIntegrable_of_Icc hbx
      ((continuous_const.sub continuous_id).continuousOn.mul
        (rationalDensity_continuousOn (ha.trans_le hab)))
  have he : (∫ t in a..b, (x - t) * rationalDensity t) =
      x * (∫ t in a..b, rationalDensity t) - (∫ t in a..b, t * rationalDensity t) := by
    calc
      _ = ∫ t in a..b, (x * rationalDensity t - t * rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  unfold rationalRieszPrimitive
  rw [← intervalIntegral.integral_add_adjacent_intervals hi hj, he]
  ring

end GRWTSK.Analysis.RealAnalysis.RationalRieszPrimitive
