/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Range

set_option autoImplicit false

/-!
# Bounded predicate witnesses

Exact counts over `0 <= n <= X` and over `B < n <= X`. These finite
identities neither prove an unbounded witness supplier nor identify a
candidate predicate with an arithmetic predicate. Source draft for #258;
direct elaboration and transitive trust audit have not been performed.
-/

namespace GRWTSK.Combinatorics.Enumerative.BoundedWitnesses

/-- Count distinct natural-number witnesses through an inclusive cutoff. -/
def count (P : ℕ → Prop) [DecidablePred P] (X : ℕ) : ℕ :=
  ((Finset.range (X + 1)).filter P).card

/-- Positivity has exactly the announced finite existential meaning. -/
theorem count_pos_iff (P : ℕ → Prop) [DecidablePred P] (X : ℕ) :
    0 < count P X ↔ ∃ n, n ≤ X ∧ P n := by
  rw [count, Finset.card_pos]
  constructor
  · rintro ⟨n, hn⟩
    rcases Finset.mem_filter.mp hn with ⟨hcut, hP⟩
    exact ⟨n, Nat.lt_succ_iff.mp (Finset.mem_range.mp hcut), hP⟩
  · rintro ⟨n, hn, hP⟩
    exact ⟨n, Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hn), hP⟩⟩

/-- Increasing the inclusive cutoff does not lose any witness. -/
theorem count_mono_cutoff (P : ℕ → Prop) [DecidablePred P]
    {X Y : ℕ} (hXY : X ≤ Y) : count P X ≤ count P Y := by
  unfold count
  apply Finset.card_le_card
  intro n hn
  rcases Finset.mem_filter.mp hn with ⟨hcut, hP⟩
  have hnX : n ≤ X := Nat.lt_succ_iff.mp (Finset.mem_range.mp hcut)
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_range.mpr (Nat.lt_succ_iff.mpr (hnX.trans hXY)), hP⟩

/-- Predicate inclusion transports a lower count to an upper count, not conversely. -/
theorem count_mono_predicate (P Q : ℕ → Prop) [DecidablePred P] [DecidablePred Q]
    (X : ℕ) (hPQ : ∀ n, P n → Q n) : count P X ≤ count Q X := by
  unfold count
  apply Finset.card_le_card
  intro n hn
  rcases Finset.mem_filter.mp hn with ⟨hcut, hP⟩
  exact Finset.mem_filter.mpr ⟨hcut, hPQ n hP⟩

/-- Only agreement on the complete finite domain is needed for equal finite counts. -/
theorem count_congr_on (P Q : ℕ → Prop) [DecidablePred P] [DecidablePred Q]
    (X : ℕ) (hPQ : ∀ n, n ≤ X → (P n ↔ Q n)) : count P X = count Q X := by
  unfold count
  apply congrArg Finset.card
  apply Finset.ext
  intro n
  constructor
  · intro hn
    rcases Finset.mem_filter.mp hn with ⟨hcut, hP⟩
    have hnX : n ≤ X := Nat.lt_succ_iff.mp (Finset.mem_range.mp hcut)
    exact Finset.mem_filter.mpr ⟨hcut, (hPQ n hnX).mp hP⟩
  · intro hn
    rcases Finset.mem_filter.mp hn with ⟨hcut, hQ⟩
    have hnX : n ≤ X := Nat.lt_succ_iff.mp (Finset.mem_range.mp hcut)
    exact Finset.mem_filter.mpr ⟨hcut, (hPQ n hnX).mpr hQ⟩

/-- The lower cutoff is strict; the upper cutoff is inclusive. -/
def tailCount (P : ℕ → Prop) [DecidablePred P] (B X : ℕ) : ℕ :=
  count (fun n => B < n ∧ P n) X

/-- A positive tail count produces a genuinely new witness above `B`. -/
theorem tailCount_pos_iff (P : ℕ → Prop) [DecidablePred P] (B X : ℕ) :
    0 < tailCount P B X ↔ ∃ n, B < n ∧ n ≤ X ∧ P n := by
  rw [tailCount, count_pos_iff]
  constructor
  · rintro ⟨n, hnX, hnB, hP⟩
    exact ⟨n, hnB, hnX, hP⟩
  · rintro ⟨n, hnB, hnX, hP⟩
    exact ⟨n, hnX, hnB, hP⟩

/-- The exact unbounded-witness quantifier on the natural-number source. -/
def UnboundedWitnesses (P : ℕ → Prop) : Prop :=
  ∀ B, ∃ n, B < n ∧ P n

/-- Infinitely advancing witnesses require positive tails for every lower cutoff. -/
theorem unbounded_iff_positive_tailCounts (P : ℕ → Prop) [DecidablePred P] :
    UnboundedWitnesses P ↔ ∀ B, ∃ X, 0 < tailCount P B X := by
  constructor
  · intro h B
    rcases h B with ⟨n, hnB, hP⟩
    exact ⟨n, (tailCount_pos_iff P B n).mpr ⟨n, hnB, le_rfl, hP⟩⟩
  · intro h B
    rcases h B with ⟨X, hX⟩
    rcases (tailCount_pos_iff P B X).mp hX with ⟨n, hnB, _, hP⟩
    exact ⟨n, hnB, hP⟩

end GRWTSK.Combinatorics.Enumerative.BoundedWitnesses
