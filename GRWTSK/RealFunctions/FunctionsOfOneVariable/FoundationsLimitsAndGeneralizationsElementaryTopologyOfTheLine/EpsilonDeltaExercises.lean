import GRWTSK.RealFunctions.FunctionsOfOneVariable.FoundationsLimitsAndGeneralizationsElementaryTopologyOfTheLine.EpsilonDeltaExamples
import Mathlib.Tactic.FunProp

/-!
# The two epsilon-delta lesson exercises

Local attribution: grwtsk contributors.
Grant Sanderson, (epsilon, delta) definitions of limits (2017-05-04),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/epsilon-delta/
All proof bodies: NOT_RUN_USER_DEFERRED.

The actual reciprocal-plus-linear expression has no finite limit at zero;
the proof supplies arbitrarily close ordinary nonzero witnesses. The actual
rational quotient at one has limit1/3 with a quantitative radius and an actual
continuous extension. Cancellation is restricted to x!=1. Lean's total division
value at the hole is kept distinct from that extension.
-/

namespace GRWTSK.RealAnalysis.EpsilonDeltaExercises

open Filter GRWTSK.RealAnalysis.EpsilonDeltaExamples
open scoped Topology

noncomputable def reciprocalPlus (x : ℝ) : ℝ := 1/x+x

/-- Fixed output error1 is defeated in every positive input radius, for any L. -/
theorem reciprocal_escape (L δ : ℝ) (hδ : 0 < δ) :
    ∃ h : ℝ, 0 < |h| ∧ |h| < δ ∧ 1 < |reciprocalPlus h-L| := by
  let D : ℝ := |L|+2
  have hD : 0 < D := by dsimp [D]; positivity
  let h : ℝ := min δ (1/D)/2
  have hm : 0 < min δ (1/D) := lt_min hδ (div_pos (by norm_num) hD)
  have hp : 0 < h := by dsimp [h]; linarith
  have hk : h < min δ (1/D) := by dsimp [h]; linarith
  have hs : h < δ := lt_of_lt_of_le hk (min_le_left _ _)
  have hd : h < 1/D := lt_of_lt_of_le hk (min_le_right _ _)
  have hprod : h*D < 1 := (lt_div_iff₀ hD).mp hd
  have hi : D < 1/h := (lt_div_iff₀ hp).mpr (by nlinarith)
  have hl : L ≤ |L| := le_abs_self L
  have he : 1 < reciprocalPlus h-L := by dsimp [reciprocalPlus, D] at *; linarith
  refine ⟨h, abs_pos.mpr (ne_of_gt hp), ?_, ?_⟩
  · simpa only [abs_of_pos hp] using hs
  · exact lt_of_lt_of_le he (le_abs_self _)

theorem reciprocal_no_control (L : ℝ) : ¬ ZeroLimitControl reciprocalPlus L := by
  intro hc
  obtain ⟨δ, hδ, he⟩ := hc 1 (by norm_num)
  obtain ⟨h, hp, hs, hb⟩ := reciprocal_escape L δ hδ
  have hn : h ≠ 0 := abs_pos.mp hp
  have hh := he h hn hs
  linarith

theorem reciprocal_no_finite_limit (L : ℝ) :
    ¬ Tendsto reciprocalPlus (𝓝[≠] 0) (𝓝 L) := by
  intro hl
  exact reciprocal_no_control L ((zero_limit_iff_control _ _).1 hl)

noncomputable def removable (x : ℝ) : ℝ := (x-1)/(x^3-1)
noncomputable def extension (x : ℝ) : ℝ := 1/(x^2+x+1)

theorem denominator_positive (x : ℝ) : 0 < x^2+x+1 := by
  nlinarith [sq_nonneg (x+(1/2 : ℝ))]

theorem removable_eq_extension (x : ℝ) (hx : x ≠ 1) :
    removable x = extension x := by
  unfold removable extension
  have hf : x^3-1 = (x-1)*(x^2+x+1) := by ring
  rw [hf]
  field_simp [sub_ne_zero.mpr hx, ne_of_gt (denominator_positive x)] <;> ring

/-- Exact quantitative error for the actual extension in ordinary shifted coordinates. -/
theorem extension_shift_error (h : ℝ) (hs : |h| < 1/2) :
    |extension (1+h)-(1/3 : ℝ)| ≤ |h| := by
  have hlo := (abs_lt.mp hs).1
  have hd : 3/2 < 3+3*h+h^2 := by nlinarith [sq_nonneg h]
  have hp : 0 < 3+3*h+h^2 := by linarith
  have hr : (1+h)^2+(1+h)+1 = 3+3*h+h^2 := by ring
  have he : extension (1+h)-(1/3 : ℝ) =
      -(h*(3+h))/(3*(3+3*h+h^2)) := by
    unfold extension
    rw [hr]
    field_simp [ne_of_gt hp] <;> ring
  rw [he, abs_div, abs_neg, abs_mul,
    abs_of_pos (mul_pos (by norm_num : (0 : ℝ) < 3) hp)]
  apply (div_le_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 3) hp)).mpr
  have ht : |3+h| ≤ 3+|h| := by simpa using abs_add (3 : ℝ) h
  have hu : |3+h| ≤ 7/2 := by linarith
  have hv : (7/2 : ℝ) ≤ 3*(3+3*h+h^2) := by linarith
  exact le_trans (mul_le_mul_of_nonneg_left hu (abs_nonneg h))
    (mul_le_mul_of_nonneg_left hv (abs_nonneg h))

theorem removable_shift_error (h : ℝ) (hh : h ≠ 0) (hs : |h| < 1/2) :
    |removable (1+h)-(1/3 : ℝ)| ≤ |h| := by
  rw [removable_eq_extension _ (by intro he; apply hh; linarith)]
  exact extension_shift_error h hs

/-- Actual x->1 punctured limit; epsilon chooses delta=min(1/2,epsilon). -/
theorem removable_limit : Tendsto removable (𝓝[≠] 1) (𝓝 (1/3 : ℝ)) := by
  apply Metric.tendsto_nhdsWithin_nhds.mpr
  intro ε hε
  refine ⟨min (1/2) ε, lt_min (by norm_num) hε, ?_⟩
  intro x hx hs
  have hn : x ≠ 1 := hx
  have ha : |x-1| < min (1/2) ε := by simpa [Real.dist_eq] using hs
  have hb := removable_shift_error (x-1) (sub_ne_zero.mpr hn)
    (lt_of_lt_of_le ha (min_le_left _ _))
  have he : 1+(x-1) = x := by ring
  rw [he] at hb
  rw [Real.dist_eq]
  exact lt_of_le_of_lt hb (lt_of_lt_of_le ha (min_le_right _ _))

theorem extension_continuous_at_one : ContinuousAt extension 1 := by
  have hd : ContinuousAt (fun x : ℝ => x^2+x+1) 1 := by fun_prop
  exact continuousAt_const.div hd (ne_of_gt (denominator_positive 1))

theorem extension_value_at_one : extension 1 = (1/3 : ℝ) := by norm_num [extension]

theorem total_quotient_value_at_one : removable 1 = 0 := by norm_num [removable]

theorem quotient_value_differs_from_extension : removable 1 ≠ extension 1 := by
  rw [total_quotient_value_at_one, extension_value_at_one]
  norm_num

end GRWTSK.RealAnalysis.EpsilonDeltaExercises
