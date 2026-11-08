/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

/-!
# Actual totient as a complete closed-walk character and fiber return

The modular carrier is the genuine group (ZMod q)ˣ; characters range over
every DirichletCharacter ℂ q. Their cardinal and orthogonality are
consumed from pinned Mathlib, not postulated as extra hypotheses.

Each source occurrence has a root, original ordered and endpoint-tagged
Quiver arrows (including parallel arrows), and actual validity and closure
proofs. Its independent source coefficient and ordered edge weights survive.
The arithmetic unit displacement per edge is a separate explicit map:
no prime-power-to-event transport is manufactured.

Complete character-channel tracing and complete lifted fiber-return
tracing equal Nat.totient q times precisely the closed source records
whose accumulated unit displacement is one. A vertex-coboundary gauge
has trivial holonomy on every truly closed base trace.

This is finite orthogonality and loop bookkeeping, not analytic prime
cancellation, a primitive-sector projection, Ramanujan/Moebius inversion,
or Weil positivity. The q-unit labels and the original arithmetic
von Mangoldt inventory are distinct, still-unconnected carriers.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantCharacterLoop

variable (q : ℕ) [NeZero q]

abbrev UnitFiber : Type := (ZMod q)ˣ

theorem unitFiber_card :
    Fintype.card (UnitFiber q) = Nat.totient q :=
  ZMod.card_units_eq_totient q

theorem character_card :
    Nat.card (DirichletCharacter ℂ q) = Nat.totient q :=
  DirichletCharacter.card_eq_totient_of_hasEnoughRootsOfUnity ℂ q

/-- The complete actual Dirichlet character delta on a unit displacement. -/
theorem character_sum_unit (a : UnitFiber q) :
    (∑ chi : DirichletCharacter ℂ q, chi (a : ZMod q)) =
      if a = 1 then (Nat.totient q : ℂ) else 0 := by
  have hunit : ((a : ZMod q) = 1) ↔ a = 1 := by
    constructor
    · intro h
      apply Units.ext
      simpa using h
    · intro h
      simp [h]
  simpa only [hunit] using
    (DirichletCharacter.sum_characters_eq ℂ (a : ZMod q))

theorem fiber_return_iff_identity (g a : UnitFiber q) :
    g * a = g ↔ a = 1 := by
  constructor
  · intro h
    have heq : g * a = g * (1 : UnitFiber q) := by simpa using h
    exact mul_left_cancel heq
  · intro h
    simp [h]

/-- Reuse the original full source, target, arrow-identity event carrier. -/
abbrev TaggedEvent (V : Type*) [Quiver V] :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk.Event V

variable {V : Type*} [Quiver V]

def residueProduct (label : TaggedEvent V → UnitFiber q)
    (events : List (TaggedEvent V)) : UnitFiber q :=
  (events.map label).prod

@[simp] theorem residueProduct_nil (label : TaggedEvent V → UnitFiber q) :
    residueProduct q label [] = 1 := by simp [residueProduct]

@[simp] theorem residueProduct_cons (label : TaggedEvent V → UnitFiber q)
    (e : TaggedEvent V) (rest : List (TaggedEvent V)) :
    residueProduct q label (e :: rest) =
      label e * residueProduct q label rest := by simp [residueProduct]

/-- Source indices, not just path lists: repeated records are NOT deduplicated. -/
structure ClosedOccurrences (V ι : Type*) [Quiver V] where
  root : ι → V
  events : ι → List (TaggedEvent V)
  valid : ∀ i, GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.ValidFrom
    (root i) (events i)
  closed : ∀ i, GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.finish
    (root i) (events i) = root i

variable {ι : Type*} [Fintype ι]

def sourceTerm (I : ClosedOccurrences V ι)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) (i : ι) : ℂ :=
  coefficient i *
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk.walkWeight
      weight (I.events i)

def unitReturnSum (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) : ℂ :=
  ∑ i : ι, if residueProduct q label (I.events i) = 1 then
    sourceTerm I coefficient weight i else 0

def characterLoopSum (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) : ℂ :=
  ∑ chi : DirichletCharacter ℂ q,
    ∑ i : ι, sourceTerm I coefficient weight i *
      chi ((residueProduct q label (I.events i) : UnitFiber q) : ZMod q)

/-- Full character trace equals totient times the unit-return source weight. -/
theorem character_loop_eq_totient_return
    (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) :
    characterLoopSum q I label coefficient weight =
      (Nat.totient q : ℂ) * unitReturnSum q I label coefficient weight := by
  classical
  unfold characterLoopSum unitReturnSum
  calc
    (∑ chi : DirichletCharacter ℂ q,
      ∑ i : ι, sourceTerm I coefficient weight i *
        chi ((residueProduct q label (I.events i) : UnitFiber q) : ZMod q)) =
      ∑ i : ι, ∑ chi : DirichletCharacter ℂ q,
        sourceTerm I coefficient weight i *
          chi ((residueProduct q label (I.events i) : UnitFiber q) : ZMod q) :=
            Finset.sum_comm
    _ = ∑ i : ι, sourceTerm I coefficient weight i *
        (∑ chi : DirichletCharacter ℂ q,
          chi ((residueProduct q label (I.events i) : UnitFiber q) : ZMod q)) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
    _ = ∑ i : ι, if residueProduct q label (I.events i) = 1 then
          (Nat.totient q : ℂ) * sourceTerm I coefficient weight i else 0 := by
          apply Finset.sum_congr rfl
          intro i _
          rw [character_sum_unit q]
          split_ifs <;> ring
    _ = (Nat.totient q : ℂ) *
        (∑ i : ι, if residueProduct q label (I.events i) = 1 then
            sourceTerm I coefficient weight i else 0) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          split_ifs <;> ring

/-- Count the very same unit-displacement loops in the original fiber. -/
def liftedFiberLoopSum (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) : ℂ :=
  ∑ i : ι, ∑ g : UnitFiber q,
    if g * residueProduct q label (I.events i) = g then
      sourceTerm I coefficient weight i else 0

theorem lifted_fiber_loop_eq_totient_return
    (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) :
    liftedFiberLoopSum q I label coefficient weight =
      (Nat.totient q : ℂ) * unitReturnSum q I label coefficient weight := by
  classical
  unfold liftedFiberLoopSum unitReturnSum
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  by_cases h : residueProduct q label (I.events i) = 1
  · simp [h, ← unitFiber_card q, nsmul_eq_mul]
  · have hfixed (g : UnitFiber q) :
        g * residueProduct q label (I.events i) ≠ g := by
      intro hh
      exact h ((fiber_return_iff_identity q g _).mp hh)
    simp [h, hfixed]

theorem character_loop_eq_lifted_fiber_loop
    (I : ClosedOccurrences V ι)
    (label : TaggedEvent V → UnitFiber q)
    (coefficient : ι → ℂ) (weight : TaggedEvent V → ℂ) :
    characterLoopSum q I label coefficient weight =
      liftedFiberLoopSum q I label coefficient weight := by
  rw [character_loop_eq_totient_return, lifted_fiber_loop_eq_totient_return]

def gaugeLabel (frame : V → UnitFiber q) (e : TaggedEvent V) :
    UnitFiber q :=
  (frame e.1)⁻¹ * frame e.2.1

theorem gauge_product_telescopes
    (frame : V → UnitFiber q) (root : V) (events : List (TaggedEvent V))
    (hvalid : GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.ValidFrom root events) :
    residueProduct q (gaugeLabel q frame) events =
      (frame root)⁻¹ * frame
        (GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.finish root events) := by
  induction events generalizing root with
  | nil => simp [residueProduct]
  | cons e rest ih =>
      rcases hvalid with ⟨hsource, htail⟩
      have htail' := ih e.2.1 htail
      rw [residueProduct_cons, htail']
      change ((frame e.1)⁻¹ * frame e.2.1) *
          ((frame e.2.1)⁻¹ *
            frame (GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.finish e.2.1 rest)) =
        (frame root)⁻¹ *
          frame (GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.finish e.2.1 rest)
      rw [hsource]
      group

/-- Exact closed-loop pure gauge obstruction. -/
theorem gauge_closed_product_one
    (I : ClosedOccurrences V ι) (frame : V → UnitFiber q) (i : ι) :
    residueProduct q (gaugeLabel q frame) (I.events i) = 1 := by
  rw [gauge_product_telescopes q frame (I.root i) (I.events i) (I.valid i)]
  rw [I.closed i]
  simp

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantCharacterLoop
