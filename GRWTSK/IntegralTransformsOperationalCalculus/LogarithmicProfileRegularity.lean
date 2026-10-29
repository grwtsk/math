/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic

/-!
# Regularity of a logarithmic profile with a silent lower tail

The real logarithm and square root are totalized. A genuine
lower zero tail of the profile supplies a complete zero neighborhood of zero,
so regularity on the positive half-line extends across zero. The differentiability
order is precisely the supplied order of the profile; no smoothness of a
particular compact polynomial source is assumed.
-/

open scoped ContDiff Topology

namespace GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity

open Filter Set

noncomputable section

/-- The logarithmic pullback vanishes on a full lower half-line including zero. -/
theorem logarithmic_profile_zero_left {F : ℝ → ℝ} {lo t x : ℝ}
    (silent : ∀ u : ℝ, u < lo → F u = 0) (hx : x < Real.exp (lo - t)) :
    Real.log x / Real.sqrt x * F (t + Real.log x) = 0 := by
  by_cases positive : 0 < x
  · have below : Real.log x < lo - t := (Real.log_lt_iff_lt_exp positive).mpr hx
    rw [silent (t + Real.log x) (by linarith), mul_zero]
  · rw [Real.sqrt_eq_zero_of_nonpos (not_lt.mp positive), div_zero, zero_mul]

/-- Every supplied profile derivative order extends globally through the zero neighborhood. -/
theorem logarithmic_profile_contDiff {F : ℝ → ℝ} {n : ℕ∞ω} {lo : ℝ}
    (hF : ContDiff ℝ n F) (silent : ∀ u : ℝ, u < lo → F u = 0) (t : ℝ) :
    ContDiff ℝ n (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) := by
  apply contDiff_iff_contDiffAt.mpr
  intro x
  by_cases positive : 0 < x
  · have logAt : ContDiffAt ℝ n Real.log x := Real.contDiffAt_log.mpr positive.ne'
    have sqrtAt : ContDiffAt ℝ n Real.sqrt x := Real.contDiffAt_sqrt positive.ne'
    have shift : ContDiffAt ℝ n (fun y : ℝ ↦ t + Real.log y) x :=
      contDiffAt_const.add logAt
    exact (logAt.div sqrtAt (ne_of_gt (Real.sqrt_pos.mpr positive))).mul
      (hF.contDiffAt.comp x shift)
  · have threshold : x < Real.exp (lo - t) :=
      lt_of_le_of_lt (not_lt.mp positive) (Real.exp_pos _)
    have localZero : (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) =ᶠ[𝓝 x]
        fun _ ↦ (0 : ℝ) := by
      filter_upwards [Iio_mem_nhds threshold] with y hy
      exact logarithmic_profile_zero_left silent hy
    exact contDiffAt_const.congr_of_eventuallyEq localZero

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity
