/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Card
import Mathlib.Tactic.Order

/-!+# Finite quorum and strict-majority arithmetic

These definitions concern finite counts only. A quorum threshold is an explicit
parameter. A strict majority compares affirmative and negative votes, excluding
abstentions. The theorems do not establish voter eligibility, human authority,
procedural validity, or permission to act on a result.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteVoting

def HasQuorum (threshold present : ℕ) : Prop := threshold ≤ present

def StrictMajority (affirmative negative : ℕ) : Prop := negative < affirmative

theorem quorum_monotone (threshold present additional : ℕ)
    (h : HasQuorum threshold present) : HasQuorum threshold (present + additional) := by
  unfold HasQuorum at *
  omega

theorem majority_iff_twice (affirmative negative : ℕ) :
    StrictMajority affirmative negative ↔ affirmative + negative < 2 * affirmative := by
  unfold StrictMajority
  omega

theorem majority_iff_threshold (affirmative negative : ℕ) :
    StrictMajority affirmative negative ↔
      (affirmative + negative) / 2 + 1 ≤ affirmative := by
  unfold StrictMajority
  omega

theorem tie_not_majority (count : ℕ) : ¬ StrictMajority count count := by
  unfold StrictMajority
  omega

theorem opposing_majorities_impossible (affirmative negative : ℕ) :
    ¬ (StrictMajority affirmative negative ∧ StrictMajority negative affirmative) := by
  unfold StrictMajority
  omega

theorem empty_vote_not_majority : ¬ StrictMajority 0 0 := tie_not_majority 0

/-- Abstentions contribute to attendance, but not to votes cast. -/
def Attendance (affirmative negative abstentions : ℕ) : ℕ :=
  affirmative + negative + abstentions

theorem attendance_bounds_cast_votes (affirmative negative abstentions : ℕ) :
    affirmative + negative ≤ Attendance affirmative negative abstentions := by
  unfold Attendance
  omega

theorem quorum_and_majority_iff (threshold affirmative negative abstentions : ℕ) :
    (HasQuorum threshold (Attendance affirmative negative abstentions) ∧
      StrictMajority affirmative negative) ↔
      (threshold ≤ affirmative + negative + abstentions ∧ negative < affirmative) := by
  rfl

/-- Two subsets each containing more than half of a common finite electorate
must intersect. This is an intersection theorem, not a consensus protocol. -/
theorem majority_subsets_intersect {α : Type*} [DecidableEq α]
    (electorate first second : Finset α) (hfirst : first ⊆ electorate)
    (hsecond : second ⊆ electorate)
    (hmajority_first : electorate.card < 2 * first.card)
    (hmajority_second : electorate.card < 2 * second.card) :
    (first ∩ second).Nonempty := by
  have hunion : (first ∪ second).card ≤ electorate.card :=
    Finset.card_le_card (Finset.union_subset hfirst hsecond)
  have hcard := Finset.card_union_add_card_inter first second
  have hpositive : 0 < (first ∩ second).card := by omega
  exact Finset.card_pos.mp hpositive

end GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteVoting
