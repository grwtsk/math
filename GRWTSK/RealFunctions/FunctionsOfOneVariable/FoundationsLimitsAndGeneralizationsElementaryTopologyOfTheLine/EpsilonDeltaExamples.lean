import GRWTSK.RealFunctions.FunctionsOfOneVariable.DifferentiationRealFunctionsOfOneVariableGeneralTheoryGeneralizedDerivativesMeanValueTheorems.FiniteNudgeControl

/-!
# The epsilon-delta lesson: exact cubic quotient and a persistent jump

Local attribution: grwtsk contributors.
Grant Sanderson, (epsilon, delta) definitions of limits (2017-05-04),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/epsilon-delta/
All proof bodies: NOT_RUN_USER_DEFERRED.

The source's cubic difference quotient at x=2 is treated with ordinary h!=0.
A safe explicit radius proves convergence to12. A rational boundary witness
keeps strict inequalities separate from graphical/quiz approximations; no
claim is made about which interactive answer the site marks correct. The jump
is a concrete realization of the source's limiting heights2 and1; choosing its
value at zero does not supply a punctured limit.
-/

namespace GRWTSK.RealAnalysis.EpsilonDeltaExamples

open Filter GRWTSK.RealAnalysis.FiniteNudgeQuadratic
open scoped Topology

def ZeroLimitControl (g : ℝ → ℝ) (L : ℝ) : Prop :=
  ∀ ε > 0, ∃ δ > 0, ∀ h : ℝ, h ≠ 0 → |h| < δ → |g h-L| < ε

theorem zero_limit_iff_control (g : ℝ → ℝ) (L : ℝ) :
    Tendsto g (𝓝[≠] 0) (𝓝 L) ↔ ZeroLimitControl g L := by
  simpa [ZeroLimitControl, Real.dist_eq] using
    (Metric.tendsto_nhdsWithin_nhds (f := g) (a := (0 : ℝ))
      (b := L) (s := ({0}ᶜ : Set ℝ)))

theorem cubic_secant (h : ℝ) (hh : h ≠ 0) :
    nudge (fun x : ℝ => x^3) 2 h = 12+6*h+h^2 := by
  unfold nudge
  field_simp [hh] <;> ring

theorem cubic_error_bound (h : ℝ) (hh : h ≠ 0) (hs : |h| < 1) :
    |nudge (fun x : ℝ => x^3) 2 h - 12| ≤ 7*|h| := by
  rw [cubic_secant h hh]
  have he : 12+6*h+h^2-12 = 6*h+h^2 := by ring
  rw [he]
  calc |6*h+h^2| ≤ |6*h|+|h^2| := abs_add _ _
       _ = 6*|h|+|h|^2 := by rw [abs_mul, abs_pow]; norm_num
       _ ≤ 7*|h| := by
         have hn := abs_nonneg h
         have hm := mul_le_mul_of_nonneg_left (le_of_lt hs) hn
         nlinarith

/-- Explicit safe radius with quantifier order epsilon, then delta, then the step. -/
theorem cubic_control : ZeroLimitControl (nudge (fun x : ℝ => x^3) 2) 12 := by
  intro ε hε
  refine ⟨min 1 (ε/7), lt_min (by norm_num) (by positivity), ?_⟩
  intro h hh hs
  have h1 : |h| < 1 := lt_of_lt_of_le hs (min_le_left _ _)
  have h7 : |h| < ε/7 := lt_of_lt_of_le hs (min_le_right _ _)
  apply lt_of_le_of_lt (cubic_error_bound h hh h1)
  linarith

theorem cubic_limit :
    Tendsto (nudge (fun x : ℝ => x^3) 2) (𝓝[≠] 0) (𝓝 12) :=
  (zero_limit_iff_control _ _).2 cubic_control

/-- The explicit estimates also supply the actual derivative through the retained bridge. -/
theorem cube_derivative_at_two : HasDerivAt (fun x : ℝ => x^3) 12 2 :=
  (derivative_iff_control _ _ _).2 cubic_control

/-- A displayed decimal radius is not silently rounded into a strict exact bound. -/
theorem thousandth_radius_boundary :
    ∃ h : ℝ, 0 < |h| ∧ |h| < 1/1000 ∧
      3/500 < |nudge (fun x : ℝ => x^3) 2 h - 12| := by
  refine ⟨9999/10000000, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · rw [cubic_secant _ (by norm_num)]
    norm_num

noncomputable def jump (h : ℝ) : ℝ := if 0 < h then 2 else 1

theorem jump_positive (h : ℝ) (hh : 0 < h) : jump h = 2 := by simp [jump, hh]

theorem jump_negative (h : ℝ) (hh : h < 0) : jump h = 1 := by
  simp [jump, not_lt_of_ge (le_of_lt hh)]

/-- The two persistent heights contradict every candidate limiting value. -/
theorem jump_no_control (L : ℝ) : ¬ ZeroLimitControl jump L := by
  intro hc
  obtain ⟨δ, hδ, he⟩ := hc (2/5) (by norm_num)
  have hp : 0 < δ/2 := by linarith
  have hn : -(δ/2) < 0 := by linarith
  have hs : |δ/2| < δ := by rw [abs_of_pos hp]; linarith
  have hsn : |-(δ/2)| < δ := by simpa only [abs_neg] using hs
  have ha := he (δ/2) (ne_of_gt hp) hs
  have hb := he (-(δ/2)) (ne_of_lt hn) hsn
  rw [jump_positive _ hp] at ha
  rw [jump_negative _ hn] at hb
  have hpa := (abs_lt.mp ha).2
  have hnb := (abs_lt.mp hb).1
  linarith

theorem jump_no_limit (L : ℝ) : ¬ Tendsto jump (𝓝[≠] 0) (𝓝 L) := by
  intro hl
  exact jump_no_control L ((zero_limit_iff_control _ _).1 hl)

end GRWTSK.RealAnalysis.EpsilonDeltaExamples
