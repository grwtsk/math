/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed

set_option autoImplicit false

/-!
# Height two from source-faithful cellwise cancellation

The exact centered Mellin source is unchanged. The new integer-cell primitive
bound gives |C(s)| <= |s+1|/12 on Re(s)>=1/2. On the CLOSED rectangle
1/2<=Re(s)<=1, |Im(s)|<=2 we have |s|*|s-1|<=5. Hence the source differs
from (s+1)/2 by at most 5|s+1|/12 and |H(s)|>=|s+1|/12>=1/8.

Left-side exclusion transports the canonical ZERO predicate only. In particular,
no reflected norm equality, zero enumeration, multiplicity result, higher-window
extension, Weil bridge or RH conclusion is imported from this bounded estimate.
The natural-height endpoints WindowRH 1 and WindowRH 2 now have source scripts
with no extra zero-free-region or patch-cover premise. Kernel replay is NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuadraticPrimitive

open Complex Set

noncomputable section

/-- Euclidean product bound on the complete closed rectangle, not sampled values. -/
lemma twoHeight_factor_product {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ)) :
    ‖s‖ * ‖s - 1‖ ≤ (5 : ℝ) := by
  have hx0 : 0 ≤ s.re := by linarith
  have hx2 : s.re ^ 2 ≤ 1 := by nlinarith [mul_le_mul hx1 hx1 hx0 zero_le_one]
  have hxa : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hx1)]; linarith
  have hxm2 : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    have h := mul_le_mul hxa hxa (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (s.re - 1)]
  have hy2 : s.im ^ 2 ≤ (4 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)
    nlinarith [sq_abs s.im]
  have hs2 : ‖s‖ ^ 2 ≤ (5 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  have hm2 : ‖s - 1‖ ^ 2 ≤ (17 / 4 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im, sub_zero]
    nlinarith
  have hprod := mul_le_mul hs2 hm2 (sq_nonneg ‖s - 1‖) (by norm_num : (0 : ℝ) ≤ 5)
  have heq : (‖s‖ * ‖s - 1‖) ^ 2 = ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 := by ring
  have hnonneg : 0 ≤ ‖s‖ * ‖s - 1‖ := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  nlinarith

/-- A relative, source-derived error. The common |s+1| factor is NOT discarded. -/
theorem twoHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ)) :
    ‖poleNormalizedZeta s - (s + 1) / 2‖ ≤ (5 / 12 : ℝ) * ‖s + 1‖ := by
  have hs : 0 < s.re := by linarith
  have hC : ‖CenteredMellin.value s‖ ≤ ‖s + 1‖ / 12 := by
    simpa using centered_value_norm_le (σ := (1 / 2 : ℝ)) (by norm_num) hx
  have heq : poleNormalizedZeta s - (s + 1) / 2 =
      -(s * (s - 1) * CenteredMellin.value s) := by
    rw [CenteredMellin.source_identity hs]; ring
  rw [heq, norm_neg, norm_mul, norm_mul]
  calc
    _ ≤ (5 : ℝ) * (‖s + 1‖ / 12) :=
      mul_le_mul (twoHeight_factor_product hx hx1 hy) hC (norm_nonneg _) (by norm_num)
    _ = _ := by ring

/-- Pure reference/error transport, reused for the homotopy as well as the source. -/
lemma norm_lower_from_relative_enclosure {s v : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re)
    (herror : ‖v - (s + 1) / 2‖ ≤ (5 / 12 : ℝ) * ‖s + 1‖) :
    (1 / 8 : ℝ) ≤ ‖v‖ := by
  have hreference : (3 / 2 : ℝ) ≤ ‖s + 1‖ := by
    have h := Complex.re_le_norm (s + 1)
    simp only [Complex.add_re, Complex.one_re] at h
    linarith
  have htriangle : ‖(s + 1) / 2‖ ≤ ‖v‖ + ‖v - (s + 1) / 2‖ := by
    calc
      _ = ‖v - (v - (s + 1) / 2)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hnorm : ‖(s + 1) / 2‖ = ‖s + 1‖ / 2 := by norm_num [norm_div]
  rw [hnorm] at htriangle
  linarith

theorem poleNormalized_norm_lower_twoHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ)) :
    (1 / 8 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_relative_enclosure hx (twoHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_twoHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_twoHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

/-- Strict height exclusion; all edges of the closed height-two band were included. -/
theorem nontrivialZetaZero_height_gt_two {z : ℂ} (hz : NontrivialZetaZero z) :
    (2 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (2 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_twoHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (2 : ℝ) := by
      simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_twoHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_twoHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (2 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_two hzero)) hz

/-- Canonical natural window, without an extra base or interior-cover premise. -/
theorem windowRH_two : WindowRH 2 := by
  intro z hz hzero
  have hheight : |ZetaCommutatorRoot.root.heightAt z| ≤ (2 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_two hzero)) hheight)

theorem windowRH_one : WindowRH 1 := windowRH_mono windowRH_two (by decide)

theorem shellRH_zero : ShellRH 0 := (window_succ_iff 0).mp windowRH_one |>.2

theorem shellRH_one : ShellRH 1 := (window_succ_iff 1).mp windowRH_two |>.2

/-- Discharge the former centered first-window remainder through its exact theorem. -/
theorem noTargetZero_previousRemainder : NoTargetZero CenteredMellin.firstWindowRemainder :=
  CenteredMellin.window_one_iff_centered_remainder.mp windowRH_one

/-- The same nonzero deformation now extends through the height-two right rectangle. -/
theorem deformation_norm_lower_twoHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1 / 8 : ℝ) ≤ ‖CenteredMellin.deformation t s‖ := by
  apply norm_lower_from_relative_enclosure hx
  have heq : CenteredMellin.deformation t s - (s + 1) / 2 =
      (t : ℂ) * (poleNormalizedZeta s - (s + 1) / 2) := by
    rw [CenteredMellin.source_identity (by linarith : 0 < s.re)]
    unfold CenteredMellin.deformation
    ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (twoHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_twoHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (CenteredMellin.deformation t z)⁻¹) s := by
  apply (CenteredMellin.deformation_differentiableAt t (by linarith : 0 < s.re)).inv
  intro hz
  have h := deformation_norm_lower_twoHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- A quantified higher-shell supplier is still required for the global endpoint. -/
theorem all_windows_of_above_two
    (hstep : ∀ N : ℕ, 2 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_two (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 2
    · exact windowRH_mono windowRH_two hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_two
    (hstep : ∀ N : ℕ, 2 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_two hstep)

/-- Height three is outside the proved seed; this is an AMBIENT point, not a zero. -/
theorem twoHeight_not_global : ∃ z : ℂ, (2 : ℝ) < |z.im| ∧ z.re ≠ 1 / 2 := by
  refine ⟨⟨3 / 4, 3⟩, ?_, ?_⟩ <;> norm_num

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuadraticPrimitive
