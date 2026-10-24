import Mathlib.Data.Finset.Powerset
import Mathlib.Tactic
import Mathlib.Data.Setoid.Basic

/-!
# The equivalence lattice of literal divisor observations

The kernel lives on the actual arithmetic inventory. Union of observations is
meet of equivalences; join is only bounded by observation intersection. This
uses the full equivalence lattice, and makes no congruence-exhaustion claim about
prescribed arithmetic moves.

Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier
/-- Literal disclosed divisibility data; the review adapter bridge is separate. -/
def divisorPattern (S : Finset ℕ) (n : ℕ) : Finset ℕ := S.filter (fun d => d ∣ n)

/-- Forget newly disclosed probes by intersection. -/
def restrictPattern (S p : Finset ℕ) : Finset ℕ := p ∩ S

/-- Restriction retains the exact divisibility observations. -/
theorem divisorPattern_restrict {S T : Finset ℕ} (hST : S ⊆ T) (n : ℕ) :
    restrictPattern S (divisorPattern T n) = divisorPattern S n := by
  classical
  ext d
  simp only [restrictPattern, divisorPattern, Finset.mem_inter, Finset.mem_filter]
  constructor
  · rintro ⟨⟨_, hd⟩, hdS⟩
    exact ⟨hdS, hd⟩
  · rintro ⟨hdS, hd⟩
    exact ⟨⟨hST hdS, hd⟩, hdS⟩

/-- Equality of disclosed patterns on the retained inventory. -/
def observation (I S : Finset ℕ) : Setoid ↥I :=
  Setoid.ker (fun n : ↥I => divisorPattern S n)

/-- A union of observations retains both full patterns. -/
theorem divisorPattern_union (S T : Finset ℕ) (n : ℕ) :
    divisorPattern (S ∪ T) n = divisorPattern S n ∪ divisorPattern T n := by
  classical
  ext d
  simp [divisorPattern, or_and_right]

/-- Pattern equality at a union is exactly simultaneous equality at each probe set. -/
theorem union_pattern_eq_iff (S T : Finset ℕ) (m n : ℕ) :
    divisorPattern (S ∪ T) m = divisorPattern (S ∪ T) n ↔
      divisorPattern S m = divisorPattern S n ∧ divisorPattern T m = divisorPattern T n := by
  constructor
  · intro h
    constructor
    · have hr := congrArg (restrictPattern S) h
      simpa only [divisorPattern_restrict Finset.subset_union_left] using hr
    · have hr := congrArg (restrictPattern T) h
      simpa only [divisorPattern_restrict Finset.subset_union_right] using hr
  · rintro ⟨hS, hT⟩
    simp only [divisorPattern_union, hS, hT]

/-- Divisor disclosure union is meet in the full equivalence lattice. -/
theorem observation_union (I S T : Finset ℕ) :
    observation I (S ∪ T) = observation I S ⊓ observation I T := by
  apply Setoid.ext
  intro m n
  exact union_pattern_eq_iff S T m n

/-- Additional probes can only refine the equivalence relation. -/
theorem observation_antitone (I : Finset ℕ) {S T : Finset ℕ} (hST : S ⊆ T) :
    observation I T ≤ observation I S := by
  intro m n h
  change divisorPattern T m = divisorPattern T n at h
  change divisorPattern S m = divisorPattern S n
  have hr := congrArg (restrictPattern S) h
  simpa only [divisorPattern_restrict hST] using hr

/-- Equivalence join need not be attained by intersection of probes. -/
theorem observation_sup_le_inter (I S T : Finset ℕ) :
    observation I S ⊔ observation I T ≤ observation I (S ∩ T) :=
  sup_le (observation_antitone I Finset.inter_subset_left)
    (observation_antitone I Finset.inter_subset_right)

private theorem observation_two_bot : observation {2, 3} {2} = ⊥ := by
  apply Setoid.ext
  intro m n
  constructor
  · intro h
    apply Subtype.ext
    have hm : (m : ℕ) = 2 ∨ (m : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using m.property
    have hn : (n : ℕ) = 2 ∨ (n : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using n.property
    change divisorPattern {2} m = divisorPattern {2} n at h
    rcases hm with hm | hm <;> rcases hn with hn | hn
    · exact hm.trans hn.symm
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 2
      norm_num [divisorPattern] at hh
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 2
      norm_num [divisorPattern] at hh
    · exact hm.trans hn.symm
  · intro h
    change divisorPattern {2} m = divisorPattern {2} n
    change m = n at h
    exact congrArg (fun i : ↥({2, 3} : Finset ℕ) => divisorPattern {2} i) h

private theorem observation_three_bot : observation {2, 3} {3} = ⊥ := by
  apply Setoid.ext
  intro m n
  constructor
  · intro h
    apply Subtype.ext
    have hm : (m : ℕ) = 2 ∨ (m : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using m.property
    have hn : (n : ℕ) = 2 ∨ (n : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using n.property
    change divisorPattern {3} m = divisorPattern {3} n at h
    rcases hm with hm | hm <;> rcases hn with hn | hn
    · exact hm.trans hn.symm
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 3
      norm_num [divisorPattern] at hh
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 3
      norm_num [divisorPattern] at hh
    · exact hm.trans hn.symm
  · intro h
    change divisorPattern {3} m = divisorPattern {3} n
    change m = n at h
    exact congrArg (fun i : ↥({2, 3} : Finset ℕ) => divisorPattern {3} i) h

/-- Both singleton probes already separate 2 and 3; their intersection separates neither. -/
theorem strict_observation_join :
    observation {2, 3} {2} ⊔ observation {2, 3} {3} <
      observation {2, 3} ({2} ∩ {3}) := by
  rw [observation_two_bot, observation_three_bot, sup_idem]
  refine lt_of_le_of_ne bot_le ?_
  intro h
  have hh : observation {2, 3} ({2} ∩ {3})
      ⟨2, by simp⟩ ⟨3, by simp⟩ := by
    change divisorPattern ({2} ∩ {3}) 2 = divisorPattern ({2} ∩ {3}) 3
    norm_num [divisorPattern]
  rw [← h] at hh
  have : (2 : ℕ) = 3 := congrArg Subtype.val hh
  norm_num at this

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier
