/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover

/-!
# Terminal trimming and rooted prefix exactness

Keep only states that can finish at a marked vertex. Rooted paths in this
restriction are exactly the extendible prefixes of the terminal language.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

variable {V A : Type*}

def TerminalAccepted (G : LabeledGraph V A) (root : V) (marked : V → Prop)
    (word : List A) : Prop :=
  ∃ endState, WordPath G root word endState ∧ marked endState

def CanFinish (G : LabeledGraph V A) (marked : V → Prop) (v : V) : Prop :=
  ∃ suffix, TerminalAccepted G v marked suffix

def terminalTrim (G : LabeledGraph V A) (marked : V → Prop) :
    LabeledGraph {v : V // CanFinish G marked v} A where
  edge u label v := G.edge u.val label v.val

theorem terminalTrim_path_project {G : LabeledGraph V A} {marked : V → Prop}
    {u v : {v : V // CanFinish G marked v}} {word : List A}
    (p : WordPath (terminalTrim G marked) u word v) :
    WordPath G u.val word v.val := by
  induction p with
  | nil _ => exact .nil _
  | cons a word edge _ ih => exact .cons a word edge ih

theorem terminalTrim_path_lift {G : LabeledGraph V A} {marked : V → Prop}
    {u v : V} {word : List A} (p : WordPath G u word v)
    (hu : CanFinish G marked u) (hv : CanFinish G marked v) :
    WordPath (terminalTrim G marked) ⟨u, hu⟩ word ⟨v, hv⟩ := by
  induction p with
  | nil _ => exact .nil _
  | cons a word edge tail ih =>
    obtain ⟨suffix, endState, finish, hmarked⟩ := hv
    have ht : CanFinish G marked _ :=
      ⟨word ++ suffix, endState, wordPath_append tail finish, hmarked⟩
    exact .cons a word
      (show (terminalTrim G marked).edge ⟨_, hu⟩ a ⟨_, ht⟩ from edge)
      (ih ht ⟨suffix, endState, finish, hmarked⟩)

/-- No reachability or minimum-size hypothesis is needed to trim the graph. -/
theorem terminalTrim_rooted_iff {G : LabeledGraph V A} {marked : V → Prop}
    {root : V} (hroot : CanFinish G marked root) (word : List A) :
    (∃ v, WordPath (terminalTrim G marked) ⟨root, hroot⟩ word v) ↔
      ∃ suffix, TerminalAccepted G root marked (word ++ suffix) := by
  constructor
  · rintro ⟨⟨v, suffix, endState, finish, hmarked⟩, p⟩
    exact ⟨suffix, endState, wordPath_append (terminalTrim_path_project p) finish, hmarked⟩
  · rintro ⟨suffix, endState, path, hmarked⟩
    obtain ⟨v, pre, post⟩ := wordPath_split_append G word suffix path
    have hv : CanFinish G marked v := ⟨suffix, endState, post, hmarked⟩
    exact ⟨⟨v, hv⟩, terminalTrim_path_lift pre hroot hv⟩

/-- For a single terminal word the trim accepts exactly its prefixes. -/
theorem terminalTrim_singleton_prefix {G : LabeledGraph V A} {marked : V → Prop}
    {root : V} {haltingWord : List A}
    (hexact : ∀ w, TerminalAccepted G root marked w ↔ w = haltingWord)
    (word : List A) :
    (∃ v, WordPath (terminalTrim G marked)
      ⟨root, haltingWord, (hexact haltingWord).mpr rfl⟩ word v) ↔
      ∃ suffix, word ++ suffix = haltingWord := by
  have hroot : CanFinish G marked root := ⟨haltingWord, (hexact haltingWord).mpr rfl⟩
  exact (terminalTrim_rooted_iff hroot word).trans
    (exists_congr fun suffix => hexact (word ++ suffix))

/-- A reachable positive-length loop that can finish would create a second
terminal word. This applies to 95-step loops by their positive length. -/
theorem no_positive_terminal_loop {G : LabeledGraph V A} {marked : V → Prop}
    {root v : V} {haltingWord pre loop : List A}
    (hexact : ∀ w, TerminalAccepted G root marked w ↔ w = haltingWord)
    (arrive : WordPath G root pre v) (cycle : WordPath G v loop v)
    (hlength : 0 < loop.length) (finishable : CanFinish G marked v) : False := by
  obtain ⟨suffix, z, finish, hz⟩ := finishable
  have h₁ := (hexact (pre ++ suffix)).mp ⟨z, wordPath_append arrive finish, hz⟩
  have h₂ := (hexact (pre ++ (loop ++ suffix))).mp
    ⟨z, wordPath_append arrive (wordPath_append cycle finish), hz⟩
  have h := congrArg List.length (h₁.trans h₂.symm)
  simp only [List.length_append] at h
  omega

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
