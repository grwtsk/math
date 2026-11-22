/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTerminalPrefixTrim

/-!
# Length progression from a terminal-compatible cycle

A cycle contributes an arithmetic progression to the accepted lengths only
when it can be entered from the root and followed by a terminal path.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

variable {V A : Type*}

private theorem repeat_cycle {G : LabeledGraph V A} {v : V} {cycle : List A}
    (loop : WordPath G v cycle v) (k : ℕ) :
    WordPath G v (List.flatten (List.replicate k cycle)) v := by
  induction k with
  | zero => exact .nil v
  | succ k ih =>
    simpa only [List.replicate_succ, List.flatten_cons] using wordPath_append loop ih

/-- The precise progression includes the unpumped terminal length at k=0. -/
theorem terminal_lengths_of_cycle {G : LabeledGraph V A} {marked : V → Prop}
    {root v : V} {pre cycle : List A}
    (arrive : WordPath G root pre v) (loop : WordPath G v cycle v)
    (finishable : CanFinish G marked v) :
    ∃ base : ℕ, ∀ k : ℕ, ∃ w, TerminalAccepted G root marked w ∧
      w.length = base + k * cycle.length := by
  obtain ⟨suffix, terminal, finish, mark⟩ := finishable
  refine ⟨pre.length + suffix.length, fun k => ?_⟩
  refine ⟨pre ++ (List.flatten (List.replicate k cycle) ++ suffix),
    ⟨terminal, wordPath_append arrive (wordPath_append (repeat_cycle loop k) finish), mark⟩, ?_⟩
  have hlen : (List.flatten (List.replicate k cycle)).length = k * cycle.length := by
    induction k with
    | zero => simp
    | succ k ih => simp [List.replicate_succ, ih, Nat.succ_mul, Nat.add_comm]
  simp only [List.length_append, hlen]
  omega

/-- Bounded accepted lengths exclude every positive reachable cycle that
can finish, even if the terminal language has more than one word. -/
theorem no_terminal_cycle_of_bounded_lengths {G : LabeledGraph V A}
    {marked : V → Prop} {root v : V} {pre cycle : List A} {bound : ℕ}
    (bounded : ∀ w, TerminalAccepted G root marked w → w.length ≤ bound)
    (arrive : WordPath G root pre v) (loop : WordPath G v cycle v)
    (positive : 0 < cycle.length) (finishable : CanFinish G marked v) : False := by
  obtain ⟨base, h⟩ := terminal_lengths_of_cycle arrive loop finishable
  obtain ⟨word, accepted, len⟩ := h (bound + 1)
  have hproduct := Nat.mul_le_mul_left (bound + 1) (show 1 ≤ cycle.length from positive)
  rw [Nat.mul_one] at hproduct
  have hbound := bounded word accepted
  omega

/-- One marked full-shift vertex admits the genuine 95-step graph return.
Its terminal language has no length bound. -/
theorem fullShift_terminal_return95_control :
    WordPath (fullShiftGraph Bool) () (List.replicate 95 true) () ∧
      ∀ n : ℕ, ∃ word, TerminalAccepted (fullShiftGraph Bool) () (fun _ => True) word ∧
        word.length = n := by
  refine ⟨fullShiftGraph_path_all _, fun n => ?_⟩
  exact ⟨List.replicate n true, ⟨(), fullShiftGraph_path_all _, trivial⟩,
    List.length_replicate⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
