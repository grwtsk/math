import Mathematics.BinaryFrontier.Completion.Core
import Mathlib.Order.Fin.Basic

/-!
# First infeasible boundary on an explicit finite branch

The predicate records infeasibility at one branch index and feasibility at
every earlier index.  Uniqueness is branch-relative.
-/

namespace Mathematics.BinaryFrontier

def FirstInfeasibleOnBranch
    {n : Nat}
    (feasible : Fin n → Prop)
    (index : Fin n) : Prop :=
  ¬ feasible index ∧
    ∀ earlier, earlier < index →
      feasible earlier

theorem firstInfeasibleOnBranch_unique
    {n : Nat}
    {feasible : Fin n → Prop}
    {left right : Fin n}
    (leftFirst :
      FirstInfeasibleOnBranch feasible left)
    (rightFirst :
      FirstInfeasibleOnBranch feasible right) :
    left = right := by
  apply le_antisymm
  · by_contra leftNotLeRight
    have rightLtLeft : right < left :=
      lt_of_not_ge leftNotLeRight
    exact rightFirst.1
      (leftFirst.2 right rightLtLeft)
  · by_contra rightNotLeLeft
    have leftLtRight : left < right :=
      lt_of_not_ge rightNotLeLeft
    exact leftFirst.1
      (rightFirst.2 left leftLtRight)

theorem failed_branch_has_unique_first_infeasible_prefix
    {n : Nat}
    {feasible : Fin n → Prop}
    (existsFirst :
      ∃ index, FirstInfeasibleOnBranch feasible index) :
    ∃! index,
      FirstInfeasibleOnBranch feasible index := by
  obtain ⟨index, indexFirst⟩ := existsFirst
  exact ⟨index, indexFirst, fun other otherFirst =>
    firstInfeasibleOnBranch_unique
      otherFirst indexFirst⟩

end Mathematics.BinaryFrontier
