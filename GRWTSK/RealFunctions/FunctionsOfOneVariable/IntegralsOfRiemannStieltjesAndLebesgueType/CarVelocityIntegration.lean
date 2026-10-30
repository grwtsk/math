import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-!
# The integration lesson's actual car-velocity accumulation

Local attribution: grwtsk contributors.
Grant Sanderson, Integration and the fundamental theorem of calculus (2017-05-05),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/integration/
All proof bodies: NOT_RUN_USER_DEFERRED.

The signed oriented interval integral, the actual primitive and the integral of
absolute speed are related with explicit hypotheses. Nonnegativity on [0,8]
justifies unsigned speed accumulation there. No geometric subgraph area or
Riemann-sum convergence is assumed as an interface; those remain separate.
-/

namespace GRWTSK.RealAnalysis.CarVelocityIntegration

open MeasureTheory Set

noncomputable def velocity (t : ℝ) : ℝ := t*(8-t)
noncomputable def position (t : ℝ) : ℝ := 4*t^2-t^3/3
noncomputable def accumulation (T : ℝ) : ℝ := ∫ t in (0 : ℝ)..T, velocity t

/-- Actual polynomial continuity supplies integrability, rather than a free integral field. -/
theorem velocity_continuous : Continuous velocity := by unfold velocity; fun_prop

theorem position_derivative (t : ℝ) : HasDerivAt position (velocity t) t := by
  have hd := (((hasDerivAt_id t).pow 2).const_mul 4).sub
    (((hasDerivAt_id t).pow 3).div_const 3)
  convert hd using 1 <;> simp [position, velocity] <;> ring

theorem velocity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable velocity volume a b := velocity_continuous.intervalIntegrable a b

/-- FTC2 with the actual primitive and actual derivative/integrability suppliers. -/
theorem integral_velocity (a b : ℝ) :
    (∫ t in a..b, velocity t) = position b-position a := by
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => position_derivative t) (velocity_intervalIntegrable a b)

theorem accumulation_eq_position (T : ℝ) : accumulation T = position T := by
  unfold accumulation
  rw [integral_velocity]
  simp [position]

/-- Actual accumulation returns the source velocity under differentiation. -/
theorem accumulation_derivative (T : ℝ) :
    HasDerivAt accumulation (velocity T) T := by
  have he : accumulation = position := funext accumulation_eq_position
  rw [he]
  exact position_derivative T

theorem velocity_nonnegative (t : ℝ) (ht0 : 0 ≤ t) (ht8 : t ≤ 8) :
    0 ≤ velocity t := mul_nonneg ht0 (sub_nonneg.mpr ht8)

/-- Domain-restricted unsigned speed agrees with the signed integral, with orientation explicit. -/
theorem absolute_speed_integral (T : ℝ) (hT0 : 0 ≤ T) (hT8 : T ≤ 8) :
    (∫ t in (0 : ℝ)..T, |velocity t|) = accumulation T := by
  unfold accumulation
  apply intervalIntegral.integral_congr
  intro t ht
  rw [uIcc_of_le hT0] at ht
  exact abs_of_nonneg (velocity_nonnegative t ht.1 (le_trans ht.2 hT8))

theorem eight_second_integral :
    (∫ t in (0 : ℝ)..8, velocity t) = (256/3 : ℝ) := by
  rw [integral_velocity]
  norm_num [position]

/-- Reversing orientation reverses the signed result. -/
theorem reverse_integral :
    (∫ t in (8 : ℝ)..0, velocity t) = (-256/3 : ℝ) := by
  rw [integral_velocity]
  norm_num [position]

theorem quarter_cell_integral :
    (∫ t in (1 : ℝ)..(5/4), velocity t) = (371/192 : ℝ) := by
  rw [integral_velocity]
  norm_num [position]

theorem quarter_cell_left_rectangle : velocity 1*(1/4 : ℝ) = (7/4 : ℝ) := by
  norm_num [velocity]

/-- The lesson's finite rectangle is an approximation with this exact positive defect. -/
theorem quarter_cell_rectangle_defect :
    (∫ t in (1 : ℝ)..(5/4), velocity t)-velocity 1*(1/4 : ℝ) = (35/192 : ℝ) := by
  rw [quarter_cell_integral, quarter_cell_left_rectangle]
  norm_num

theorem constant_offset_derivative (c t : ℝ) :
    HasDerivAt (fun x => position x+c) (velocity t) t :=
  (position_derivative t).add_const c

/-- Zero initial displacement fixes the additive constant for this primitive family. -/
theorem initial_value_fixes_offset (c : ℝ) : position 0+c = 0 ↔ c = 0 := by
  simp [position]

theorem absolute_eight_second_integral :
    (∫ t in (0 : ℝ)..8, |velocity t|) = (256/3 : ℝ) := by
  rw [absolute_speed_integral 8 (by norm_num) (by norm_num), accumulation_eq_position]
  norm_num [position]

/-- First actual antiderivative exercise. -/
theorem cubic_linear_primitive (x : ℝ) :
    HasDerivAt (fun t : ℝ => t^3+5*t) (3*x^2+5) x := by
  have hd := ((hasDerivAt_id x).pow 3).add ((hasDerivAt_id x).const_mul 5)
  convert hd using 1 <;> simp <;> ring

/-- Second actual antiderivative exercise. -/
theorem quadratic_linear_primitive (x : ℝ) :
    HasDerivAt (fun t : ℝ => t^2/2+2*t) (x+2) x := by
  have hd := (((hasDerivAt_id x).pow 2).div_const 2).add
    ((hasDerivAt_id x).const_mul 2)
  convert hd using 1 <;> simp <;> ring

end GRWTSK.RealAnalysis.CarVelocityIntegration
