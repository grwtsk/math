import Surface.Core.ConductorThreePrimePowerRemoval
import Mathlib.Tactic

#check Real.log_le_sub_one_of_pos
#check Real.add_one_le_exp
#check Real.exp_one_lt_d9
#check Real.exp_one_lt_three
#check Real.le_log_iff_exp_le

example {x : ℕ} (hx : 3 ≤ x) :
    (1 : ℝ) ≤ Real.sqrt x * Real.log x := by
  have hsqrt : 1 ≤ Real.sqrt (x : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast (by omega : 1 ≤ x)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp]
    rw [Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  nlinarith
