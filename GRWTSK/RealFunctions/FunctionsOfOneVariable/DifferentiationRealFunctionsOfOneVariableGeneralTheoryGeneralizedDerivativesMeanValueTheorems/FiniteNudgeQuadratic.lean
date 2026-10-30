import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# Finite nudges, exact quadratic errors, and derivative limits

Local attribution: grwtsk contributors.
Source: Grant Sanderson, Limits and the definition of derivatives (2017-05-04).
https://www.3blue1brown.com/lessons/limits/
All proof bodies: NOT_RUN_USER_DEFERRED.

The lesson's general finite-nudge definition is instantiated here on arbitrary
real quadratics. These polynomial consumers are local examples, not a claim
that the published lesson text states every formula below. The step h is an
ordinary real number. Cancellation requires h!=0; the derivative is a punctured
limit and is not obtained by substituting zero into a quotient.
-/

namespace GRWTSK.RealAnalysis.FiniteNudgeQuadratic

open Filter
open scoped Topology

noncomputable def nudge (f : ℝ → ℝ) (x h : ℝ) : ℝ := (f (x + h) - f x) / h

noncomputable def quadratic (a b c x : ℝ) : ℝ := a * x^2 + b*x + c

theorem nudge_zero (f : ℝ → ℝ) (x : ℝ) : nudge f x 0 = 0 := by
  simp [nudge]

/-- Exact finite change, retaining the second-order term. -/
theorem quadratic_increment (a b c x h : ℝ) :
    quadratic a b c (x+h) - quadratic a b c x = (2*a*x+b)*h+a*h^2 := by
  unfold quadratic
  ring

theorem quadratic_secant (a b c x h : ℝ) (hh : h ≠ 0) :
    nudge (quadratic a b c) x h = 2*a*x+b+a*h := by
  unfold nudge
  rw [quadratic_increment]
  field_simp [hh]
  <;> ring

/-- Absolute secant error is exactly proportional to the finite input step. -/
theorem quadratic_secant_error (a b c x h : ℝ) (hh : h ≠ 0) :
    |nudge (quadratic a b c) x h - (2*a*x+b)| = |a|*|h| := by
  rw [quadratic_secant a b c x h hh]
  have he : 2*a*x+b+a*h-(2*a*x+b) = a*h := by ring
  rw [he, abs_mul]

/-- A single explicit radius works at EVERY x; no infinitesimal input is used. -/
theorem quadratic_error_radius (a b c x ε h : ℝ) (hε : 0 < ε)
    (hh : h ≠ 0) (hsmall : |h| < ε / (|a|+1)) :
    |nudge (quadratic a b c) x h - (2*a*x+b)| < ε := by
  rw [quadratic_secant_error a b c x h hh]
  have hp : 0 < |a|+1 := by positivity
  have hm := (lt_div_iff₀ hp).mp hsmall
  have hn := abs_nonneg h
  nlinarith

theorem quadratic_epsilon_delta (a b c : ℝ) (ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, ∀ x h : ℝ, 0 < |h| → |h| < δ →
      |nudge (quadratic a b c) x h - (2*a*x+b)| < ε := by
  refine ⟨ε/(|a|+1), div_pos hε (by positivity), ?_⟩
  intro x h hh hs
  exact quadratic_error_radius a b c x ε h hε (abs_pos.mp hh) hs

/-- The analytic derivative agrees with the same coefficient obtained by finite algebra. -/
theorem quadratic_hasDerivAt (a b c x : ℝ) :
    HasDerivAt (quadratic a b c) (2*a*x+b) x := by
  have hd := ((((hasDerivAt_id x).pow 2).const_mul a).add
    ((hasDerivAt_id x).const_mul b)).add_const c
  convert hd using 1 <;> simp [quadratic] <;> ring

theorem quadratic_deriv (a b c x : ℝ) :
    deriv (quadratic a b c) x = 2*a*x+b := (quadratic_hasDerivAt a b c x).deriv

/-- Formal derivative definition with ordinary nonzero steps tending to zero. -/
theorem quadratic_punctured_limit (a b c x : ℝ) :
    Tendsto (nudge (quadratic a b c) x) (𝓝[≠] 0) (𝓝 (2*a*x+b)) := by
  simpa [nudge, div_eq_mul_inv, smul_eq_mul, mul_comm] using
    (quadratic_hasDerivAt a b c x).tendsto_slope_zero

theorem square_secant (x h : ℝ) (hh : h ≠ 0) :
    nudge (fun t : ℝ => t^2) x h = 2*x+h := by
  simpa [quadratic] using quadratic_secant 1 0 0 x h hh

theorem square_secant_error (x h : ℝ) (hh : h ≠ 0) :
    |nudge (fun t : ℝ => t^2) x h - 2*x| = |h| := by
  simpa [quadratic] using quadratic_secant_error 1 0 0 x h hh

theorem square_at_two_limit :
    Tendsto (nudge (fun t : ℝ => t^2) 2) (𝓝[≠] 0) (𝓝 4) := by
  simpa [quadratic] using quadratic_punctured_limit 1 0 0 2

/-- Lean's total division at zero illustrates why point substitution is not this limit. -/
theorem square_zero_step_not_derivative :
    nudge (fun t : ℝ => t^2) 2 0 ≠ deriv (fun t : ℝ => t^2) 2 := by
  have hd : deriv (fun t : ℝ => t^2) 2 = 4 := by
    simpa [quadratic] using quadratic_deriv 1 0 0 2
  rw [nudge_zero, hd]
  norm_num

end GRWTSK.RealAnalysis.FiniteNudgeQuadratic
