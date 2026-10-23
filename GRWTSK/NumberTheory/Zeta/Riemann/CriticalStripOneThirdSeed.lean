/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEffectiveSeed
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch

set_option autoImplicit false

/-!
# An explicit one-third-height seed from the same Mellin source

On 1/2<=Re(s)<=1 and |Im(s)|<=1/3 the improved derivative majorant is 32/7.
The real-projection Mellin value has nonnegative real part and zero imaginary part.
Euclidean geometry gives |s-1|<=5/8, so the transported residual is at most 20/21.
Thus Re(1-(s-1)M(s))>=1/21 and |H(s)|>=1/42 on this CLOSED rectangle.

The functional equation transports the target ZERO predicate to the left half;
no equality of H-values or H-norms at reflected points is assumed. This supplies
an explicit global target-free starting height, not WindowRH 1 or a later shell.
The compact finite cover at the end is classical, not a rational-disk enumeration.
All declarations remain source scripts until exact elaboration and axiom replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex Set

noncomputable section

/-- The factor comes from the exact normalized-zeta Mellin identity. -/
def fractionalMellinUnit (s : ℂ) : ℂ := 1 - (s - 1) * fractionalMellin s

theorem poleNormalized_eq_mellinUnit {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = s * fractionalMellinUnit s := by
  rw [poleNormalized_eq_fractional hs]
  unfold fractionalPoleModel fractionalMellinUnit
  ring

/-- A Euclidean, not L1, estimate. Its rational slack is explicit. -/
lemma oneThirdSeed_factor_norm {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) : ‖s - 1‖ ≤ (5 / 8 : ℝ) := by
  have hre : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hright)]
    linarith
  have hrprod := mul_le_mul hre hre (abs_nonneg (s.re - 1))
    (by norm_num : (0 : ℝ) ≤ 1 / 2)
  have hiprod := mul_le_mul hheight hheight (abs_nonneg s.im)
    (by norm_num : (0 : ℝ) ≤ 1 / 3)
  have hre2 : (s.re - 1) ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    nlinarith [sq_abs (s.re - 1)]
  have him2 : s.im ^ 2 ≤ (1 / 3 : ℝ) ^ 2 := by
    nlinarith [sq_abs s.im]
  have hsq : ‖s - 1‖ ^ 2 ≤ (13 / 36 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im,
      Complex.one_im, sub_zero]
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 8)).mp
  exact hsq.trans (by norm_num)

/-- Real positivity is used ONLY at s.re; its complex displacement is charged.
No target-zero assumption is needed for this quantitative right-half estimate. -/
theorem fractionalMellinUnit_re_lower_oneThird {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) :
    (1 / 21 : ℝ) ≤ (fractionalMellinUnit s).re := by
  have hspos : 0 < s.re := by linarith
  let a : ℂ := fractionalMellin (s.re : ℂ)
  have haRe : 0 ≤ a.re := fractionalMellin_re_nonneg hspos
  have haIm : a.im = 0 := fractionalMellin_ofReal_im_zero hspos
  have hreal : ((s - 1) * a).re ≤ 0 := by
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, haIm,
      mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hright) haRe
  have hvar : ‖fractionalMellin s - a‖ ≤ (32 / 21 : ℝ) := by
    have h := fractionalMellin_vertical_variation_subtracted hleft
    exact h.trans (by nlinarith)
  have hres : ‖(s - 1) * (fractionalMellin s - a)‖ ≤ (20 / 21 : ℝ) := by
    rw [norm_mul]
    calc
      _ ≤ (5 / 8 : ℝ) * (32 / 21) :=
        mul_le_mul (oneThirdSeed_factor_norm hleft hright hheight) hvar
          (norm_nonneg _) (by norm_num)
      _ = 20 / 21 := by norm_num
  have hresRe := (Complex.re_le_norm ((s - 1) * (fractionalMellin s - a))).trans hres
  have heq : fractionalMellinUnit s =
      1 - (s - 1) * a - (s - 1) * (fractionalMellin s - a) := by
    unfold fractionalMellinUnit
    ring
  rw [heq, Complex.sub_re, Complex.sub_re, Complex.one_re]
  linarith

/-- Quantitative lower bound for the actual normalized source on the entire right
half of the starting strip, including all four edges and the removable pole value. -/
theorem poleNormalized_norm_lower_oneThird {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) :
    (1 / 42 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have hspos : 0 < s.re := by linarith
  have hunit : (1 / 21 : ℝ) ≤ ‖fractionalMellinUnit s‖ :=
    (fractionalMellinUnit_re_lower_oneThird hleft hright hheight).trans
      (Complex.re_le_norm _)
  have hsNorm : (1 / 2 : ℝ) ≤ ‖s‖ := hleft.trans (Complex.re_le_norm s)
  rw [poleNormalized_eq_mellinUnit hspos, norm_mul]
  calc
    (1 / 42 : ℝ) = (1 / 2) * (1 / 21) := by norm_num
    _ ≤ ‖s‖ * ‖fractionalMellinUnit s‖ :=
      mul_le_mul hsNorm hunit (by norm_num) (norm_nonneg _)

theorem poleNormalized_nonzero_oneThird_right {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_oneThird hleft hright hheight
  rw [hz, norm_zero] at h
  norm_num at h

/-- The mirror acts on actual zero locations. The quantitative H bound above is
NOT asserted on the left half by equating reflected function values. -/
theorem nontrivialZetaZero_height_gt_one_third {z : ℂ}
    (hz : NontrivialZetaZero z) :
    (1 / 3 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hheight : |z.im| ≤ (1 / 3 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  have hstrip := hz.mem_critical_strip
  by_cases hright : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_oneThird_right hright hstrip.2.le hheight
      (poleNormalizedZeta_zero_of_target hz)
  · have hmir := hz.critical_reflection
    have hmre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
    have hmheight : |(criticalReflection z).im| ≤ (1 / 3 : ℝ) := by
      simpa [criticalReflection] using hheight
    have hmleft : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      rw [hmre]
      linarith [lt_of_not_ge hright]
    exact poleNormalized_nonzero_oneThird_right hmleft hmir.mem_critical_strip.2.le
      hmheight (poleNormalizedZeta_zero_of_target hmir)

theorem noTargetZero_oneThird_seed :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (1 / 3 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_one_third hzero)) hz

/-- An actual analytic family target, not merely one isolated sample disk. -/
def oneThirdRightSeed : Set ℂ :=
  {s | (1 / 2 : ℝ) ≤ s.re ∧ s.re ≤ 1 ∧ |s.im| ≤ (1 / 3 : ℝ)}

lemma oneThirdRightSeed_isCompact : IsCompact oneThirdRightSeed := by
  have hclosed : IsClosed oneThirdRightSeed := by
    change IsClosed ({s : ℂ | (1 / 2 : ℝ) ≤ s.re} ∩
      ({s : ℂ | s.re ≤ 1} ∩ {s : ℂ | |s.im| ≤ (1 / 3 : ℝ)}))
    exact (isClosed_le continuous_const Complex.continuous_re).inter
      ((isClosed_le Complex.continuous_re continuous_const).inter
        (isClosed_le Complex.continuous_im.abs continuous_const))
  apply (isCompact_closedBall (0 : ℂ) (2 : ℝ)).of_isClosed_subset hclosed
  intro z hz
  change (1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧ |z.im| ≤ (1 / 3 : ℝ) at hz
  rw [Metric.mem_closedBall, dist_zero_right]
  have h := Complex.norm_le_abs_re_add_abs_im z
  rw [abs_of_nonneg (by linarith [hz.1] : 0 ≤ z.re)] at h
  linarith [hz.2.1, hz.2.2]

/-- Compact patch extraction is used only AFTER the actual analytic nonvanishing
has been proved. This is classical finite existence, not generated rational data
and not an already accepted input to the rational bounded-search algorithm. -/
theorem exists_oneThirdRightSeed_cover :
    Nonempty (FiniteVariationCover poleNormalizedZeta oneThirdRightSeed) := by
  apply exists_finiteVariationCover_of_compact oneThirdRightSeed_isCompact
  · intro z hz
    exact (differentiable_poleNormalizedZeta z).continuousAt
  · intro z hz
    exact poleNormalized_nonzero_oneThird_right hz.1 hz.2.1 hz.2.2

/-- This fixed height is strictly stronger than the previous seed, but still below
natural height one. The explicit point is ambient, NOT a proposed zeta zero. -/
theorem oneThird_seed_scope : (1 / 16 : ℝ) < 1 / 3 ∧ (1 / 3 : ℝ) < 1 := by
  norm_num

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
