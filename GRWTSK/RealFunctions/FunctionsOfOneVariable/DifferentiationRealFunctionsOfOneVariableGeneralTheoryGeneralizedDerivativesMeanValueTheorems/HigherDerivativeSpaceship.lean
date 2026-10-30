import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Abs
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Actual spaceship derivatives and two equal finite steps

Local attribution: grwtsk contributors.
Grant Sanderson, Higher order derivatives (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/higher-order-derivatives/ .
All proof bodies and inherited analytic suppliers: NOT_RUN_USER_DEFERRED.

The exact exercise polynomial supplies displacement, velocity, acceleration and
jerk. Actual derivative witnesses connect them to iteratedDeriv. The source's
two-step d(df) is an actual finite second difference, not a formal differential
field. Its quotient has an exact residual j(t)*h+14h^2, explicit epsilon control
and a punctured limit. The physical speed derivative uses positive velocity;
zero acceleration alone does not mean zero velocity or an acceleration sign change.
-/

namespace GRWTSK.RealAnalysis.HigherDerivativeSpaceship

open Filter Set
open scoped Topology

noncomputable def displacement (t : ℝ) : ℝ := t^4-4*t^3+6*t^2
noncomputable def velocity (t : ℝ) : ℝ := 4*t^3-12*t^2+12*t
noncomputable def acceleration (t : ℝ) : ℝ := 12*t^2-24*t+12
noncomputable def jerk (t : ℝ) : ℝ := 24*t-24

theorem displacement_derivative (t : ℝ) : HasDerivAt displacement (velocity t) t := by
  have hd := (((hasDerivAt_id t).pow 4).sub
    (((hasDerivAt_id t).pow 3).const_mul 4)).add
    (((hasDerivAt_id t).pow 2).const_mul 6)
  convert hd using 1 <;> simp [displacement, velocity] <;> ring

theorem velocity_derivative (t : ℝ) : HasDerivAt velocity (acceleration t) t := by
  have hd := ((((hasDerivAt_id t).pow 3).const_mul 4).sub
    (((hasDerivAt_id t).pow 2).const_mul 12)).add ((hasDerivAt_id t).const_mul 12)
  convert hd using 1 <;> simp [velocity, acceleration] <;> ring

theorem acceleration_derivative (t : ℝ) : HasDerivAt acceleration (jerk t) t := by
  have hd := ((((hasDerivAt_id t).pow 2).const_mul 12).sub
    ((hasDerivAt_id t).const_mul 24)).add_const 12
  convert hd using 1 <;> simp [acceleration, jerk] <;> ring

theorem jerk_derivative (t : ℝ) : HasDerivAt jerk 24 t := by
  simpa [jerk] using ((hasDerivAt_id t).const_mul 24).sub_const 24

/-- The named physical functions are actual iterated derivatives, not assumed fields. -/
theorem actual_iterated_derivatives :
    iteratedDeriv 1 displacement = velocity ∧
    iteratedDeriv 2 displacement = acceleration ∧
    iteratedDeriv 3 displacement = jerk ∧
    iteratedDeriv 4 displacement = (fun _ : ℝ => 24) := by
  have h1 : iteratedDeriv 1 displacement = velocity := by
    rw [iteratedDeriv_one]
    exact funext (fun t => (displacement_derivative t).deriv)
  have h2 : iteratedDeriv 2 displacement = acceleration := by
    rw [show 2 = 1+1 from rfl, iteratedDeriv_succ, h1]
    exact funext (fun t => (velocity_derivative t).deriv)
  have h3 : iteratedDeriv 3 displacement = jerk := by
    rw [show 3 = 2+1 from rfl, iteratedDeriv_succ, h2]
    exact funext (fun t => (acceleration_derivative t).deriv)
  have h4 : iteratedDeriv 4 displacement = (fun _ : ℝ => 24) := by
    rw [show 4 = 3+1 from rfl, iteratedDeriv_succ, h3]
    exact funext (fun t => (jerk_derivative t).deriv)
  exact ⟨h1, h2, h3, h4⟩

/-- Difference between the increments of two successive equal steps. -/
noncomputable def secondDifference (t h : ℝ) : ℝ :=
  (displacement (t+2*h)-displacement (t+h))-
    (displacement (t+h)-displacement t)

noncomputable def secondQuotient (t h : ℝ) : ℝ := secondDifference t h/h^2

theorem second_difference_formula (t h : ℝ) :
    secondDifference t h = h^2*(acceleration t+jerk t*h+14*h^2) := by
  unfold secondDifference displacement acceleration jerk
  ring

/-- The ordinary nonzero-step quotient, including its exact residual terms. -/
theorem second_quotient_formula (t h : ℝ) (hh : h ≠ 0) :
    secondQuotient t h = acceleration t+jerk t*h+14*h^2 := by
  unfold secondQuotient
  rw [second_difference_formula]
  field_simp [hh] <;> ring

theorem second_quotient_error (t h : ℝ) (hh : h ≠ 0) (hs : |h| < 1) :
    |secondQuotient t h-acceleration t| ≤ (|jerk t|+14)*|h| := by
  rw [second_quotient_formula t h hh]
  have he : acceleration t+jerk t*h+14*h^2-acceleration t = jerk t*h+14*h^2 := by ring
  rw [he]
  have hsq : h^2 ≤ |h| := by nlinarith [sq_abs h, abs_nonneg h]
  calc |jerk t*h+14*h^2| ≤ |jerk t*h|+|14*h^2| := abs_add_le _ _
       _ ≤ (|jerk t|+14)*|h| := by
          rw [abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 14),
            abs_of_nonneg (sq_nonneg h)]
          nlinarith

/-- For each fixed t, an explicit positive radius controls every ordinary nonzero step. -/
theorem second_quotient_epsilon_delta (t ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, ∀ h : ℝ, 0 < |h| → |h| < δ →
      |secondQuotient t h-acceleration t| < ε := by
  have hp : 0 < |jerk t|+15 := by positivity
  refine ⟨min 1 (ε/(|jerk t|+15)), lt_min (by norm_num) (div_pos hε hp), ?_⟩
  intro h hh hs
  have hsmall : |h| < 1 := lt_of_lt_of_le hs (min_le_left _ _)
  have hratio : |h| < ε/(|jerk t|+15) := lt_of_lt_of_le hs (min_le_right _ _)
  have hm := (lt_div_iff₀ hp).mp hratio
  have he := second_quotient_error t h (abs_pos.mp hh) hsmall
  nlinarith [abs_nonneg h]

/-- Actual punctured limit, supplied by the proved polynomial identity and continuity. -/
theorem second_quotient_punctured_limit (t : ℝ) :
    Tendsto (secondQuotient t) (𝓝[≠] (0 : ℝ)) (𝓝 (acceleration t)) := by
  have hc : Continuous (fun h : ℝ => acceleration t+jerk t*h+14*h^2) := by fun_prop
  have ht : Tendsto (fun h : ℝ => acceleration t+jerk t*h+14*h^2)
      (𝓝[≠] (0 : ℝ)) (𝓝 (acceleration t)) := by
    simpa using (hc.tendsto 0).mono_left nhdsWithin_le_nhds
  refine (tendsto_congr' ?_).mp ht
  filter_upwards [self_mem_nhdsWithin] with h hh
  have hn : h ≠ 0 := by simpa only [mem_compl_iff, mem_singleton_iff] using hh
  exact (second_quotient_formula t h hn).symm

theorem acceleration_square (t : ℝ) : acceleration t = 12*(t-1)^2 := by
  unfold acceleration
  ring

theorem acceleration_nonnegative (t : ℝ) : 0 ≤ acceleration t := by
  rw [acceleration_square]
  positivity

theorem acceleration_zero_iff (t : ℝ) : acceleration t = 0 ↔ t = 1 := by
  rw [acceleration_square]
  simp only [mul_eq_zero, show (12 : ℝ) ≠ 0 by norm_num, false_or,
    sq_eq_zero_iff, sub_eq_zero]

theorem velocity_positive (t : ℝ) (ht : 0 < t) : 0 < velocity t := by
  have hp : 0 < t^2-3*t+3 := by nlinarith [sq_nonneg (t-3/2)]
  have he : velocity t = 4*t*(t^2-3*t+3) := by unfold velocity; ring
  rw [he]
  positivity

/-- Only the proved positive-velocity domain identifies acceleration with speed derivative. -/
theorem speed_derivative (t : ℝ) (ht : 0 < t) :
    HasDerivAt (fun u : ℝ => |velocity u|) (acceleration t) t := by
  simpa using (hasDerivAt_abs_pos (velocity_positive t ht)).comp t (velocity_derivative t)

theorem one_second_values : displacement 1 = 3 ∧ velocity 1 = 4 ∧
    acceleration 1 = 0 ∧ jerk 1 = 0 := by
  norm_num [displacement, velocity, acceleration, jerk]

/-- The finite second quotient at t1 need not be zero even though its limit is zero. -/
theorem one_second_finite_quotient (h : ℝ) (hh : h ≠ 0) :
    secondQuotient 1 h = 14*h^2 := by
  rw [second_quotient_formula 1 h hh]
  norm_num [acceleration, jerk]

/-- Total division at the zero step is distinct from the punctured limit in general. -/
theorem zero_step_boundary : secondQuotient 0 0 = 0 ∧ acceleration 0 = 12 ∧
    secondQuotient 0 0 ≠ acceleration 0 := by
  norm_num [secondQuotient, acceleration]

end GRWTSK.RealAnalysis.HigherDerivativeSpaceship
