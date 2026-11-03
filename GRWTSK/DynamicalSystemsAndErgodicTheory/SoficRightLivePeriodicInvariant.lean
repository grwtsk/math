/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficRightLivePruning
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicStreamBridge
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTopologicalPeriodicReturn
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Right-live pruning preserves all genuine original periodic labels

The original right-live graph may discard finite source paths which
terminate. Nevertheless it has EXACTLY the same actual infinite
graph label runs as the original graph. Each state occurrence of an
original infinite run admits the suffix of THAT SAME run and is
therefore right-live. The new graph state is simply that original
state paired with its genuine suffix-run proof.

The source's previously proved bounded period-multiple theorem
therefore realizes EVERY admissible original periodic label point
as a run on the right-live graph. Conversely, every live-graph
path is an original graph path. This gives an IDENTITY-ON-LABELS
Equiv of the true original period-dividing-n label-point types,
for every positive n, despite loss of nonextendable finite words.

The topological period-n cardinal is consequently unchanged
by pruning; the original based-cycle trace/fiber ledger is NOT
replaced with an incorrect raw trace=periodic-point identity.
The source's full topological carriers are NOT asserted equal
without the separate finite-branching path-compactness proof.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePeriodicInvariant

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicStreamBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightInfiniteContinuation
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePruning
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalPeriodicReturn

universe u v
variable {State : Type u} {Alphabet : Type v}

/-- The actual suffix of an ORIGINAL infinite edge/label run,
starting from the original state occurring at time offset.
No new graph state or source label is invented. -/
theorem graphRunFrom_of_run_offset
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (states : ℕ → State)
    (hEdges : ∀ k, G.edge (states k) (trace k) (states (k + 1)))
    (offset : ℕ) : GraphRunFrom G (states offset) := by
  refine ⟨(fun k => trace (offset + k)),
    (fun k => states (offset + k)), by simp, ?_⟩
  intro k
  simpa only [Nat.add_assoc] using hEdges (offset + k)

/-- Every TRUE original infinite graph run lifts to an infinite
right-live graph run preserving its EXACT emitted label sequence.
Each lifted state is its literal original state with an actual
proof of future continuation. -/
theorem originalRun_to_rightLiveRun
    (G : LabeledGraph State Alphabet) (trace : ℕ → Alphabet) :
    RunsOnGraph G trace →
      RunsOnGraph (rightLiveGraph G) trace := by
  rintro ⟨states, hEdges⟩
  let liveStates : ℕ → RightLiveState G :=
    fun k => ⟨states k,
      graphRunFrom_of_run_offset G trace states hEdges k⟩
  refine ⟨liveStates, ?_⟩
  intro k
  exact hEdges k

/-- Forgetting the proof of future viability returns every live
graph run to a REAL original infinite graph run, preserving all
its original labels and original state occurrences. -/
theorem rightLiveRun_to_originalRun
    (G : LabeledGraph State Alphabet) (trace : ℕ → Alphabet) :
    RunsOnGraph (rightLiveGraph G) trace →
      RunsOnGraph G trace := by
  rintro ⟨states, hEdges⟩
  refine ⟨fun k => (states k).val, ?_⟩
  intro k
  exact hEdges k

/-- Exact equivalence of the infinite labeled run predicates,
without ANY finite-state, deterministic or language-exactness
assumption. The proof carries the actual original edges both ways. -/
theorem runsOnGraph_original_iff_rightLive
    (G : LabeledGraph State Alphabet) (trace : ℕ → Alphabet) :
    RunsOnGraph G trace ↔
      RunsOnGraph (rightLiveGraph G) trace :=
  ⟨originalRun_to_rightLiveRun G trace,
    rightLiveRun_to_originalRun G trace⟩

variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Genuinely admitted original periodic words remain admitted by
the right-live graph: the already-published bounded-period source
lift supplies an ACTUAL infinite run with the precise repeated
labels, which the right-live restriction preserves. -/
theorem periodicFactors_original_iff_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    (∀ word : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) word →
        GraphLanguage G word) ↔
    (∀ word : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) word →
        GraphLanguage (rightLiveGraph G) word) := by
  classical
  constructor
  · intro hOriginal
    obtain ⟨m, hm, hBound, states, hPeriod, hEdges⟩ :=
      periodic_point_has_bounded_periodic_state_run
        G (GraphLanguage G) (fun word => Iff.rfl)
        n hn ⟨letters, hOriginal⟩
    have hRun : RunsOnGraph G (repeatBlock hn letters) :=
      ⟨states, hEdges⟩
    have hLive : RunsOnGraph (rightLiveGraph G)
        (repeatBlock hn letters) :=
      (runsOnGraph_original_iff_rightLive G _).mp hRun
    intro word hBlock
    exact graphLanguage_of_run_block
      (rightLiveGraph G) (repeatBlock hn letters)
      hLive word hBlock
  · intro hLive word hBlock
    obtain ⟨s, t, hPath⟩ := hLive word hBlock
    exact ⟨s.val, t.val, liveWordPath_to_original G hPath⟩

/-- A genuine identity-on-original-labels equivalence of period-n
label points before and after right-live pruning. The original
complete factor-language hypothesis is retained at every offset.
It does NOT claim equal sets of finite nonperiodic graph words. -/
noncomputable def periodicLabelPoint_equiv_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint (GraphLanguage G) n hn ≃
      PeriodicLabelPoint (GraphLanguage (rightLiveGraph G)) n hn where
  toFun := fun p =>
    ⟨p.val, (periodicFactors_original_iff_rightLive
      G n hn p.val).mp p.property⟩
  invFun := fun p =>
    ⟨p.val, (periodicFactors_original_iff_rightLive
      G n hn p.val).mpr p.property⟩
  left_inv := by
    intro p
    apply Subtype.ext
    rfl
  right_inv := by
    intro p
    apply Subtype.ext
    rfl

/-- Pruning all and only genuinely dead-end source states preserves
the number of DISTINCT true label points with period DIVIDING n,
even though it can discard other finite graph words. -/
theorem periodicLabelPoint_card_eq_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint (GraphLanguage G) n hn) =
      Fintype.card
        (PeriodicLabelPoint (GraphLanguage (rightLiveGraph G)) n hn) := by
  classical
  exact Fintype.card_congr (periodicLabelPoint_equiv_rightLive G n hn)

variable [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
  [Inhabited Alphabet]

/-- True period-n point COUNTS of the original and right-live
topological subshifts are equal, because both are realized by the
SAME original finite Fin n label points. This is not a claim that
the entire topological carriers or graph-state paths are identical. -/
theorem topologicalPeriodicPointCount_eq_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    topologicalPeriodicPointCount (GraphLanguage G) n hn =
      topologicalPeriodicPointCount
        (GraphLanguage (rightLiveGraph G)) n hn := by
  classical
  calc
    topologicalPeriodicPointCount (GraphLanguage G) n hn =
        Fintype.card (PeriodicLabelPoint (GraphLanguage G) n hn) :=
      topologicalPeriodicPointCount_eq_originalLabelCard
        (GraphLanguage G) n hn
    _ = Fintype.card
          (PeriodicLabelPoint (GraphLanguage (rightLiveGraph G)) n hn) :=
      periodicLabelPoint_card_eq_rightLive G n hn
    _ = topologicalPeriodicPointCount
          (GraphLanguage (rightLiveGraph G)) n hn :=
      (topologicalPeriodicPointCount_eq_originalLabelCard
        (GraphLanguage (rightLiveGraph G)) n hn).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePeriodicInvariant
