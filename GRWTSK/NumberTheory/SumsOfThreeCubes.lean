/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Lean.Elab.Tactic.Omega

/-!
# Integer sums of three cubes

Sources: Numberphile, *The Uncracked Problem with 33* (2015),
*42 is the new 33*, *The Mystery of 42 is Solved*, and
*3 as the sum of the 3 cubes* (2019). Exact witnesses are also recorded by
Andrew V. Sutherland at https://math.mit.edu/~drew/sumsofcubes.html.

These are source proof candidates. Compilation, fresh kernel replay and
transitive axiom auditing are NOT_RUN. Only Lean core arithmetic and its
proof-producing omega tactic are imported. The residue obstruction is necessary;
its sufficiency is a separate conjecture, not an assumption of these proofs.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.SumsOfThreeCubes

/-- Negative summands are permitted; there is no bound on their size. -/
def Representable (n : Int) : Prop := ∃ x y z : Int, x ^ 3 + y ^ 3 + z ^ 3 = n

/-- The local modulo-nine obstruction, with Euclidean integer remainders. -/
def Admissible (n : Int) : Prop := n % 9 ≠ 4 ∧ n % 9 ≠ 5

/-- Statement only: the necessary local condition is conjectured sufficient. -/
def Conjecture : Prop := ∀ n : Int, Admissible n → Representable n

/-- Transport arbitrary integer powers to their remainder representatives. -/
private theorem pow_remainder (x : Int) (k : Nat) :
    (x % 9) ^ k % 9 = x ^ k % 9 := by
  induction k with
  | zero => rfl
  | succ k ih =>
    calc
      (x % 9) ^ (k + 1) % 9 =
          (((x % 9) ^ k % 9) * ((x % 9) % 9)) % 9 := by
        rw [Int.pow_succ]
        exact Int.mul_emod _ _ _
      _ = ((x ^ k % 9) * (x % 9)) % 9 := by rw [ih, Int.emod_emod]
      _ = x ^ (k + 1) % 9 := by
        rw [Int.pow_succ]
        exact (Int.mul_emod _ _ _).symm

/-- Every integer cube is zero, one, or minus one modulo nine. -/
theorem cube_residue (x : Int) :
    x ^ 3 % 9 = 0 ∨ x ^ 3 % 9 = 1 ∨ x ^ 3 % 9 = 8 := by
  have hnonneg : 0 ≤ x % 9 := Int.emod_nonneg x (by decide)
  have hlt : x % 9 < 9 := Int.emod_lt_of_pos x (by decide)
  have hr : x % 9 = 0 ∨ x % 9 = 1 ∨ x % 9 = 2 ∨ x % 9 = 3 ∨
      x % 9 = 4 ∨ x % 9 = 5 ∨ x % 9 = 6 ∨ x % 9 = 7 ∨ x % 9 = 8 := by omega
  have hc := pow_remainder x 3
  simp only [← hc]
  rcases hr with hr | hr | hr | hr | hr | hr | hr | hr | hr <;>
    simp only [hr] <;> decide

/-- The obstruction holds for arbitrary integers, not just a bounded search. -/
theorem representable_admissible (n : Int) (hn : Representable n) : Admissible n := by
  obtain ⟨x, y, z, rfl⟩ := hn
  unfold Admissible
  rcases cube_residue x with hx | hx | hx <;>
    rcases cube_residue y with hy | hy | hy <;>
    rcases cube_residue z with hz | hz | hz <;> omega

theorem not_representable_of_residue_four (n : Int) (hn : n % 9 = 4) :
    ¬ Representable n := by
  intro h
  exact (representable_admissible n h).1 hn

theorem not_representable_of_residue_five (n : Int) (hn : n % 9 = 5) :
    ¬ Representable n := by
  intro h
  exact (representable_admissible n h).2 hn

/-- The March 2019 witness; this asserts an identity, not search completeness. -/
theorem identity_33 :
    (8866128975287528 : Int) ^ 3 + (-8778405442862239) ^ 3 +
      (-2736111468807040) ^ 3 = 33 := by decide

theorem representable_33 : Representable 33 :=
  ⟨8866128975287528, -8778405442862239, -2736111468807040, identity_33⟩

/-- The September 2019 joint Booker--Sutherland witness. -/
theorem identity_42 :
    (-80538738812075974 : Int) ^ 3 + 80435758145817515 ^ 3 +
      12602123297335631 ^ 3 = 42 := by decide

theorem representable_42 : Representable 42 :=
  ⟨-80538738812075974, 80435758145817515, 12602123297335631, identity_42⟩

/-- The large solution for three is distinct from the familiar small solutions. -/
theorem identity_3_large :
    (569936821221962380720 : Int) ^ 3 + (-569936821113563493509) ^ 3 +
      (-472715493453327032) ^ 3 = 3 := by decide

theorem representable_3_large : Representable 3 :=
  ⟨569936821221962380720, -569936821113563493509, -472715493453327032,
    identity_3_large⟩

/-- Three explicit ordered triples; no enumeration of all solutions is claimed. -/
theorem three_distinct_solutions_for_3 :
    (1 : Int) ^ 3 + 1 ^ 3 + 1 ^ 3 = 3 ∧
    (4 : Int) ^ 3 + 4 ^ 3 + (-5) ^ 3 = 3 ∧
    (569936821221962380720 : Int) ^ 3 + (-569936821113563493509) ^ 3 +
      (-472715493453327032) ^ 3 = 3 ∧
    (1 : Int) ≠ 4 ∧ (1 : Int) ≠ 569936821221962380720 ∧
    (4 : Int) ≠ 569936821221962380720 := by
  decide

end GRWTSK.NumberTheory.DiophantineEquations.SumsOfThreeCubes
