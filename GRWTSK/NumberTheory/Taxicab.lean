/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Lean.Elab.Tactic.Omega

/-!
# Positive-cube representations and the least taxicab number

Source: Numberphile, *1729 and Taxi Cabs* (2012), featuring James Grime
and Roger Bowley, https://www.numberphile.com/videos/1729-and-taxi-cabs.
The original witness theorems were checked at math b419756ab253.
The new minimality proof separates a finite uniqueness calculation from its
universal bounding argument. Its compilation, fresh kernel checking and
transitive axiom audits are NOT_RUN until a matching successor receipt exists.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.Taxicab

/-- Two different increasing positive pairs exclude reordered duplicates. -/
def HasTwoRepresentations (n : Nat) : Prop :=
  ∃ a b c d : Nat, 0 < a ∧ a < b ∧ 0 < c ∧ c < d ∧
    (a, b) ≠ (c, d) ∧ a ^ 3 + b ^ 3 = n ∧ c ^ 3 + d ^ 3 = n

/-- The ordinary positive-cube question also allows equal summands within a pair.
Nondecreasing order identifies reordered copies without excluding diagonal pairs. -/
def HasTwoPositiveRepresentations (n : Nat) : Prop :=
  ∃ a b c d : Nat, 0 < a ∧ a ≤ b ∧ 0 < c ∧ c ≤ d ∧
    (a, b) ≠ (c, d) ∧ a ^ 3 + b ^ 3 = n ∧ c ^ 3 + d ^ 3 = n

theorem identity_1729_first : (1 : Nat) ^ 3 + 12 ^ 3 = 1729 := by decide

theorem identity_1729_second : (9 : Nat) ^ 3 + 10 ^ 3 = 1729 := by decide

theorem two_representations_1729 : HasTwoRepresentations 1729 := by
  refine ⟨1, 12, 9, 10, ?_⟩
  decide

/-- A finite kernel-reducible check, used only after proving universal bounds. -/
private theorem small_pairs_unique :
    ∀ a b c d : Fin 12, 0 < a.val → a.val ≤ b.val →
      0 < c.val → c.val ≤ d.val →
      a.val ^ 3 + b.val ^ 3 = c.val ^ 3 + d.val ^ 3 →
      a.val = c.val ∧ b.val = d.val := by
  decide

theorem strict_to_positive (n : Nat) (h : HasTwoRepresentations n) :
    HasTwoPositiveRepresentations n := by
  obtain ⟨a, b, c, d, ha, hab, hc, hcd, hne, hs1, hs2⟩ := h
  exact ⟨a, b, c, d, ha, Nat.le_of_lt hab, hc, Nat.le_of_lt hcd, hne, hs1, hs2⟩

/-- Positivity forces each second summand below twelve whenever the sum is
below 1729. This supplies the bridge from arbitrary naturals to the finite check. -/
theorem positive_cube_pair_upper_bound (a b n : Nat) (ha : 0 < a)
    (hn : n < 1729) (hs : a ^ 3 + b ^ 3 = n) : b < 12 := by
  have ha1 : 1 ≤ a := by omega
  have hapow := Nat.pow_le_pow_left ha1 3
  have hone : (1 : Nat) ^ 3 = 1 := by decide
  rw [hone] at hapow
  by_cases hb : b < 12
  · exact hb
  · have hb12 : 12 ≤ b := by omega
    have hbpow := Nat.pow_le_pow_left hb12 3
    have htwelve : (12 : Nat) ^ 3 = 1728 := by decide
    rw [htwelve] at hbpow
    omega

theorem not_two_positive_representations_below (n : Nat) (hn : n < 1729) :
    ¬ HasTwoPositiveRepresentations n := by
  rintro ⟨a, b, c, d, ha, hab, hc, hcd, hne, hs1, hs2⟩
  have hb := positive_cube_pair_upper_bound a b n ha hn hs1
  have hd := positive_cube_pair_upper_bound c d n hc hn hs2
  have ha12 : a < 12 := by omega
  have hc12 : c < 12 := by omega
  have heq : a ^ 3 + b ^ 3 = c ^ 3 + d ^ 3 := hs1.trans hs2.symm
  have pairs := small_pairs_unique ⟨a, ha12⟩ ⟨b, hb⟩ ⟨c, hc12⟩ ⟨d, hd⟩
    ha hab hc hcd heq
  have hac : a = c := pairs.1
  have hbd : b = d := pairs.2
  apply hne
  cases hac
  cases hbd
  rfl

/-- The two displayed representations attain the universal minimum. -/
theorem least_two_cube_sum : HasTwoPositiveRepresentations 1729 ∧
    ∀ n : Nat, HasTwoPositiveRepresentations n → 1729 ≤ n := by
  refine ⟨strict_to_positive 1729 two_representations_1729, ?_⟩
  intro n h
  by_cases hn : 1729 ≤ n
  · exact hn
  · have hsmall : n < 1729 := by omega
    exact False.elim (not_two_positive_representations_below n hsmall h)

end GRWTSK.NumberTheory.DiophantineEquations.Taxicab
