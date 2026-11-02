/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficBoundedWordMatrixCriterion
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Sharp period-multiple original labeled-walk lifting

The existing finite macro-boundary pigeonhole and exact word-matrix
criterion already prove that every admissible periodic word closes
at a positive number m of word-blocks with m <= card State, using
original WordPath edges. Here we return that result to the ORIGINAL
snoc-inductive LabeledWalkData G (m*n) s s and its original
basedCycleWord. The emitted Fin-word is *exactly* Fin.repeat m of
the input n-tuple; no state path or labels are replaced by a model.

WordPath is proof-valued (Prop), so conversion to original walk data
is performed under an EXISTENTIAL (Prop), not by eliminating a proof
into an arbitrary Type. The graph need not admit a one-period lift.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMultipleLift

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMacroBoundaryPigeonhole
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedWordMatrixCriterion

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-! ## Re-encode actual original WordPath as snoc-inductive source data -/

/-- Prepend one original labeled edge to the original snoc-based walk.
The last edge, all intermediate states and their proofs are retained. -/
private def prepend_actual_edge
    (G : LabeledGraph State Alphabet)
    {n : ℕ} {s t u : State} (a : Alphabet) (h : G.edge s a t) :
    LabeledWalkData G n t u → LabeledWalkData G (n + 1) s u
  | .nil _ => .snoc (.nil s) a h
  | .snoc prefix last hlast =>
      .snoc (prepend_actual_edge G a h prefix) last hlast

private theorem prepend_actual_edge_labels
    (G : LabeledGraph State Alphabet)
    {n : ℕ} {s t u : State} (a : Alphabet) (h : G.edge s a t)
    (p : LabeledWalkData G n t u) :
    walkDataLabels G (prepend_actual_edge G a h p) =
      a :: walkDataLabels G p := by
  induction p with
  | nil _ => rfl
  | snoc prefix last hlast ih =>
      simp [prepend_actual_edge, walkDataLabels, ih]

/-- An original WordPath yields ACTUAL LabeledWalkData, including
all source states/labels/edges. This eliminates WordPath only into Prop. -/
private theorem actual_walk_of_wordPath
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {w : List Alphabet}, WordPath G s w t →
      ∃ data : LabeledWalkData G w.length s t,
        walkDataLabels G data = w := by
  intro s t w h
  induction h with
  | nil s => exact ⟨.nil s, rfl⟩
  | cons a word hedge tail ih =>
      obtain ⟨data, hlabels⟩ := ih
      exact ⟨prepend_actual_edge G a hedge data,
        (prepend_actual_edge_labels G a hedge data).trans
          (congrArg (List.cons a) hlabels)⟩

/-! ## Actual closed lifts at a bounded positive multiple of the period -/

/-- A genuine period-dividing-n point of the EXACT graph language has
an ORIGINAL based closed walk at length m*n, for some 1 <= m <= #State.
The complete emitted list is the same literal n-word repeated m times. -/
theorem periodic_label_point_has_multiple_closed_lift
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint language n hn) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ c : BasedCycleData G (m * n),
        walkDataLabels G c.2 = finiteCopies (List.ofFn p.val) m := by
  classical
  have hcriterion : BoundedPeriodicWordMatrixCriterion G language n hn :=
    boundedPeriodicWordMatrixCriterion_proof G language n hn
  obtain ⟨m, hm, hbound, htrace⟩ := (hcriterion hExact p.val).mp p.property
  obtain ⟨s, hclosed⟩ :=
    (wordPowerClosedPathBridge_proof G (List.ofFn p.val) m).1 htrace
  obtain ⟨data, hdata⟩ := actual_walk_of_wordPath G hclosed
  have hlen : (finiteCopies (List.ofFn p.val) m).length = m * n := by
    rw [finiteCopies_length]
    simp
  have hOriginal :
      ∃ c : BasedCycleData G (finiteCopies (List.ofFn p.val) m).length,
        walkDataLabels G c.2 = finiteCopies (List.ofFn p.val) m :=
    ⟨⟨s, data⟩, hdata⟩
  have hReturn :
      ∃ c : BasedCycleData G (m * n),
        walkDataLabels G c.2 = finiteCopies (List.ofFn p.val) m := by
    simpa only [hlen] using hOriginal
  exact ⟨m, hm, hbound, hReturn⟩

/-! ## Exact equality with the original Fin-indexed basedCycleWord -/

/-- The original emitted n-word equals the corresponding complete
Fin-indexed word; no truncation or artificial letter comparison. -/
private theorem original_cycle_word_list
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) :
    List.ofFn (basedCycleWord G n c) = walkDataLabels G c.2 := by
  have hlen : (walkDataLabels G c.2).length = n :=
    walkDataLabels_length G c.2
  calc
    List.ofFn (basedCycleWord G n c) =
        List.ofFn (fun i : Fin n =>
          (walkDataLabels G c.2).get (Fin.cast hlen.symm i)) := rfl
    _ = List.ofFn (List.get (walkDataLabels G c.2)) :=
      (List.ofFn_congr hlen (List.get (walkDataLabels G c.2))).symm
    _ = walkDataLabels G c.2 := List.ofFn_get _

private theorem finiteCopies_eq_flatten_replicate
    (word : List Alphabet) (r : ℕ) :
    finiteCopies word r = (List.replicate r word).flatten := by
  induction r with
  | zero => rfl
  | succ r ih =>
      calc
        finiteCopies word (r + 1) = finiteCopies word r ++ word := rfl
        _ = (List.replicate r word).flatten ++ word := by rw [ih]
        _ = (List.replicate (r + 1) word).flatten := by
          rw [List.replicate_succ', List.flatten_concat]

private theorem finiteCopies_ofFn_repeat
    {n : ℕ} (letters : Fin n → Alphabet) (r : ℕ) :
    finiteCopies (List.ofFn letters) r =
      List.ofFn (Fin.repeat r letters) := by
  calc
    finiteCopies (List.ofFn letters) r =
        (List.replicate r (List.ofFn letters)).flatten :=
      finiteCopies_eq_flatten_replicate _ _
    _ = List.ofFn (Fin.repeat r letters) :=
      (List.ofFn_fin_repeat letters r).symm

/-- The original, COMPLETE emitted m*n-tuple of the resulting cycle
is exactly the source periodic n-tuple repeated m times. No fiber
multiplicity, orientation or symbol choice is silently removed. -/
theorem periodic_label_point_has_exact_repeated_cycleWord
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint language n hn) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ c : BasedCycleData G (m * n),
        basedCycleWord G (m * n) c = Fin.repeat m p.val := by
  obtain ⟨m, hm, hbound, c, hword⟩ :=
    periodic_label_point_has_multiple_closed_lift G language hExact n hn p
  refine ⟨m, hm, hbound, c, ?_⟩
  apply List.ofFn_injective
  calc
    List.ofFn (basedCycleWord G (m * n) c) =
        walkDataLabels G c.2 := original_cycle_word_list G (m * n) c
    _ = finiteCopies (List.ofFn p.val) m := hword
    _ = List.ofFn (Fin.repeat m p.val) :=
      finiteCopies_ofFn_repeat p.val m

/-! ## Hostile minimal-period control: a two-block lift, but no one-block lift -/

/-- The original alternating-state graph has a genuine TWO-edge original
closed lift emitting two Unit labels. Its already published theorem
alternating_no_one_step_cycle rules out a one-edge closed lift. -/
theorem alternating_two_step_original_lift :
    ∃ c : BasedCycleData alternatingUnitGraph 2,
      walkDataLabels alternatingUnitGraph c.2 = [(), ()] := by
  let first : LabeledWalkData alternatingUnitGraph 1 false true :=
    .snoc (.nil false) () (by decide)
  let full : LabeledWalkData alternatingUnitGraph 2 false false :=
    .snoc first () (by decide)
  exact ⟨⟨false, full⟩, rfl⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMultipleLift
