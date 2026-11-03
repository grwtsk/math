/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicRunFullShift
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Periodic state and label streams from actual inductive closed walks

The finite witness is the original LabeledWalkData G n s s. At each snoc
constructor, Fin.snoc extends the state list and the label block with the
ACTUAL terminal state, emitted label and edge proposition. This gives an
indexed state path with its entire original walkDataLabels, not a newly
assumed abstract path. For positive n, the state and label streams are
obtained by repeating the index modulo n. The final finite edge lands at
its original starting state, exactly resolving the modular seam.

This supplies CycleRepetitionsRun G n hn without a new hypothesis and
therefore removes the generic cyclic-label admissibility obligation
from exact graph-language presentations. It neither establishes unique
cycle labels nor same-period lift coverage for arbitrary presentations.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Every original finite walk carries its full indexed states and labels.
The last state is the original endpoint; every edge proof is the source
LabeledGraph.edge, including the last snoc edge. -/
private structure IndexedSourceWalk
    (G : LabeledGraph State Alphabet) {n : ℕ} {s t : State}
    (p : LabeledWalkData G n s t) where
  states : Fin (n + 1) → State
  letters : Fin n → Alphabet
  start : states 0 = s
  finish : states (Fin.last n) = t
  edgeAt : ∀ i : Fin n,
    G.edge (states i.castSucc) (letters i) (states i.succ)
  labels_eq : List.ofFn letters = walkDataLabels G p

/-- Induction on the ORIGINAL nil/snoc walk constructors. The newly
introduced edge and terminal state occupy exactly the last Fin index. -/
private def indexActualWalk (G : LabeledGraph State Alphabet) :
    {n : ℕ} → {s t : State} →
    (p : LabeledWalkData G n s t) → IndexedSourceWalk G p
  | _, _, _, .nil s =>
      { states := fun _ => s
        letters := Fin.elim0
        start := rfl
        finish := rfl
        edgeAt := by
          intro i
          exact Fin.elim0 i
        labels_eq := by simp [walkDataLabels] }
  | _ + 1, _, t, .snoc prefix letter hedge =>
      let old := indexActualWalk G prefix
      { states := Fin.snoc old.states t
        letters := Fin.snoc old.letters letter
        start := by
          simpa only [Fin.snoc_castSucc] using old.start
        finish := by simp only [Fin.snoc_last]
        edgeAt := by
          intro i
          refine Fin.lastCases ?_ (fun j => ?_) i
          · simpa only [Fin.snoc_castSucc, Fin.snoc_last,
              Fin.succ_last, old.finish] using hedge
          · simpa only [Fin.snoc_castSucc, Fin.succ_castSucc] using old.edgeAt j
        labels_eq := by
          calc
            List.ofFn (Fin.snoc old.letters letter) =
                (List.ofFn old.letters).concat letter := by
              rw [List.ofFn_succ']
              simp only [Fin.snoc_castSucc, Fin.snoc_last]
            _ = (walkDataLabels G prefix).concat letter :=
              congrArg (fun w : List Alphabet => w.concat letter) old.labels_eq
            _ = walkDataLabels G (LabeledWalkData.snoc prefix letter hedge) := by
              simp only [List.concat_eq_append, walkDataLabels] }

/-- Re-encoding the original source's Fin-indexed cycle word gives
its original full label list, in original edge order. -/
private theorem ofFn_basedCycleWord_eq_labels
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) :
    List.ofFn (basedCycleWord G n c) = walkDataLabels G c.2 := by
  have h := List.ofFn_congr (walkDataLabels_length G c.2)
    ((walkDataLabels G c.2).get)
  simpa only [basedCycleWord, List.ofFn_get] using h.symm

/-- The explicit Fin label vector of the original walk agrees at
EVERY Fin index with its preexisting basedCycleWord. -/
private theorem indexedLetters_eq_basedCycleWord
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) :
    (indexActualWalk G c.2).letters = basedCycleWord G n c := by
  apply List.ofFn_injective
  calc
    List.ofFn (indexActualWalk G c.2).letters =
        walkDataLabels G c.2 := (indexActualWalk G c.2).labels_eq
    _ = List.ofFn (basedCycleWord G n c) :=
      (ofFn_basedCycleWord_eq_labels G n c).symm

/-- Canonical residue index into one positive-length cycle. -/
private def cycleIndex (n : ℕ) (hn : 0 < n) (k : ℕ) : Fin n :=
  ⟨k % n, Nat.mod_lt k hn⟩

private theorem mod_succ (k n : ℕ) :
    (k + 1) % n = (k % n + 1) % n := by
  calc
    (k + 1) % n = (k % n + 1 % n) % n := Nat.add_mod k 1 n
    _ = (k % n + 1) % n := by
      rw [Nat.add_mod (k % n) 1 n, Nat.mod_mod]

/-- Exact modular-seam lemma. In the interior, the next residue is
i+1; at the final finite edge, it is zero and the original finish
state equals the original start state. -/
private theorem cyclic_edge_of_indexed
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (states : Fin (n + 1) → State) (letters : Fin n → Alphabet)
    (hclose : states 0 = states (Fin.last n))
    (hedges : ∀ i : Fin n,
      G.edge (states i.castSucc) (letters i) (states i.succ))
    (k : ℕ) :
    G.edge (states (cycleIndex n hn k).castSucc)
      (letters (cycleIndex n hn k))
      (states (cycleIndex n hn (k + 1)).castSucc) := by
  let i : Fin n := cycleIndex n hn k
  have hi := hedges i
  by_cases hnext : k % n + 1 < n
  · have hidx : (cycleIndex n hn (k + 1)).castSucc = i.succ := by
      apply Fin.ext
      change (k + 1) % n = k % n + 1
      rw [mod_succ, Nat.mod_eq_of_lt hnext]
    rw [hidx]
    exact hi
  · have hr : k % n < n := Nat.mod_lt k hn
    have hlastval : k % n + 1 = n := by omega
    have hidx : (cycleIndex n hn (k + 1)).castSucc =
        (0 : Fin (n + 1)) := by
      apply Fin.ext
      change (k + 1) % n = 0
      rw [mod_succ, hlastval, Nat.mod_self]
    have hlast : i.succ = Fin.last n := by
      apply Fin.ext
      simpa [i, cycleIndex] using hlastval
    rw [hidx]
    rw [hlast] at hi
    rw [hclose]
    exact hi

/-- The actual infinite periodic state stream, extracted from every
original based cycle, with no independently chosen graph-state run. -/
noncomputable def basedCycleStateStream
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) (k : ℕ) : State :=
  (indexActualWalk G c.2).states (cycleIndex n hn k).castSucc

/-- The actual repeated emitted labels of the indexed source walk. -/
noncomputable def basedCycleLabelStream
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) (k : ℕ) : Alphabet :=
  (indexActualWalk G c.2).letters (cycleIndex n hn k)

/-- At EVERY index, the extracted labels equal the original repeatBlock,
including the last-to-first crossing. -/
theorem basedCycleLabelStream_eq_repeatBlock
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) (k : ℕ) :
    basedCycleLabelStream G n hn c k =
      repeatBlock hn (basedCycleWord G n c) k := by
  unfold basedCycleLabelStream
  rw [indexedLetters_eq_basedCycleWord G n c]
  rfl

/-- The state stream has the actual original starting state at time zero. -/
theorem basedCycleStateStream_zero
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) :
    basedCycleStateStream G n hn c 0 = c.1 := by
  have h := (indexActualWalk G c.2).start
  simpa [basedCycleStateStream, cycleIndex] using h

/-- The extracted graph state stream returns at every multiple of n,
not merely its emitted label sequence. -/
theorem basedCycleStateStream_period
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) (k : ℕ) :
    basedCycleStateStream G n hn c (k + n) =
      basedCycleStateStream G n hn c k := by
  simp [basedCycleStateStream, cycleIndex, Nat.add_mod, Nat.mod_mod]

/-- Source edge preservation at every natural time, including the seam. -/
theorem basedCycleStateStream_edge
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) (k : ℕ) :
    G.edge (basedCycleStateStream G n hn c k)
      (repeatBlock hn (basedCycleWord G n c) k)
      (basedCycleStateStream G n hn c (k + 1)) := by
  have hclose :
      (indexActualWalk G c.2).states 0 =
        (indexActualWalk G c.2).states (Fin.last n) :=
    (indexActualWalk G c.2).start.trans
      (indexActualWalk G c.2).finish.symm
  have hstep := cyclic_edge_of_indexed G n hn
    (indexActualWalk G c.2).states
    (indexActualWalk G c.2).letters hclose
    (indexActualWalk G c.2).edgeAt k
  change G.edge
    ((indexActualWalk G c.2).states (cycleIndex n hn k).castSucc)
    (repeatBlock hn (basedCycleWord G n c) k)
    ((indexActualWalk G c.2).states (cycleIndex n hn (k + 1)).castSucc)
  rw [← basedCycleLabelStream_eq_repeatBlock G n hn c k]
  exact hstep

/-- The formerly explicit CycleRepetitionsRun hypothesis follows for
EVERY original based n-cycle with n>0, from its actual inductive data. -/
theorem cycleRepetitionsRun_of_original_closedWalk
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) :
    CycleRepetitionsRun G n hn := by
  intro c
  refine ⟨basedCycleStateStream G n hn c, ?_⟩
  intro k
  exact basedCycleStateStream_edge G n hn c k

/-- A genuine exact-language presentation requires NO additional
cycle-admissibility hypothesis: it is constructed from original cycles. -/
theorem cycleWordsAdmissible_of_exact_original_graph
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    CycleWordsAdmissible G language n hn :=
  cycleWordsAdmissible_of_exact_run G language hExact n hn
    (cycleRepetitionsRun_of_original_closedWalk G n hn)

/-- The original matrix is now linked to the shift's TRUE period-n
points without a separate cyclic-run or admissibility assumption.
Only source-specific faithful labels and same-period lift completeness
remain as necessary independent hypotheses. -/
theorem periodic_point_card_eq_trace_of_exact_faithful_complete
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (hFaithful : FaithfulCycleWords G n)
    (hComplete : CompleteCycleLifts G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) :=
  periodic_point_trace_of_exact_cycle_runs G language hExact n hn
    (cycleRepetitionsRun_of_original_closedWalk G n hn)
    hFaithful hComplete

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk
