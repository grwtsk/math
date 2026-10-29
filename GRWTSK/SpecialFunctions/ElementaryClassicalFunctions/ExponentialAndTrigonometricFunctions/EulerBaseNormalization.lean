import GRWTSK.GroupTheoryAndGeneralizations.Foundations.AxiomaticsAndElementaryPropertiesOfGroups.EulerComplexActions
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.Ring

/-!
# Positive exponential bases and the analytic normalization of rotations

Local attribution: grwtsk contributors.
Primary source: Grant Sanderson, Euler's formula with introductory group theory
(2017-03-03), published text adaptation River Way.
https://www.3blue1brown.com/lessons/eulers-formula-via-group-theory/
All proof bodies: NOT_RUN_USER_DEFERRED.

For b>0 the real exponential t ↦ b^t has derivative log(b) at zero.
The normalization derivative=1 selects b=exp(1), using imported real analysis.
The entire extension exp(log(b)*z) has the same normalization and its imaginary
axis acts by the actual rotation with angular speed log(b). This is a supplier
for the lesson's explicit calculus normalization, not an inference from group
structure alone. No arbitrary complex-base logarithm branch is chosen.
-/

namespace GRWTSK.SpecialFunctions.EulerBaseNormalization

open GRWTSK.GroupTheory.Elementary.EulerComplexActions

/-- The real exponential associated with a positive base. -/
noncomputable def realBase (b t : ℝ) : ℝ := b ^ t

/-- The entire extension attached to a POSITIVE real base and its real logarithm. -/
noncomputable def complexBase (b : ℝ) (z : ℂ) : ℂ :=
  Complex.exp ((Real.log b : ℂ) * z)

theorem realBase_formula {b : ℝ} (hb : 0 < b) (t : ℝ) :
    realBase b t = Real.exp (Real.log b * t) :=
  Real.rpow_def_of_pos hb t

theorem realBase_positive {b : ℝ} (hb : 0 < b) (t : ℝ) :
    0 < realBase b t := by
  rw [realBase_formula hb]
  exact Real.exp_pos _

theorem realBase_add {b : ℝ} (hb : 0 < b) (s t : ℝ) :
    realBase b (s + t) = realBase b s * realBase b t := by
  simp only [realBase_formula hb, mul_add, Real.exp_add]

theorem realBase_zero (b : ℝ) : realBase b 0 = 1 := by simp [realBase]

theorem realBase_one (b : ℝ) : realBase b 1 = b := by simp [realBase]

theorem realBase_derivative {b : ℝ} (hb : 0 < b) (t : ℝ) :
    HasDerivAt (realBase b) (Real.log b * realBase b t) t := by
  simpa [realBase] using (hasDerivAt_id t).const_rpow hb

theorem realBase_deriv_zero {b : ℝ} (hb : 0 < b) :
    deriv (realBase b) 0 = Real.log b := by
  simpa [realBase] using (realBase_derivative hb 0).deriv

/-- Unit initial growth rate singles out e, with positive-base domain explicit. -/
theorem unit_growth_iff {b : ℝ} (hb : 0 < b) :
    deriv (realBase b) 0 = 1 ↔ b = Real.exp 1 := by
  rw [realBase_deriv_zero hb]
  constructor
  · intro h
    calc b = Real.exp (Real.log b) := (Real.exp_log hb).symm
         _ = Real.exp 1 := congrArg Real.exp h
  · intro h
    rw [h, Real.log_exp]

theorem natural_realBase (t : ℝ) : realBase (Real.exp 1) t = Real.exp t := by
  simp [realBase_formula (Real.exp_pos 1), Real.log_exp]

theorem complexBase_zero (b : ℝ) : complexBase b 0 = 1 := by
  simp [complexBase]

theorem complexBase_add (b : ℝ) (z w : ℂ) :
    complexBase b (z + w) = complexBase b z * complexBase b w := by
  simp only [complexBase, mul_add, Complex.exp_add]

/-- Agreement with the actual positive-base real power, not an assumed extension field. -/
theorem complexBase_on_real {b : ℝ} (hb : 0 < b) (t : ℝ) :
    complexBase b (t : ℂ) = (realBase b t : ℂ) := by
  rw [realBase_formula hb, Complex.ofReal_exp]
  simp [complexBase]

theorem complexBase_at_one {b : ℝ} (hb : 0 < b) :
    complexBase b 1 = (b : ℂ) := by
  simpa [realBase] using complexBase_on_real hb 1

theorem complexBase_derivative (b : ℝ) (z : ℂ) :
    HasDerivAt (complexBase b) ((Real.log b : ℂ) * complexBase b z) z := by
  simpa [complexBase, mul_comm] using
    ((hasDerivAt_id z).const_mul (Real.log b : ℂ)).cexp

theorem complexBase_deriv_zero (b : ℝ) :
    deriv (complexBase b) 0 = (Real.log b : ℂ) := by
  simpa [complexBase] using (complexBase_derivative b 0).deriv

theorem natural_complexBase (z : ℂ) :
    complexBase (Real.exp 1) z = Complex.exp z := by
  simp [complexBase, Real.log_exp]

/-- The imaginary-axis value determines an actual action on every complex point. -/
theorem imaginary_axis_action (b t : ℝ) (z : ℂ) :
    complexBase b ((t : ℂ) * Complex.I) * z = rotate (Real.log b * t) z := by
  simp only [complexBase, rotate, Circle.coe_exp, Complex.ofReal_mul]
  congr 2
  ring

/-- Initial logarithmic rate controls the actual angular speed. -/
theorem imaginary_action_via_initial_rate {b : ℝ} (hb : 0 < b) (t : ℝ) (z : ℂ) :
    complexBase b ((t : ℂ) * Complex.I) * z =
      rotate (deriv (realBase b) 0 * t) z := by
  rw [realBase_deriv_zero hb]
  exact imaginary_axis_action b t z

/-- The analytically normalized base produces a half-turn at pi. -/
theorem normalized_half_turn {b : ℝ} (hb : 0 < b)
    (hunit : deriv (realBase b) 0 = 1) (z : ℂ) :
    complexBase b ((Real.pi : ℂ) * Complex.I) * z = -z := by
  rw [imaginary_action_via_initial_rate hb, hunit, one_mul]
  exact euler_half_turn_action z

/-- Base one is the degenerate zero-speed case, not a faithful rotation clock. -/
theorem base_one_action (t : ℝ) (z : ℂ) :
    complexBase 1 ((t : ℂ) * Complex.I) * z = z := by
  simp [complexBase]

end GRWTSK.SpecialFunctions.EulerBaseNormalization
