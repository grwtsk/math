import GRWTSK.RealFunctions.FunctionsOfOneVariable.DifferentiationRealFunctionsOfOneVariableGeneralTheoryGeneralizedDerivativesMeanValueTheorems.FiniteNudgeQuadratic
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.Piecewise

/-!
# Ordinary finite-nudge epsilon-delta control and the derivative

Local attribution: grwtsk contributors.
Grant Sanderson, Limits and the definition of derivatives (2017-05-04),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/limits/
All bodies/construction fields: NOT_RUN_USER_DEFERRED.

The source's general finite-nudge description is related to explicit real
quantifiers, the punctured filter, and HasDerivAt. Filling the zero step with
the limiting slope supplies an actual continuous quotient extension. Arbitrary
quadratics consume the bridge. Absolute value at zero is a local boundary
example, not a formula attributed to the lesson text.
-/

namespace GRWTSK.RealAnalysis.FiniteNudgeQuadratic

open Filter
open scoped Topology

/-- Positive epsilon precedes the choice of a positive radius; the step stays nonzero. -/
def NudgeControl (f : ℝ → ℝ) (x L : ℝ) : Prop :=
  ∀ ε > 0, ∃ δ > 0, ∀ h : ℝ, h ≠ 0 → |h| < δ → |nudge f x h - L| < ε

theorem nudge_limit_iff_control (f : ℝ → ℝ) (x L : ℝ) :
    Tendsto (nudge f x) (𝓝[≠] 0) (𝓝 L) ↔ NudgeControl f x L := by
  simpa [NudgeControl, Real.dist_eq] using
    (Metric.tendsto_nhdsWithin_nhds (f := nudge f x) (a := (0 : ℝ))
      (b := L) (s := ({0}ᶜ : Set ℝ)))

theorem derivative_iff_nudge_limit (f : ℝ → ℝ) (x L : ℝ) :
    HasDerivAt f L x ↔ Tendsto (nudge f x) (𝓝[≠] 0) (𝓝 L) := by
  simpa [nudge, div_eq_mul_inv, smul_eq_mul, mul_comm] using
    (hasDerivAt_iff_tendsto_slope_zero (f := f) (f' := L) (x := x))

/-- Both directions preserve the same actual function, point and candidate slope. -/
theorem derivative_iff_control (f : ℝ → ℝ) (x L : ℝ) :
    HasDerivAt f L x ↔ NudgeControl f x L :=
  (derivative_iff_nudge_limit f x L).trans (nudge_limit_iff_control f x L)

/-- Change only the zero-step value of the actual quotient. -/
noncomputable def filledNudge (f : ℝ → ℝ) (x L : ℝ) : ℝ → ℝ :=
  Function.update (nudge f x) 0 L

theorem filledNudge_zero (f : ℝ → ℝ) (x L : ℝ) : filledNudge f x L 0 = L := by
  simp [filledNudge]

theorem filledNudge_nonzero (f : ℝ → ℝ) (x L h : ℝ) (hh : h ≠ 0) :
    filledNudge f x L h = nudge f x h := by
  simp [filledNudge, hh]

theorem filledNudge_continuous_iff (f : ℝ → ℝ) (x L : ℝ) :
    ContinuousAt (filledNudge f x L) 0 ↔ HasDerivAt f L x := by
  rw [filledNudge, continuousAt_update_same]
  exact (derivative_iff_nudge_limit f x L).symm

theorem quadratic_control (a b c x : ℝ) :
    NudgeControl (quadratic a b c) x (2*a*x+b) := by
  intro ε hε
  refine ⟨ε/(|a|+1), div_pos hε (by positivity), ?_⟩
  intro h hh hs
  exact quadratic_error_radius a b c x ε h hε hh hs

/-- Actual consumer through the quantified control bridge, not an assumed derivative. -/
theorem quadratic_filledNudge_continuous (a b c x : ℝ) :
    ContinuousAt (filledNudge (quadratic a b c) x (2*a*x+b)) 0 := by
  apply (filledNudge_continuous_iff _ _ _).2
  exact (derivative_iff_control _ _ _).2 (quadratic_control a b c x)

theorem abs_nudge_positive (h : ℝ) (hh : 0 < h) :
    nudge (fun t : ℝ => |t|) 0 h = 1 := by
  simp [nudge, abs_of_pos hh, ne_of_gt hh]

theorem abs_nudge_negative (h : ℝ) (hh : h < 0) :
    nudge (fun t : ℝ => |t|) 0 h = -1 := by
  simp [nudge, abs_of_neg hh, ne_of_lt hh]

/-- Opposite ordinary finite steps rule out every proposed slope at the corner. -/
theorem abs_no_nudge_control (L : ℝ) : ¬ NudgeControl (fun t : ℝ => |t|) 0 L := by
  intro hc
  obtain ⟨δ, hδ, he⟩ := hc (1/2) (by norm_num)
  have hp : 0 < δ/2 := by linarith
  have hn : -(δ/2) < 0 := by linarith
  have hsp : |δ/2| < δ := by rw [abs_of_pos hp]; linarith
  have hsn : |-(δ/2)| < δ := by rw [abs_neg]; exact hsp
  have ha := he (δ/2) (ne_of_gt hp) hsp
  have hb := he (-(δ/2)) (ne_of_lt hn) hsn
  rw [abs_nudge_positive _ hp] at ha
  rw [abs_nudge_negative _ hn] at hb
  have hpa := (abs_lt.mp ha).2
  have hnb := (abs_lt.mp hb).1
  linarith

theorem abs_no_derivative (L : ℝ) : ¬ HasDerivAt (fun t : ℝ => |t|) L 0 := by
  intro hd
  exact abs_no_nudge_control L ((derivative_iff_control _ _ _).1 hd)

end GRWTSK.RealAnalysis.FiniteNudgeQuadratic
