# Complete source: GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb55a15888cb0a1340f5afb86b105f510d78ac7e` · SHA-256 `dfd6c1f8f7158661b02bad340e3cd7c899ad311d171eb90cd98b54f0308e45e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib
import GRWTSK.Analysis.Series.DyadicPartition
import GRWTSK.Analysis.MellinTransform.PositiveCoordinates

/-! # The complete continuum subtraction on the Euler half-plane

The integral definition is valid at s=1. Closed primitive formulas below
are used only with s≠1, and the infinite geometric sum only with Re(s)>1.
The cells begin at 1; the first interval is not removed.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries
open GRWTSK.Analysis.MellinTransform.PositiveCoordinates
open GRWTSK.Analysis.Series.DyadicPartition

def background (j : ℕ) (s : ℂ) : ℂ :=
  ∫ u in (edge j : ℝ)..(edge (j+1) : ℝ), power u (-s)

def ratio (s : ℂ) : ℂ := power 2 (1-s)

theorem power_natPow {x : ℝ} (hx : 0 < x) (j : ℕ) (s : ℂ) :
    power (x^j) s = (power x s)^j := by
  induction j with
  | zero => simp [power_one_base]
  | succ j ih =>
    rw [pow_succ, power_mul (pow_pos hx j) hx, ih, pow_succ]

theorem power_edge (j : ℕ) (s : ℂ) :
    power (edge j : ℝ) s = (power 2 s)^j := by
  simpa [edge] using power_natPow (by norm_num : (0:ℝ)<2) j s

theorem power_integrable {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) (s : ℂ) :
    IntervalIntegrable (fun u : ℝ => power u s) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  intro u hu
  exact (power_hasDerivAt (ha.trans_le hu.1) s).continuousAt.continuousWithinAt

theorem primitive_hasDerivAt {s : ℂ} (hs : s ≠ 1) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (fun v : ℝ => power v (1-s)/(1-s)) (power u (-s)) u := by
  have hz : (1-s : ℂ) ≠ 0 := sub_ne_zero.mpr (Ne.symm hs)
  have hu0 : (u : ℂ) ≠ 0 := by exact_mod_cast hu.ne'
  have h := (power_hasDerivAt hu (1-s)).div_const (1-s)
  apply h.congr_deriv
  rw [power_one_sub hu]
  field_simp [hz, hu0]

/-- Exact finite primitive, with the branch and exceptional parameter explicit. -/
theorem finite_integral {s : ℂ} (hs : s ≠ 1) {a b : ℝ}
    (ha : 0 < a) (hab : a ≤ b) :
    (∫ u in a..b, power u (-s)) =
      (power b (1-s)-power a (1-s))/(1-s) := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u hu => primitive_hasDerivAt hs
      (ha.trans_le (show u ∈ Icc a b by simpa [uIcc_of_le hab] using hu).1))
    (power_integrable ha hab (-s))
  simpa [sub_div] using h

theorem ratio_norm (s : ℂ) :
    ‖ratio s‖ = Real.exp ((1-s.re)*Real.log 2) := by
  simpa [ratio] using norm_power 2 (1-s)

theorem ratio_norm_lt_one {s : ℂ} (hs : 1 < s.re) : ‖ratio s‖ < 1 := by
  rw [ratio_norm, Real.exp_lt_one_iff]
  exact mul_neg_of_neg_of_pos (by linarith) (Real.log_pos (by norm_num))

theorem parameter_ne_one {s : ℂ} (hs : 1 < s.re) : s ≠ 1 := by
  intro h
  simp [h] at hs

theorem one_sub_ratio_ne_zero {s : ℂ} (hs : 1 < s.re) : 1-ratio s ≠ 0 := by
  intro h
  have hq : ratio s = 1 := (sub_eq_zero.mp h).symm
  have hh := ratio_norm_lt_one hs
  simp [hq] at hh

/-- Each continuum cell is the exact successive geometric difference. -/
theorem background_eq {s : ℂ} (hs : s ≠ 1) (j : ℕ) :
    background j s = (ratio s^j-ratio s^(j+1))/(s-1) := by
  have ha : (0:ℝ) < edge j := by exact_mod_cast edge_pos j
  have hab : (edge j : ℝ) ≤ edge (j+1) := by
    exact_mod_cast (edge_strictMono (Nat.lt_succ_self j)).le
  unfold background
  rw [finite_integral hs ha hab, power_edge, power_edge]
  change (ratio s^(j+1)-ratio s^j)/(1-s) = _
  have hd : (s-1 : ℂ) ≠ 0 := sub_ne_zero.mpr hs
  have he : (1-s : ℂ) ≠ 0 := sub_ne_zero.mpr (Ne.symm hs)
  field_simp [hd, he]; ring

/-- Exact finite continuum inventory, useful for endpoint and sign checks. -/
theorem finite_background_sum {s : ℂ} (hs : s ≠ 1) (J : ℕ) :
    (∑ j ∈ Finset.range J, background j s) =
      (1-ratio s^J)/(s-1) := by
  induction J with
  | zero => simp
  | succ J ih =>
    rw [Finset.sum_range_succ, ih, background_eq hs]
    ring

/-- The actual continuum cells have sum 1/(s-1), not its negative. -/
theorem background_hasSum {s : ℂ} (hs : 1 < s.re) :
    HasSum (fun j => background j s) (1/(s-1)) := by
  have hq := ratio_norm_lt_one hs
  have hq0 := one_sub_ratio_ne_zero hs
  have hs0 : s-1 ≠ 0 := sub_ne_zero.mpr (parameter_ne_one hs)
  have hg := (hasSum_geometric_of_norm_lt_one hq).mul_left ((1-ratio s)/(s-1))
  have heq : (fun j => background j s) =
      (fun j : ℕ => ((1-ratio s)/(s-1)) * ratio s^j) := by
    funext j
    rw [background_eq (parameter_ne_one hs), pow_succ]
    ring
  rw [heq]
  have hvalue : (1-ratio s)/(s-1) * (1-ratio s)⁻¹ = 1/(s-1) := by
    field_simp [hq0, hs0]
  rw [← hvalue]
  exact hg

/-- The excluded primitive formula is not used at s=1: each cell is log 2. -/
theorem background_at_one (j : ℕ) : background j 1 = (Real.log 2 : ℂ) := by
  have ha : (0:ℝ) < edge j := by exact_mod_cast edge_pos j
  have hab : (edge j : ℝ) ≤ edge (j+1) := by
    exact_mod_cast (edge_strictMono (Nat.lt_succ_self j)).le
  have hd (u : ℝ) (hu : u ∈ Icc (edge j : ℝ) (edge (j+1) : ℝ)) :
      HasDerivAt (fun v : ℝ => (Real.log v : ℂ)) (power u (-1)) u := by
    have hu0 : 0 < u := ha.trans_le hu.1
    have hp : power u (-1) = (u : ℂ)⁻¹ := by
      calc
        power u (-1) = power u 0/(u:ℂ) := by
          simpa using (power_div_coordinate hu0 (0:ℂ)).symm
        _ = (u:ℂ)⁻¹ := by rw [power_zero]; simp
    simpa [hp] using (Real.hasDerivAt_log hu0.ne').ofReal_comp
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u hu => hd u (by simpa [uIcc_of_le hab] using hu))
    (power_integrable ha hab (-1))
  have hlog : Real.log (edge (j+1) : ℝ)-Real.log (edge j : ℝ) = Real.log 2 := by
    rw [edge_succ]
    push_cast
    rw [Real.log_mul (by norm_num) ha.ne']
    ring
  change (∫ u in (edge j : ℝ)..(edge (j+1) : ℝ), power u (-1)) = _
  calc
    _ = (Real.log (edge (j+1) : ℝ) : ℂ) - (Real.log (edge j : ℝ) : ℂ) := h
    _ = (Real.log 2 : ℂ) := by rw [← Complex.ofReal_sub, hlog]

end GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries
```
