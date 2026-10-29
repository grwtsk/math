/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Int.ModEq
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega

/-!
# Integer sums of three cubes

Sources: Numberphile, *The Uncracked Problem with 33* (2015),
*42 is the new 33*, *The Mystery of 42 is Solved*, and
*3 as the sum of the 3 cubes* (2019). Exact witnesses are also recorded by
Andrew V. Sutherland at https://math.mit.edu/~drew/sumsofcubes.html.

These are source proof candidates. Compilation, fresh kernel replay and
transitive axiom auditing are NOT_RUN. The residue obstruction is necessary;
its sufficiency is a separate conjecture, not an assumption of these proofs.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.SumsOfThreeCubes

/-- Negative summands are permitted; there is no bound on their size. -/
def Representable (n : ℤ) : Prop := ∃ x y z : ℤ, x ^ 3 + y ^ 3 + z ^ 3 = n

/-- The local modulo-nine obstruction, with Euclidean integer remainders. -/
def Admissible (n : ℤ) : Prop := n % 9 ≠ 4 ∧ n % 9 ≠ 5

/-- Statement only: the necessary local condition is conjectured sufficient. -/
def Conjecture : Prop := ∀ n : ℤ, Admissible n → Representable n

/-- Every integer cube is zero, one, or minus one modulo nine. -/
theorem cube_residue (x : ℤ) :
    x ^ 3 % 9 = 0 ∨ x ^ 3 % 9 = 1 ∨ x ^ 3 % 9 = 8 := by
  have hnonneg : 0 ≤ x % 9 := Int.emod_nonneg x (by decide)
  have hlt : x % 9 < 9 := Int.emod_lt_of_pos x (by decide)
  have hc : (x % 9) ^ 3 % 9 = x ^ 3 % 9 :=
    (Int.ModEq.pow 3 (Int.mod_modEq x 9)).eq
  interval_cases hr : x % 9 <;> norm_num [hr] at hc <;> omega

/-- The obstruction holds for arbitrary integers, not just a bounded search. -/
theorem representable_admissible (n : ℤ) (hn : Representable n) : Admissible n := by
  obtain ⟨x, y, z, rfl⟩ := hn
  unfold Admissible
  rcases cube_residue x with hx | hx | hx <;>
    rcases cube_residue y with hy | hy | hy <;>
    rcases cube_residue z with hz | hz | hz <;> omega

theorem not_representable_of_residue_four (n : ℤ) (hn : n % 9 = 4) :
    ¬ Representable n := by
  intro h
  exact (representable_admissible n h).1 hn

theorem not_representable_of_residue_five (n : ℤ) (hn : n % 9 = 5) :
    ¬ Representable n := by
  intro h
  exact (representable_admissible n h).2 hn

/-- The March 2019 witness; this asserts an identity, not search completeness. -/
theorem identity_33 :
    (8866128975287528 : ℤ) ^ 3 + (-8778405442862239) ^ 3 +
      (-2736111468807040) ^ 3 = 33 := by norm_num

theorem representable_33 : Representable 33 :=
  ⟨8866128975287528, -8778405442862239, -2736111468807040, identity_33⟩

/-- The September 2019 joint Booker--Sutherland witness. -/
theorem identity_42 :
    (-80538738812075974 : ℤ) ^ 3 + 80435758145817515 ^ 3 +
      12602123297335631 ^ 3 = 42 := by norm_num

theorem representable_42 : Representable 42 :=
  ⟨-80538738812075974, 80435758145817515, 12602123297335631, identity_42⟩

/-- The large solution for three is distinct from the familiar small solutions. -/
theorem identity_3_large :
    (569936821221962380720 : ℤ) ^ 3 + (-569936821113563493509) ^ 3 +
      (-472715493453327032) ^ 3 = 3 := by norm_num

theorem representable_3_large : Representable 3 :=
  ⟨569936821221962380720, -569936821113563493509, -472715493453327032,
    identity_3_large⟩

/-- Three explicit ordered triples; no enumeration of all solutions is claimed. -/
theorem three_distinct_solutions_for_3 :
    (1 : ℤ) ^ 3 + 1 ^ 3 + 1 ^ 3 = 3 ∧
    (4 : ℤ) ^ 3 + 4 ^ 3 + (-5) ^ 3 = 3 ∧
    (569936821221962380720 : ℤ) ^ 3 + (-569936821113563493509) ^ 3 +
      (-472715493453327032) ^ 3 = 3 ∧
    (1 : ℤ) ≠ 4 ∧ (1 : ℤ) ≠ 569936821221962380720 ∧
    (4 : ℤ) ≠ 569936821221962380720 := by
  norm_num

end GRWTSK.NumberTheory.DiophantineEquations.SumsOfThreeCubes
