/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Tactic.NormNum

/-!
# Two distinct positive-cube representations of 1729

Source: Numberphile, *1729 and Taxi Cabs* (2012), featuring James Grime
and Roger Bowley, https://www.numberphile.com/videos/1729-and-taxi-cabs.
The witnesses below do not establish the minimality of 1729.
Compilation, fresh kernel replay and transitive axiom auditing are NOT_RUN.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.Taxicab

/-- Two different increasing positive pairs exclude reordered duplicates. -/
def HasTwoRepresentations (n : ℕ) : Prop :=
  ∃ a b c d : ℕ, 0 < a ∧ a < b ∧ 0 < c ∧ c < d ∧
    (a, b) ≠ (c, d) ∧ a ^ 3 + b ^ 3 = n ∧ c ^ 3 + d ^ 3 = n

theorem identity_1729_first : (1 : ℕ) ^ 3 + 12 ^ 3 = 1729 := by norm_num

theorem identity_1729_second : (9 : ℕ) ^ 3 + 10 ^ 3 = 1729 := by norm_num

theorem two_representations_1729 : HasTwoRepresentations 1729 := by
  refine ⟨1, 12, 9, 10, ?_⟩
  norm_num

end GRWTSK.NumberTheory.DiophantineEquations.Taxicab
