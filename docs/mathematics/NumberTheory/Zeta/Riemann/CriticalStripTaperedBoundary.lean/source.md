# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTaperedBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca8be3674bb665ffd299f7323571742654b42fa6` · SHA-256 `32aa18e4f3fdf8b36f7f1af0772a36f078e7e8c797d8900c2ea52713d01814f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripParabolicConfinement

set_option autoImplicit false

/-!
# Effective boundary bands above the one-third seed

The current Mellin norm bound provides |H(s)| >= a-r whenever
0<a<=Re(s), |s-1|<=r<a. This constructs an explicit family of closed
right-boundary bands at heights approaching 1 from below. Both width
and lower bound shrink; no full-height window follows from that limit.

At height 1/2, Re(s)>=3/4 gives |H(s)|>=3/16. At height 3/4,
Re(s)>=7/8 gives |H(s)|>=3/32. Left-boundary exclusion uses the
canonical zero mirror only. No equality of reflected H-values is used.
The remaining first-window target and its non-strict parabolic frontier
are retained in an exact equivalence, not silently certified nonzero.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinParabolic

open Complex Set

noncomputable section

def rightBand (a T : ℝ) : Set ℂ :=
  {s | a ≤ s.re ∧ s.re ≤ 1 ∧ |s.im| ≤ T}

/-- Whole-band Euclidean bound, with all exterior edges retained. -/
theorem factor_norm_le_on_band {a T r : ℝ} (ha1 : a ≤ 1) (hT : 0 ≤ T)
    (hr : 0 ≤ r) (hbudget : (1 - a) ^ 2 + T ^ 2 ≤ r ^ 2)
    {s : ℂ} (hs : s ∈ rightBand a T) : ‖s - 1‖ ≤ r := by
  have hre : |s.re - 1| ≤ 1 - a := by
    rw [abs_of_nonpos (sub_nonpos.mpr hs.2.1)]
    linarith [hs.1]
  have hrprod := mul_le_mul hre hre (abs_nonneg (s.re - 1))
    (sub_nonneg.mpr ha1)
  have hiprod := mul_le_mul hs.2.2 hs.2.2 (abs_nonneg s.im) hT
  have hre2 : (s.re - 1) ^ 2 ≤ (1 - a) ^ 2 := by
    nlinarith [sq_abs (s.re - 1)]
  have him2 : s.im ^ 2 ≤ T ^ 2 := by nlinarith [sq_abs s.im]
  apply (sq_le_sq₀ (norm_nonneg _) hr).mp
  rw [factor_norm_sq]
  exact (add_le_add hre2 him2).trans hbudget

/-- The analytic inequality is derived directly, without a sample array or grid. -/
theorem norm_lower_on_band {a T r : ℝ} (ha : 0 < a) (ha1 : a ≤ 1)
    (hT : 0 ≤ T) (hr : 0 ≤ r) (hbudget : (1 - a) ^ 2 + T ^ 2 ≤ r ^ 2)
    (hmargin : r < a) {s : ℂ} (hs : s ∈ rightBand a T) :
    a - r ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_of_factor ha hs.1
    (factor_norm_le_on_band ha1 hT hr hbudget hs) hmargin

/-- A single explicit family. As u tends to zero, the target height tends to 1,
but the band width u and lower bound 3u/4 BOTH tend to zero. -/
theorem tapered_norm_lower {u : ℝ} (hu : 0 < u) (hu4 : u ≤ 1 / 4)
    {s : ℂ} (hs : s ∈ rightBand (1 - u) (1 - 2 * u)) :
    3 * u / 4 ≤ ‖poleNormalizedZeta s‖ := by
  have hquad : u ^ 2 ≤ u / 4 := by
    nlinarith [mul_nonneg hu.le (sub_nonneg.mpr hu4)]
  have hbudget : (1 - (1 - u)) ^ 2 + (1 - 2 * u) ^ 2 ≤
      (1 - 7 * u / 4) ^ 2 := by nlinarith
  have h := norm_lower_on_band (a := 1 - u) (T := 1 - 2 * u)
    (r := 1 - 7 * u / 4) (by linarith) (by linarith)
    (by linarith) (by linarith) hbudget (by linarith) hs
  have heq : (1 - u) - (1 - 7 * u / 4) = 3 * u / 4 := by ring
  rwa [heq] at h

/-- Height formulation of the same family, still strictly below natural height 1. -/
theorem tapered_norm_lower_by_height {T : ℝ} (hT : (1 / 2 : ℝ) ≤ T)
    (hT1 : T < 1) {s : ℂ} (hs : s ∈ rightBand ((1 + T) / 2) T) :
    3 * (1 - T) / 8 ≤ ‖poleNormalizedZeta s‖ := by
  have hu : 0 < (1 - T) / 2 := by linarith
  have hu4 : (1 - T) / 2 ≤ (1 / 4 : ℝ) := by linarith
  have hs' : s ∈ rightBand (1 - (1 - T) / 2) (1 - 2 * ((1 - T) / 2)) := by
    change _ ≤ s.re ∧ s.re ≤ 1 ∧ |s.im| ≤ _
    refine ⟨by linarith [hs.1], hs.2.1, ?_⟩
    have hEq : 1 - 2 * ((1 - T) / 2) = T := by ring
    rw [hEq]
    exact hs.2.2
  have h := tapered_norm_lower hu hu4 hs'
  convert h using 1 <;> ring

/-- An explicit closed rectangle above the old 1/3 starting height. -/
theorem halfHeight_norm_lower {s : ℂ} (hs : s ∈ rightBand (3 / 4) (1 / 2)) :
    (3 / 16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := tapered_norm_lower (u := (1 / 4 : ℝ)) (by norm_num) le_rfl
    (s := s) (by norm_num [rightBand] at hs ⊢; exact hs)
  norm_num at h
  exact h

/-- A second explicit closed rectangle at height 3/4. -/
theorem threeQuarterHeight_norm_lower {s : ℂ}
    (hs : s ∈ rightBand (7 / 8) (3 / 4)) :
    (3 / 32 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := tapered_norm_lower (u := (1 / 8 : ℝ)) (by norm_num) (by norm_num)
    (s := s) (by norm_num [rightBand] at hs ⊢; exact hs)
  norm_num at h
  exact h

/-- A target zero at the specified height must avoid BOTH boundary bands. The
left statement uses a zero-location mirror, not transport of the norm lower bound. -/
theorem target_avoids_tapered_bands {u : ℝ} (hu : 0 < u) (hu4 : u ≤ 1 / 4)
    {z : ℂ} (hz : NontrivialZetaZero z) (hheight : |z.im| ≤ 1 - 2 * u) :
    u < z.re ∧ z.re < 1 - u := by
  have hright : z.re < 1 - u := by
    by_contra hnot
    have h := tapered_norm_lower hu hu4
      (show z ∈ rightBand (1 - u) (1 - 2 * u) from
        ⟨le_of_not_gt hnot, hz.mem_critical_strip.2.le, hheight⟩)
    rw [poleNormalizedZeta_zero_of_target hz, norm_zero] at h
    linarith
  have hleft : u < z.re := by
    by_contra hnot
    have hmirror := hz.critical_reflection
    have hmre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
    have hmheight : |(criticalReflection z).im| ≤ 1 - 2 * u := by
      simpa [criticalReflection] using hheight
    have h := tapered_norm_lower hu hu4
      (show criticalReflection z ∈ rightBand (1 - u) (1 - 2 * u) from
        ⟨by rw [hmre]; linarith [le_of_not_gt hnot],
          hmirror.mem_critical_strip.2.le, hmheight⟩)
    rw [poleNormalizedZeta_zero_of_target hmirror, norm_zero] at h
    linarith
  exact ⟨hleft, hright⟩

/-- The exact unfinished part of the first natural-height window. The equality
case of the parabola and the top height 1 remain in the target. -/
def firstRemainder : Set ℂ :=
  {z | (1 / 3 : ℝ) < z.im ∧ z.im ≤ 1 ∧ (1 / 2 : ℝ) < z.re ∧
    z.re < 1 ∧ 2 * z.re - 1 ≤ z.im ^ 2}

/-- This is a reduction of the target, NOT a proof of the residual exclusion. -/
theorem window_one_iff_firstRemainder : WindowRH 1 ↔ NoTargetZero firstRemainder := by
  constructor
  · intro h z hz hzero
    have hpos : 0 < z.im := by linarith [hz.1]
    have hwindow : z ∈ heightWindow 1 := by
      simpa only [heightWindow, Set.mem_setOf_eq, ZetaCommutatorRoot.heightAt_eq_im,
        Nat.cast_one, abs_of_pos hpos] using hz.2.1
    exact (ne_of_gt hz.2.2.1) (h z hwindow hzero)
  · intro h
    apply (window_succ_iff 0).mpr
    refine ⟨windowRH_zero, (shellRH_iff_upperRight_exclusion 0).mpr ?_⟩
    intro z hz hzero
    have hupper : (0 : ℝ) < z.im ∧ z.im ≤ 1 := by
      simpa [upperHeightShell, ZetaCommutatorRoot.heightAt_eq_im] using hz.1
    have hseed : (1 / 3 : ℝ) < z.im := by
      simpa only [ZetaCommutatorRoot.heightAt_eq_im, abs_of_pos hupper.1] using
        nontrivialZetaZero_height_gt_one_third hzero
    exact h z ⟨hseed, hupper.2, hz.2, hzero.mem_critical_strip.2,
      target_right_parabolic hzero⟩ hzero

/-- A downstream certificate must cover the ACTUAL remaining carrier for H. -/
theorem window_one_of_remaining_cover
    (cover : FiniteVariationCover poleNormalizedZeta firstRemainder) : WindowRH 1 := by
  apply window_one_iff_firstRemainder.mpr
  intro z hz hzero
  exact cover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

/-- The unproved remainder is nonempty even on the parabolic boundary. This point
is an ambient witness only; it is neither asserted nor computed to be a zeta zero. -/
theorem firstRemainder_boundary_nonempty :
    ∃ z ∈ firstRemainder, 2 * z.re - 1 = z.im ^ 2 := by
  refine ⟨⟨5 / 8, 1 / 2⟩, ?_, ?_⟩ <;> norm_num [firstRemainder]

/-- At T=1 the displayed lower-bound formula is zero, not a positive margin. -/
theorem tapered_endpoint_margin_zero : (3 * (1 - 1) / 8 : ℝ) = 0 := by norm_num

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinParabolic
```
