/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

set_option autoImplicit false

/-!
# Uniform approximation from the existing sourced Mellin bounds

This leaf consumes CriticalStripMellinBounds rather than defining a second tail,
integrand, finite integral or normalized source. All cutoffs are at least 1; all
analytic parameters have positive real part. Uniform convergence on a bounded
right-critical rectangle is not nonvanishing, and its index depends on height.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinCertification

open Complex MeasureTheory Filter Set
open scoped Topology

noncomputable section

/-- Its use below always includes a>0 and T>=1. -/
def mellinTailMajorant (a T : ℝ) : ℝ := T ^ (-a) / a

lemma mellinTailMajorant_nonneg {a T : ℝ} (ha : 0 < a) (hT : 1 ≤ T) :
    0 ≤ mellinTailMajorant a T :=
  div_nonneg (Real.rpow_nonneg (zero_le_one.trans hT) _) ha.le

@[simp] theorem truncation_at_one (s : ℂ) : fractionalMellinTruncation 1 s = 0 := by
  simp [fractionalMellinTruncation]

@[simp] theorem pole_truncation_at_one (s : ℂ) : truncatedPoleModel 1 s = s := by
  simp [truncatedPoleModel]

/-- A sharper rectangle bound uses separate norm controls for s and s-1. -/
theorem truncation_error_le_uniform {s : ℂ} {a T S P : ℝ}
    (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T)
    (hS : 0 ≤ S) (hsS : ‖s‖ ≤ S) (hsP : ‖s - 1‖ ≤ P) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      (S * P) * mellinTailMajorant a T := by
  apply (poleNormalized_truncation_error hT ha has).trans
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul hsS hsP (norm_nonneg _) hS) (mellinTailMajorant_nonneg ha hT)

/-- Explicit scalar majorants decay along the single cutoff sequence T_n=n+1. -/
theorem mellinTailMajorant_tendsto_zero {a : ℝ} (ha : 0 < a) :
    Tendsto (fun n : ℕ => mellinTailMajorant a ((n : ℝ) + 1)) atTop (𝓝 0) := by
  have hcut : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  simpa only [mellinTailMajorant, zero_div] using
    ((tendsto_rpow_neg_atTop ha).comp hcut).div_const a

/-- The complete source-error majorant decays at every fixed complex parameter. -/
theorem poleMellinError_tendsto_zero {s : ℂ} (hs : 0 < s.re) :
    Tendsto (fun n : ℕ => (‖s‖ * ‖s - 1‖) *
      mellinTailMajorant s.re ((n : ℝ) + 1)) atTop (𝓝 0) := by
  simpa only [mul_zero] using
    (mellinTailMajorant_tendsto_zero hs).const_mul (‖s‖ * ‖s - 1‖)

/-- One uniform bound on the full closed right half of a bounded critical rectangle.
This includes points on Re(s)=1/2, possibly actual zeros. It proves approximation,
not zero exclusion. The bound is independent of the near-line margin index. -/
theorem truncatedPoleModel_error_on_right_rectangle
    {s : ℂ} {T Y : ℝ} (hY : 0 ≤ Y) (hT : 1 ≤ T)
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1) (hheight : |s.im| ≤ Y) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      ((Y + 1) * (Y + 1)) * mellinTailMajorant (1 / 2) T := by
  have hre : 0 ≤ s.re := by linarith
  have hs : ‖s‖ ≤ Y + 1 := by
    calc
      ‖s‖ ≤ |s.re| + |s.im| := Complex.norm_le_abs_re_add_abs_im s
      _ ≤ 1 + Y := by rw [abs_of_nonneg hre]; exact add_le_add hright hheight
      _ = Y + 1 := by ring
  have hp : ‖s - 1‖ ≤ Y + 1 := by
    calc
      ‖s - 1‖ ≤ |(s - 1).re| + |(s - 1).im| :=
        Complex.norm_le_abs_re_add_abs_im (s - 1)
      _ = (1 - s.re) + |s.im| := by
        simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im,
          sub_zero, abs_of_nonpos (sub_nonpos.mpr hright)]
        ring
      _ ≤ 1 + Y := add_le_add (by linarith) hheight
      _ = Y + 1 := by ring
  exact truncation_error_le_uniform (by norm_num) hleft hT
    (by linarith) hs hp

/-- The actual complex residual tends to zero; convergence of a scalar majorant is
not left as an unconnected claim. This does not assert that the limit is nonzero. -/
theorem truncatedPoleModel_residual_tendsto_zero {s : ℂ} (hs : 0 < s.re) :
    Tendsto (fun n : ℕ => poleNormalizedZeta s -
      truncatedPoleModel ((n : ℝ) + 1) s) atTop (𝓝 0) := by
  exact squeeze_zero_norm
    (fun n => poleNormalized_truncation_error
      (by have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n; linarith) hs (le_refl s.re))
    (poleMellinError_tendsto_zero hs)

/-- Uniform approximation on a fixed bounded-height closed right-critical rectangle.
The index is independent of the point s; it may depend on Y and epsilon. -/
theorem truncatedPoleModel_uniform_on_right_rectangle {Y : ℝ} (hY : 0 ≤ Y) :
    ∀ ε : ℝ, 0 < ε → ∃ n₀ : ℕ, ∀ n : ℕ, n₀ ≤ n → ∀ s : ℂ,
      (1 / 2 : ℝ) ≤ s.re → s.re ≤ 1 → |s.im| ≤ Y →
      ‖poleNormalizedZeta s - truncatedPoleModel ((n : ℝ) + 1) s‖ < ε := by
  intro ε hε
  have hlim : Tendsto (fun n : ℕ => ((Y + 1) * (Y + 1)) *
      mellinTailMajorant (1 / 2) ((n : ℝ) + 1)) atTop (𝓝 0) := by
    simpa only [mul_zero] using
      (mellinTailMajorant_tendsto_zero (by norm_num : (0 : ℝ) < 1 / 2)).const_mul
        ((Y + 1) * (Y + 1))
  obtain ⟨n₀, hn₀⟩ := eventually_atTop.mp
    (hlim.eventually (eventually_lt_nhds hε))
  refine ⟨n₀, fun n hn s hleft hright hheight => ?_⟩
  exact (truncatedPoleModel_error_on_right_rectangle hY
    (by have hn' : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n; linarith)
    hleft hright hheight).trans_lt (hn₀ n hn)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinCertification
