/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95ControlCompression

/-!
# Sharp read depth for write–move separation of Riemann95 control states

The read words are supplied symbolically, as in the full-table exact quotient
test. This measures the longest needed probe, independently of tape reachability.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95ControlCompression

/-- All binary words through the given length. -/
private def wordsThrough : ℕ → List (List (Fin 2))
  | 0 => [[]]
  | n + 1 =>
    let shorter := wordsThrough n
    [] :: shorter.map (0 :: ·) ++ shorter.map (1 :: ·)

private theorem mem_wordsThrough {n : ℕ} {word : List (Fin 2)}
    (h : word.length ≤ n) : word ∈ wordsThrough n := by
  induction n generalizing word with
  | zero =>
    have empty : word = [] := List.length_eq_zero_iff.mp (Nat.eq_zero_of_le_zero h)
    simp [empty, wordsThrough]
  | succ n ih =>
    cases word with
    | nil => simp [wordsThrough]
    | cons bit rest =>
      have shorter : rest ∈ wordsThrough n := ih (by simpa using h)
      have hb : bit = 0 ∨ bit = 1 := by
        have lt := bit.isLt
        apply Or.imp (fun he => Fin.ext he) (fun he => Fin.ext he)
          (show bit.val = 0 ∨ bit.val = 1 by omega)
      rcases hb with rfl | rfl <;> simp [wordsThrough, shorter]

/-- Every binary read word of length at most seven gives identical action
traces from states 80 and 82. -/
theorem traces_eq_80_82_of_length_le_seven {word : List (Fin 2)}
    (h : word.length ≤ 7) :
    actionTrace sourceTable 80 word = actionTrace sourceTable 82 word := by
  have checked : ∀ word ∈ wordsThrough 7,
      actionTrace sourceTable 80 word = actionTrace sourceTable 82 word := by
    decide +kernel
  exact checked word (mem_wordsThrough h)

/-- The eighth read can distinguish the pair by its final write bit. -/
theorem traces_ne_80_82_at_eight :
    actionTrace sourceTable 80 [0, 1, 0, 1, 1, 0, 0, 0] ≠
      actionTrace sourceTable 82 [0, 1, 0, 1, 1, 0, 0, 0] := by
  decide +kernel

/-- A read-depth budget separates the exact table when trace agreement on
all supplied words within that budget forces equality of control states. -/
def SeparatesAtDepth (n : ℕ) : Prop :=
  ∀ q r : Fin 95, (∀ word : List (Fin 2), word.length ≤ n →
    actionTrace sourceTable q word = actionTrace sourceTable r word) → q = r

theorem separatesAtDepth_iff (n : ℕ) : SeparatesAtDepth n ↔ 8 ≤ n := by
  constructor
  · intro separates
    by_contra h
    have same := separates 80 82 fun _ hw =>
      traces_eq_80_82_of_length_le_seven (by omega)
    exact (by decide : (80 : Fin 95) ≠ 82) same
  · intro budget q r agree
    apply fingerprint_injective
    unfold fingerprint
    apply List.map_congr_left
    intro word hword
    apply agree
    have lengthBound : ∀ w ∈ probeWords, (w : List (Fin 2)).length ≤ 8 := by
      decide
    exact (lengthBound word hword).trans budget

/-- Even an arbitrary decoder cannot recover the control state from all
depth-seven write–move traces. -/
theorem no_depthSeven_decoder
    (decode : ({word : List (Fin 2) // word.length ≤ 7} →
      List (Fin 2 × Turing.Dir)) → Fin 95) :
    ¬ ∀ q : Fin 95, decode (fun word => actionTrace sourceTable q word.val) = q := by
  intro recovers
  have same : (fun word : {word : List (Fin 2) // word.length ≤ 7} =>
      actionTrace sourceTable 80 word.val) =
      (fun word => actionTrace sourceTable 82 word.val) :=
    funext fun word => traces_eq_80_82_of_length_le_seven word.property
  have eq := congrArg decode same
  rw [recovers 80, recovers 82] at eq
  exact (by decide : (80 : Fin 95) ≠ 82) eq

end GRWTSK.ComputerScience.Riemann95ControlCompression
