/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicWordMatrix
import Mathlib.Data.Fintype.Pigeonhole
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Sharp finite-state periodic-word macro-boundary pigeonhole

An ORIGINAL path labeled by q exact copies of one finite word,
where q = card(State), can be regarded as a q-step walk on a macro
graph with one Unit letter and an ACTUAL original WordPath as its edge.

Every q-step macro walk has q+1 indexed boundary states. The
pinned Fintype pigeonhole theorem yields two equal state values.
The subwalk between them has length k with 1 <= k <= q.
Expanding its original word-labelled macro edges returns an ACTUAL
closed original WordPath of k literal copies of that same word.

The proof targets the ORIGINAL FiniteStateBlockBoundaryPigeonhole Prop
without assuming the separately open word-matrix-power criterion,
faithful graph labeling, complete same-period lifts, or RH.
Compilation, fresh trust=0 kernel, expected interfaces, and complete
axiom audits remain NOT_RUN.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMacroBoundaryPigeonhole

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The macro edge is exactly the OLD source graph's entire word path.
Unit contributes no invented symbol or observation of G. -/
private def wordMacroGraph
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    LabeledGraph State Unit where
  edge := fun s _ t => WordPath G s word t

/-- A q-block original path gives a q-step proof-carrying macro walk.
Peeling one literal suffix word uses the ORIGINAL wordPath_split_append. -/
private theorem macroWalk_of_finiteCopies
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    ∀ (n : ℕ) {s t : State},
      WordPath G s (finiteCopies word n) t →
        LabeledWalkData (wordMacroGraph G word) n s t := by
  intro n
  induction n with
  | zero =>
      intro s t h
      change WordPath G s [] t at h
      cases h with
      | nil s =>
          exact LabeledWalkData.nil s
  | succ n ih =>
      intro s t h
      change WordPath G s (finiteCopies word n ++ word) t at h
      obtain ⟨middle, hprefix, htail⟩ :=
        wordPath_split_append G (finiteCopies word n) word h
      exact LabeledWalkData.snoc (ih hprefix) () htail

/-- A macro n-walk expands to the SAME original word repeated n times.
We preserve every actual macro edge's original WordPath proof. -/
private theorem originalPath_of_macroWalk
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    ∀ {n : ℕ} {s t : State},
      LabeledWalkData (wordMacroGraph G word) n s t →
        WordPath G s (finiteCopies word n) t := by
  intro n s t p
  induction p with
  | nil s =>
      exact WordPath.nil s
  | snoc prefix letter hedge ih =>
      cases letter
      exact wordPath_append ih hedge

/-- Every original macro walk carries an indexed list of ALL q+1
boundary states. All q indexed edge proofs are genuine macro edges. -/
private structure IndexedMacroWalk
    (H : LabeledGraph State Unit) {n : ℕ} {s t : State}
    (p : LabeledWalkData H n s t) where
  states : Fin (n + 1) → State
  start : states 0 = s
  finish : states (Fin.last n) = t
  edgeAt : ∀ i : Fin n, H.edge (states i.castSucc) () (states i.succ)

/-- The original snoc constructors determine an indexed macro walk.
No nondeterministic split is chosen anew at each boundary. -/
private def indexMacroWalk (H : LabeledGraph State Unit) :
    {n : ℕ} → {s t : State} →
      (p : LabeledWalkData H n s t) → IndexedMacroWalk H p
  | _, _, _, .nil s =>
      { states := fun _ => s
        start := rfl
        finish := rfl
        edgeAt := by
          intro i
          exact Fin.elim0 i }
  | _ + 1, _, t, .snoc prefix letter hedge =>
      let old := indexMacroWalk H prefix
      { states := Fin.snoc old.states t
        start := by simpa only [Fin.snoc_castSucc] using old.start
        finish := by simp only [Fin.snoc_last]
        edgeAt := by
          intro i
          cases letter
          refine Fin.lastCases ?_ (fun j => ?_) i
          · simpa only [Fin.snoc_castSucc, Fin.snoc_last,
              Fin.succ_last, old.finish] using hedge
          · simpa only [Fin.snoc_castSucc, Fin.succ_castSucc]
              using old.edgeAt j }

/-- Genuine original macro subwalk from a chosen boundary i to i+k.
This is the key source-exact extraction used after pigeonhole. -/
private theorem segmentOfIndexed
    (H : LabeledGraph State Unit) {n : ℕ} {s t : State}
    (p : LabeledWalkData H n s t) (b : IndexedMacroWalk H p)
    (i k : ℕ) (hik : i + k ≤ n) :
    LabeledWalkData H k
      (b.states ⟨i, by omega⟩)
      (b.states ⟨i + k, by omega⟩) := by
  induction k generalizing hik with
  | zero =>
      simpa only [Nat.add_zero] using
        (LabeledWalkData.nil (b.states ⟨i, by omega⟩))
  | succ k ih =>
      have hprev := ih (by omega)
      have hed := b.edgeAt (⟨i + k, by omega⟩ : Fin n)
      have hlast : H.edge (b.states ⟨i + k, by omega⟩) ()
          (b.states ⟨i + (k + 1), by omega⟩) := by
        simpa [Fin.castSucc, Fin.succ, Nat.add_assoc] using hed
      exact LabeledWalkData.snoc hprev () hlast

/-- Pigeonhole on the ACTUAL q+1 state sequence gives a nonempty
closed subwalk with at most q macro steps, for every finite graph. -/
private theorem shortClosedMacroSegment
    (H : LabeledGraph State Unit) {s t : State}
    (p : LabeledWalkData H (Fintype.card State) s t) :
    ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
      ∃ vertex : State, LabeledWalkData H k vertex vertex := by
  classical
  let b := indexMacroWalk H p
  obtain ⟨i, j, hne, heq⟩ :=
    Fintype.exists_ne_map_eq_of_card_lt b.states
      (by simp)
  have hval : (i : ℕ) ≠ (j : ℕ) := by
    intro h
    exact hne (Fin.ext h)
  by_cases hij : (i : ℕ) < (j : ℕ)
  · let k : ℕ := (j : ℕ) - (i : ℕ)
    have hkpos : 0 < k := by dsimp [k]; omega
    have hkle : k ≤ Fintype.card State := by
      dsimp [k]
      have hj := j.isLt
      omega
    have hbound : (i : ℕ) + k ≤ Fintype.card State := by
      dsimp [k]
      have hj := j.isLt
      omega
    have hsum : (i : ℕ) + k = (j : ℕ) := by dsimp [k]; omega
    have hseg : LabeledWalkData H k (b.states i) (b.states j) := by
      simpa only [hsum] using (segmentOfIndexed H p b (i : ℕ) k hbound)
    have hclosed : LabeledWalkData H k (b.states i) (b.states i) := by
      rw [← heq] at hseg
      exact hseg
    exact ⟨k, hkpos, hkle, b.states i, hclosed⟩
  · have hji : (j : ℕ) < (i : ℕ) := by omega
    let k : ℕ := (i : ℕ) - (j : ℕ)
    have hkpos : 0 < k := by dsimp [k]; omega
    have hkle : k ≤ Fintype.card State := by
      dsimp [k]
      have hi := i.isLt
      omega
    have hbound : (j : ℕ) + k ≤ Fintype.card State := by
      dsimp [k]
      have hi := i.isLt
      omega
    have hsum : (j : ℕ) + k = (i : ℕ) := by dsimp [k]; omega
    have hseg : LabeledWalkData H k (b.states j) (b.states i) := by
      simpa only [hsum] using (segmentOfIndexed H p b (j : ℕ) k hbound)
    have hclosed : LabeledWalkData H k (b.states j) (b.states j) := by
      rw [heq] at hseg
      exact hseg
    exact ⟨k, hkpos, hkle, b.states j, hclosed⟩

/-- Full unconditional SOURCE PROOF CANDIDATE for the ALREADY NAMED
sharp macro-boundary proposition in SoficPeriodicWordMatrix.lean.
No new mathematical axiom or period-lift injectivity assumed. -/
theorem finiteStateBlockBoundaryPigeonhole_proof
    (G : LabeledGraph State Alphabet) :
    FiniteStateBlockBoundaryPigeonhole G := by
  intro word hgraph
  obtain ⟨start, finish, hpath⟩ := hgraph
  have hmacro :
      LabeledWalkData (wordMacroGraph G word)
        (Fintype.card State) start finish :=
    macroWalk_of_finiteCopies G word (Fintype.card State) hpath
  obtain ⟨k, hk, hkle, vertex, hcycle⟩ :=
    shortClosedMacroSegment (wordMacroGraph G word) hmacro
  exact ⟨k, hk, hkle, vertex,
    originalPath_of_macroWalk G word hcycle⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMacroBoundaryPigeonhole
