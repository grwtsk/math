/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPositiveCycleLiveEquiv
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficLiveMatrixTraceTransport
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficRightLivePeriodicInvariant
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficExactPeriodicTraceLedger
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Preserve individual original periodic-label lift fibers under live trimming

Positive-length BasedCycleData witnesses before and after original
right-live trimming are equivalent, preserving every original
intermediate state, starting vertex and emitted Fin n word.
The prior right-live periodic-point equivalence maps each genuine
period-dividing-n label point to the SAME original Fin n letters.

These source facts yield an equivalence on EACH original finite
based-cycle word fiber. Hence the canonical cycle-to-periodic-label
map has exactly the same cardinal over every period-n label point
before and after trimming. In particular the missing-lift counts
and surplus-lift counts are separately invariant, not merely balanced
numerically after taking a trace difference.

The original graph finite-word language itself can have terminal-only
words and need not agree with the live graph's finite-word language.
The comparison uses their ACTUAL periodic-label subtypes, whose
all-factor conditions were proved equivalent previously.

All statements require n>0. At n=0 the original based-cycle
type contains one zero-edge cycle for EVERY original state,
including dead states that are removed by pruning.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveCycleFiberInvariance

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePeriodicInvariant
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPositiveCycleLiveEquiv

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- A literal original based-cycle fiber of one prescribed n-letter
source word. The fiber is NOT a Boolean indicator and counts ALL
distinct original snoc-inductive based graph walks. -/
def BasedCycleWordFiber
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (letters : Fin n → Alphabet) :=
  {c : BasedCycleData G n // basedCycleWord G n c = letters}

/-- The existing positive-length based-cycle equivalence lifts to
an EQUIV of each actual based-cycle word fiber, preserving the same
Fin n source label block on both sides. -/
noncomputable def positiveBasedCycleWordFiberEquiv
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    BasedCycleWordFiber G n letters ≃
      BasedCycleWordFiber (rightLiveSubgraph G) n letters :=
  Equiv.subtypeEquiv (positiveBasedCycleEquiv G n hn)
    (fun c => by
      rw [positiveBasedCycleEquiv_word G n hn c])

/-- Every original word-specific based graph-cycle multiplicity
is exactly unchanged after trimming to actual right-live states.
This is stronger than equal TOTAL traces or equal distinct labels. -/
theorem positiveBasedCycleWordFiber_card_eq
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    Fintype.card (BasedCycleWordFiber G n letters) =
      Fintype.card
        (BasedCycleWordFiber (rightLiveSubgraph G) n letters) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  exact Fintype.card_congr
    (positiveBasedCycleWordFiberEquiv G n hn letters)

/-- Original period-n label-point types are identical on source
Fin n words before and after pruning. Their finite-factor
admissibility proofs are transported, not thrown away. -/
noncomputable def originalPeriodicPointEquivLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint (GraphLanguage G) n hn ≃
      PeriodicLabelPoint (GraphLanguage (rightLiveSubgraph G)) n hn :=
  periodicLabelPoint_equiv_rightLive G n hn

/-- For any actual cycle-to-label map that preserves the original
basedCycleWord, equality of its fiber point is equivalent to
literal equality of its complete emitted Fin n label tuple. -/
theorem canonical_fiber_condition_iff_word
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint language n hn)
    (c : BasedCycleData G n) :
    canonicalCycleMap G language hExact n hn c = p ↔
      basedCycleWord G n c = p.val := by
  constructor
  · intro h
    have hval := congrArg Subtype.val h
    simpa only [canonicalCycleMap_val] using hval
  · intro hword
    apply Subtype.ext
    simpa only [canonicalCycleMap_val] using hword

/-- The canonical source based-cycle lift fiber above an actual
periodic point has exactly the cardinal of the original cycle
word fiber. This does not assume the map is injective or onto. -/
theorem canonical_liftFiberCount_eq_wordFiber_card
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint language n hn) :
    liftFiberCount (canonicalCycleMap G language hExact n hn) p =
      Fintype.card (BasedCycleWordFiber G n p.val) := by
  classical
  unfold liftFiberCount
  exact Fintype.card_congr
    (Equiv.subtypeEquiv (Equiv.refl (BasedCycleData G n))
      (fun c =>
        canonical_fiber_condition_iff_word G language hExact n hn p c))

/-- Each ORIGINAL cycle-lift fiber cardinal is preserved over
the corresponding SAME period-n word of the right-live graph.
The full graph languages need not be equal on NONPERIODIC words. -/
theorem canonical_periodic_liftFiberCount_eq_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint (GraphLanguage G) n hn) :
    liftFiberCount
        (canonicalCycleMap G (GraphLanguage G) (fun _ => Iff.rfl) n hn) p =
      liftFiberCount
        (canonicalCycleMap (rightLiveSubgraph G)
          (GraphLanguage (rightLiveSubgraph G))
          (fun _ => Iff.rfl) n hn)
        (originalPeriodicPointEquivLive G n hn p) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  calc
    liftFiberCount
        (canonicalCycleMap G (GraphLanguage G) (fun _ => Iff.rfl) n hn) p =
      Fintype.card (BasedCycleWordFiber G n p.val) :=
      canonical_liftFiberCount_eq_wordFiber_card
        G (GraphLanguage G) (fun _ => Iff.rfl) n hn p
    _ = Fintype.card
          (BasedCycleWordFiber (rightLiveSubgraph G) n p.val) :=
      positiveBasedCycleWordFiber_card_eq G n hn p.val
    _ = liftFiberCount
          (canonicalCycleMap (rightLiveSubgraph G)
            (GraphLanguage (rightLiveSubgraph G))
            (fun _ => Iff.rfl) n hn)
          (originalPeriodicPointEquivLive G n hn p) := by
      exact (canonical_liftFiberCount_eq_wordFiber_card
        (rightLiveSubgraph G)
        (GraphLanguage (rightLiveSubgraph G))
        (fun _ => Iff.rfl) n hn
        (originalPeriodicPointEquivLive G n hn p)).symm

/-- There are exactly as many genuine period-n label points with
NO same-period original based cycle lift before and after pruning.
This retains the missing-lift defect individually. -/
theorem unliftedLabelCount_eq_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    unliftedLabelCount
        (canonicalCycleMap G (GraphLanguage G)
          (fun _ => Iff.rfl) n hn) =
      unliftedLabelCount
        (canonicalCycleMap (rightLiveSubgraph G)
          (GraphLanguage (rightLiveSubgraph G))
          (fun _ => Iff.rfl) n hn) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  unfold unliftedLabelCount
  apply Fintype.sum_equiv (originalPeriodicPointEquivLive G n hn)
  intro p
  rw [canonical_periodic_liftFiberCount_eq_rightLive G n hn p]

/-- The number of original based graph n-cycle lifts ABOVE the
first lift of each true period-n label point is also preserved
separately under source right-live trimming. -/
theorem surplusLabelLiftCount_eq_rightLive
    (G : LabeledGraph State Alphabet)
    (n : ℕ) (hn : 0 < n) :
    surplusLabelLiftCount
        (canonicalCycleMap G (GraphLanguage G)
          (fun _ => Iff.rfl) n hn) =
      surplusLabelLiftCount
        (canonicalCycleMap (rightLiveSubgraph G)
          (GraphLanguage (rightLiveSubgraph G))
          (fun _ => Iff.rfl) n hn) := by
  classical
  letI : Fintype (LiveVertex G) := Fintype.ofFinite _
  letI : DecidableEq (LiveVertex G) := Classical.decEq _
  unfold surplusLabelLiftCount
  apply Fintype.sum_equiv (originalPeriodicPointEquivLive G n hn)
  intro p
  rw [canonical_periodic_liftFiberCount_eq_rightLive G n hn p]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLiveCycleFiberInvariance
