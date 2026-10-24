# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TagMachine.Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f4c9e28608824b6a94c03b79f4730a8a4d14be0` · SHA-256 `db9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction

/-!
# Administrative work in the supported Tag reducer

The machine consumes one pending administrative tick before its next actual
source contraction. Every computational transition resets that counter to one.
The encoding erases the tick, while the source invariant is checked on the whole
relation. The total budget is the initial counter plus twice the exact target
height; a target height alone would count only contractions.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

open FormalResearch.MathematicalTooling.Reduction

/-- Actual source term plus the remaining administrative work. -/
structure TagMachineState where
  /-- Existing profile-2 first-order syntax. -/
  term : Term
  /-- Administrative ticks to discharge before the next contraction. -/
  pending : ℕ
  deriving DecidableEq, Repr

/-- The whole admitted machine transition relation. -/
inductive TagMachineStep (tag : ConstructorId) : TagMachineState → TagMachineState → Prop
  | administrative (term : Term) (remaining : ℕ) :
      TagMachineStep tag ⟨term, remaining + 1⟩ ⟨term, remaining⟩
  | computational {term result : Term} : TagStep tag term result →
      TagMachineStep tag ⟨term, 0⟩ ⟨result, 1⟩

/-- Administrative transitions are precisely the erased counter decrements. -/
def TagMachineAdmin (first second : TagMachineState) : Prop :=
  first.term = second.term ∧ second.pending < first.pending

/-- Each machine transition simulates a positive contraction or an administrative decrement. -/
theorem tag_machine_simulation {tag : ConstructorId} {first second : TagMachineState}
    (step : TagMachineStep tag first second) :
    Relation.TransGen (TagStep tag) first.term second.term ∨
      (first.term = second.term ∧ TagMachineAdmin first second) := by
  cases step with
  | administrative term remaining => exact Or.inr ⟨rfl, rfl, Nat.lt_succ_self _⟩
  | computational step => exact Or.inl (.single step)

/-- Every encoding fiber terminates administratively by its actual pending-work counter. -/
theorem tag_machine_fiber_well_founded :
    FiberWellFounded TagMachineState.term TagMachineAdmin :=
  fiber_well_founded_of_measure TagMachineState.term TagMachineState.pending (fun _ h => h.2)

/-- The actual stuttering machine terminates at every admitted or unadmitted syntax state. -/
theorem tag_machine_strongly_normalizing (tag : ConstructorId) (state : TagMachineState) :
    StronglyNormalizing (TagMachineStep tag) state :=
  strongly_normalizing_of_fiber_simulation TagMachineState.term tag_machine_simulation
    tag_machine_fiber_well_founded (tag_strongly_normalizing tag state.term)

/-- Every permitted transition from a legal source term stays legal. -/
theorem tag_machine_preserves_typing {tag : ConstructorId} {first second : TagMachineState}
    (step : TagMachineStep tag first second) (snapshot : Snapshot) (variableCount : ℕ)
    (valid : TermValid snapshot variableCount first.term) :
    TermValid snapshot variableCount second.term := by
  cases step with
  | administrative => exact valid
  | computational step => exact tag_step_preserves_typing step snapshot variableCount valid

/-- Target contraction rank is executable and exact; administration preserves it. -/
theorem tag_machine_classification {tag : ConstructorId} {first second : TagMachineState}
    (step : TagMachineStep tag first second) :
    (tagHeight tag second.term < tagHeight tag first.term ∧ second.pending ≤ 1) ∨
      (tagHeight tag second.term = tagHeight tag first.term ∧
        second.pending < first.pending) := by
  cases step with
  | administrative term remaining => exact Or.inr ⟨rfl, Nat.lt_succ_self _⟩
  | computational step =>
    left
    refine ⟨?_, le_refl _⟩
    simp only [tag_height_eq_mathematical_height]
    exact (tagReducer tag).height_decreases step

/-- The implementation's one-tick reset certifies the full source trace budget. -/
theorem tag_machine_total_budget {tag : ConstructorId} {n : ℕ}
    {first second : TagMachineState} (trace : Trace (TagMachineStep tag) n first second) :
    n ≤ first.pending + tagHeight tag first.term * 2 :=
  stuttering_trace_budget (fun state => tagHeight tag state.term)
    TagMachineState.pending 1 tag_machine_classification trace

/-- Every machine successor, including the erased administrative transition. -/
def tagMachineNext (tag : ConstructorId) (state : TagMachineState) : List TagMachineState :=
  match state.pending with
  | 0 => (tagNext tag state.term).map fun term => ⟨term, 1⟩
  | remaining + 1 => [⟨state.term, remaining⟩]

/-- Enumeration includes all computational choices and the administrative branch. -/
theorem tag_machine_next_correct (tag : ConstructorId) (first second : TagMachineState) :
    second ∈ tagMachineNext tag first ↔ TagMachineStep tag first second := by
  constructor
  · intro member
    rcases first with ⟨term, pending⟩
    cases pending with
    | zero =>
      rcases List.mem_map.mp member with ⟨result, nextMember, rfl⟩
      exact .computational (tag_next_sound tag nextMember)
    | succ remaining =>
      simp only [tagMachineNext, List.mem_singleton] at member
      subst second
      exact .administrative term remaining
  · intro step
    cases step with
    | administrative => simp [tagMachineNext]
    | computational step =>
      exact List.mem_map.mpr ⟨_, tag_next_complete tag step, rfl⟩

/-- A complete finite reducer whose proof consumes the stuttering transfer theorem. -/
def tagMachineReducer (tag : ConstructorId) : FiniteReducer TagMachineState where
  step := TagMachineStep tag
  next := tagMachineNext tag
  next_correct := tag_machine_next_correct tag
  wellFounded := ⟨tag_machine_strongly_normalizing tag⟩

/-- Discharge every pending administrative tick without changing the term. -/
theorem tag_machine_discharge (tag : ConstructorId) (term : Term) (pending : ℕ) :
    Trace (TagMachineStep tag) pending ⟨term, pending⟩ ⟨term, 0⟩ := by
  induction pending with
  | zero => exact .zero _
  | succ pending ih => exact .step (.administrative term pending) ih

/-- Lift every source contraction with its actual one-tick administrative reset. -/
theorem tag_machine_lift_trace {tag : ConstructorId} {n : ℕ} {term result : Term}
    (trace : Trace (TagStep tag) n term result) :
    Trace (TagMachineStep tag) (2 * n) ⟨term, 0⟩ ⟨result, 0⟩ := by
  induction trace with
  | zero => exact .zero _
  | step step _ ih =>
    simpa only [Nat.mul_add, Nat.mul_one, Nat.add_assoc] using
      Trace.step (.computational step) (Trace.step (.administrative _ 0) ih)

/-- The deterministic supported machine normalizer returns a term with no pending work. -/
def tagMachineNormalize (tag : ConstructorId) (state : TagMachineState) : TagMachineState :=
  ⟨tagNormalize tag state.term, 0⟩

/-- Reachability and normal output hold for the entire machine, including erased work. -/
theorem tag_machine_normalize_spec (tag : ConstructorId) (state : TagMachineState) :
    ∃ n, Trace (TagMachineStep tag) n state (tagMachineNormalize tag state) ∧
      ∀ result, ¬TagMachineStep tag (tagMachineNormalize tag state) result := by
  obtain ⟨n, trace, normal⟩ := tag_normalize_spec tag state.term
  refine ⟨state.pending + 2 * n,
    (tag_machine_discharge tag state.term state.pending).trans (tag_machine_lift_trace trace), ?_⟩
  intro result step
  cases step with
  | computational step => exact normal _ step

/-- Normalizing the machine preserves the original source typing contract. -/
theorem tag_machine_normalize_preserves_typing (tag : ConstructorId) (state : TagMachineState)
    (snapshot : Snapshot) (variableCount : ℕ)
    (valid : TermValid snapshot variableCount state.term) :
    TermValid snapshot variableCount (tagMachineNormalize tag state).term :=
  tag_normalize_preserves_typing tag state.term snapshot variableCount valid

/-- Both computation and administration preserve the actual partial interpreter readout. -/
theorem tag_machine_preserves_evaluation {first second : TagMachineState}
    (step : TagMachineStep ⟨1⟩ first second) (assignment : List ℕ)
    (valid : TagAssignmentValid assignment) :
    evaluateTerm FullFixtures.interpreterTable assignment first.term =
      evaluateTerm FullFixtures.interpreterTable assignment second.term := by
  cases step with
  | administrative => rfl
  | computational step => exact tag_step_preserves_evaluation step assignment valid

/-- The full machine normalizer preserves denotation under every actual carrier assignment. -/
theorem tag_machine_normalize_preserves_evaluation (state : TagMachineState)
    (assignment : List ℕ) (valid : TagAssignmentValid assignment) :
    evaluateTerm FullFixtures.interpreterTable assignment (tagMachineNormalize ⟨1⟩ state).term =
      evaluateTerm FullFixtures.interpreterTable assignment state.term :=
  tag_normalize_preserves_evaluation state.term assignment valid

/-- The already checked source tree admits both real administrative and computational steps. -/
theorem checked_tag_machine_trace :
    Trace (TagMachineStep ⟨1⟩) 3
      ⟨termOfSyntax FullFixtures.tree, 1⟩ ⟨termOfSyntax FullFixtures.atomTree, 0⟩ :=
  .step (.administrative _ 0)
    (.step (.computational checked_tag_tag_reduces) (.step (.administrative _ 0) (.zero _)))


/-- Every admitted trace from this concrete checked tree fits the proved three-step budget. -/
theorem checked_tag_machine_budget {n : ℕ} {state : TagMachineState}
    (trace : Trace (TagMachineStep ⟨1⟩) n
      ⟨termOfSyntax FullFixtures.tree, 1⟩ state) : n ≤ 3 := by
  have bound := tag_machine_total_budget trace
  simpa [checked_tag_tag_height] using bound

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
