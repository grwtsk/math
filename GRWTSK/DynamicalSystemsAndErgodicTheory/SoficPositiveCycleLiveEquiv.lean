/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficLiveRepresentationIntegration
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepetitionFromWalk
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficBasedCycleCard
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Original positive-length based labeled cycles survive right-live pruning

The original BasedCycleData G n is SIGMA of a genuine original
start state and the full Type-valued, snoc-inductive
LabeledWalkData G n s s. Both the original labels and ALL
intermediate states matter. This development does NOT
deduce based-cycle multiplicity from periodic label-point
cardinality, which is insufficient for general sofic graphs.

For n>0, repeating any actual original based cycle gives
an original infinite run. Every state on that closed walk is
therefore right-live. We lift each original snoc-inductive
walk into the actual RightLive-state subtype, with proofs
of source liveness computed backward from its terminal state.
Conversely we forget ONLY the proof-valued live-state fields.
These operations are inverses on actual walk data.

The resulting positive-n based-cycle equivalence preserves
each original emitted Fin n word, including its base index.
Combined with the already proved ORIGINAL cycle-cardinality
and matrix trace sources, it yields true trace invariance
under right-live trimming for n>0.

n=0 is explicitly EXCLUDED: the original trace of A^0 counts
ALL original states, including terminal states, whereas a
pruned graph has fewer. No uncorrected graph-to-label trace
equality, graph-cycle label bijection, or arithmetic/zeta
conclusion is asserted.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPositiveCycleLiveEquiv

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveRepresentationIntegration

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

abbrev LiveVertex (G : LabeledGraph State Alphabet) :=
  {s : State // RightLive G s}

/-- Every based ORIGINAL cycle with positive length is right-live
at its exact base vertex. No label or state period is weakened:
the earlier cycle-state stream gives actual edges at every index. -/
theorem basedCycle_base_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (c : BasedCycleData G n) :
    RightLive G c.1 := by
  refine ⟨repeatBlock hn (basedCycleWord G n c),
    basedCycleStateStream G n hn c,
    basedCycleStateStream_zero G n hn c, ?_⟩
  intro k
  exact basedCycleStateStream_edge G n hn c k

/-- A real original snoc-inductive labeled walk whose END is live
has a live source as well. The proof retains every original edge
along its full path; it does not construct a different word. -/
theorem originalWalk_source_rightLive
    (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : State}
      (walk : LabeledWalkData G n s t),
      RightLive G t → RightLive G s := by
  intro n s t walk
  induction walk with
  | nil s =>
      intro ht
      exact ht
  | snoc prefix letter hedge ih =>
      intro ht
      exact ih (rightLive_of_edge G hedge ht)

/-- Project from a right-live-state original walk to an original
walk. Only the proof that every vertex is live is forgotten.
The complete original label and intermediate-state data remain. -/
def projectLiveWalk (G : LabeledGraph State Alphabet) :
    {n : ℕ} → {s t : LiveVertex G} →
      LabeledWalkData (rightLiveSubgraph G) n s t →
      LabeledWalkData G n s.val t.val
  | _, _, _, .nil s => .nil s.val
  | _, _, _, .snoc prefix letter hedge =>
      .snoc (projectLiveWalk G prefix) letter hedge

/-- The inverse lifts the ORIGINAL snoc-inductive walk into
the actual right-live-state subtype, with a certified terminal
continuation. Intermediate liveness follows by induction
backwards along the SAME original edges. -/
noncomputable def liftOriginalWalk
    (G : LabeledGraph State Alphabet) :
    {n : ℕ} → {s t : State} →
      (walk : LabeledWalkData G n s t) →
      (ht : RightLive G t) →
      LabeledWalkData (rightLiveSubgraph G) n
        ⟨s, originalWalk_source_rightLive G walk ht⟩ ⟨t, ht⟩
  | _, _, _, .nil s, ht =>
      .nil ⟨s, ht⟩
  | _, _, _, .snoc prefix letter hedge, ht =>
      .snoc
        (liftOriginalWalk G prefix
          (rightLive_of_edge G hedge ht))
        letter hedge

/-- The original Type-valued walk survives the lift-forget
round trip exactly. This is about actual walk witnesses,
not merely existence of a finite accepted word. -/
theorem project_liftOriginalWalk
    (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : State}
      (walk : LabeledWalkData G n s t)
      (ht : RightLive G t),
      projectLiveWalk G (liftOriginalWalk G walk ht) = walk := by
  intro n s t walk
  induction walk with
  | nil s =>
      intro ht
      rfl
  | snoc prefix letter hedge ih =>
      intro ht
      change LabeledWalkData.snoc
          (projectLiveWalk G
            (liftOriginalWalk G prefix
              (rightLive_of_edge G hedge ht))) letter hedge =
        LabeledWalkData.snoc prefix letter hedge
      rw [ih (rightLive_of_edge G hedge ht)]

/-- The reverse round trip reconstructs the SAME live-state
walk, since the state values and every original edge/letter
are unchanged. Proof fields in Subtype are proof-irrelevant. -/
theorem lift_projectLiveWalk
    (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : LiveVertex G}
      (walk : LabeledWalkData (rightLiveSubgraph G) n s t),
      liftOriginalWalk G (projectLiveWalk G walk) t.property = walk := by
  intro n s t walk
  induction walk with
  | nil s =>
      rfl
  | snoc prefix letter hedge ih =>
      change LabeledWalkData.snoc
          (liftOriginalWalk G (projectLiveWalk G prefix)
            (rightLive_of_edge G hedge t.property)) letter hedge =
        LabeledWalkData.snoc prefix letter hedge
      rw [ih]

/-- No original finite word label is lost by projecting a
live-graph snoc walk back to its source graph. -/
theorem projectedWalk_labels
    (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : LiveVertex G}
      (walk : LabeledWalkData (rightLiveSubgraph G) n s t),
      walkDataLabels G (projectLiveWalk G walk) =
        walkDataLabels (rightLiveSubgraph G) walk := by
  intro n s t walk
  induction walk with
  | nil s =>
      rfl
  | snoc prefix letter hedge ih =>
      simp only [projectLiveWalk, walkDataLabels, ih]

/-- A positive original based cycle lifts to a based cycle
over live states. Both carry the SAME actual based vertex,
complete snoc walk, and n ordered emitted letters. -/
noncomputable def liftBasedCycle
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) :
    BasedCycleData G n →
      BasedCycleData (rightLiveSubgraph G) n :=
  fun c =>
    let ht := basedCycle_base_rightLive G n hn c
    ⟨⟨c.1, ht⟩, liftOriginalWalk G c.2 ht⟩

/-- Forget the liveness proof at each original based vertex,
retaining every graph state, each source edge and every label. -/
def projectBasedCycle
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    BasedCycleData (rightLiveSubgraph G) n →
      BasedCycleData G n :=
  fun c => ⟨c.1.val, projectLiveWalk G c.2⟩

/-- Positivity is essential: this bijection of ACTUAL based
source cycles is not true for n=0 when dead original states
exist. It preserves original walk multiplicity and basepoints,
not merely a cardinal of distinct emitted words. -/
noncomputable def positiveBasedCycleEquiv
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) :
    BasedCycleData G n ≃
      BasedCycleData (rightLiveSubgraph G) n where
  toFun := liftBasedCycle G n hn
  invFun := projectBasedCycle G n
  left_inv := by
    rintro ⟨s, walk⟩
    apply Sigma.ext
    · rfl
    · exact HEq.of_eq (project_liftOriginalWalk G walk
        (basedCycle_base_rightLive G n hn ⟨s, walk⟩))
  right_inv := by
    rintro ⟨s, walk⟩
    apply Sigma.ext
    · apply Subtype.ext
      rfl
    · exact HEq.of_eq (lift_projectLiveWalk G walk)

/-- The source based-cycle word is invariant under forgetting
liveness proofs. The Fin n positions are unchanged, and the
original complete walkDataLabels lists are literally equal. -/
theorem projectBasedCycle_word
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData (rightLiveSubgraph G) n) :
    basedCycleWord G n (projectBasedCycle G n c) =
      basedCycleWord (rightLiveSubgraph G) n c := by
  funext i
  simp [projectBasedCycle, basedCycleWord, projectedWalk_labels]

/-- Every original positive-length cycle's full Fin n emitted
word survives pruning with the same original indices. -/
theorem positiveBasedCycleEquiv_word
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (hn : 0 < n) (c : BasedCycleData G n) :
    basedCycleWord (rightLiveSubgraph G) n
      (positiveBasedCycleEquiv G n hn c) =
        basedCycleWord G n c := by
  have h := projectBasedCycle_word G n
    (positiveBasedCycleEquiv G n hn c)
  rw [(positiveBasedCycleEquiv G n hn).left_inv c] at h
  exact h.symm

/-- The ORIGINAL based-cycle counts and graph adjacency traces
are equal at every POSITIVE n after removing dead vertices.
The proof uses the actual based-cycle Equiv and the original
trace-pow-cardinality theorem, not periodic label-point counts. -/
theorem positive_trace_eq_rightLive_trace
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) =
      Matrix.trace (labeledAdjacency (rightLiveSubgraph G) ^ n) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  calc
    Matrix.trace (labeledAdjacency G ^ n) =
        Fintype.card (BasedCycleData G n) :=
      trace_pow_eq_card_based_cycles G n
    _ = Fintype.card (BasedCycleData (rightLiveSubgraph G) n) :=
      Fintype.card_congr (positiveBasedCycleEquiv G n hn)
    _ = Matrix.trace
          (labeledAdjacency (rightLiveSubgraph G) ^ n) :=
      (trace_pow_eq_card_based_cycles (rightLiveSubgraph G) n).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPositiveCycleLiveEquiv
