import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.StateTraceComposition

/-!
# Resource bounds for the existing state-and-trace composition

Local attribution: grwtsk contributors.

Extend `Processing.StateTrace`, without duplicating its outcome or result types.
A natural-valued event charge induces additive finite-trace cost. The prefix law
already proved for stateful bind implies that a continuation cannot refund prior
work. Bounds need only cover the continuation actually reached at its actual
intermediate state. State-invariant preservation transports the hypotheses of a
second stage's resource bound in `sequence_budget`.

The cost replacement theorem requires an actual inequality including lookup and
validation. A cache label alone proves no saving. Outcomes alone also do not
identify a full state-and-trace result; the counterexample retains different
observations at the same successful value. Primary arguments are list induction,
constructor elimination, and the imported prefix and invariant theorems.

This is finite mathematical accounting, not energy measurement, effect execution,
or a scheduler. Novelty and independent analytical review: not assessed.
Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Processing.StateTrace.Resource

universe u v w x y z t

variable {R : Type u} {E : Type v} {S : Type w} {T : Type x}
  {A : Type y} {B : Type z} {C : Type t}

def cost (charge : T → Nat) : List T → Nat
  | [] => 0
  | event :: rest => charge event + cost charge rest

theorem cost_append (charge : T → Nat) (first second : List T) :
    cost charge (first ++ second) = cost charge first + cost charge second := by
  induction first with
  | nil => simp [cost]
  | cons event rest ih => simp [cost, ih, Nat.add_assoc]

theorem cost_mono {cheap dear : T → Nat} (prices : ∀ event, cheap event ≤ dear event)
    (events : List T) : cost cheap events ≤ cost dear events := by
  induction events with
  | nil => exact Nat.le_refl 0
  | cons event rest ih => exact Nat.add_le_add (prices event) ih

theorem unit_cost_is_length (events : List T) : cost (fun _ => 1) events = events.length := by
  induction events with
  | nil => rfl
  | cons event rest ih => simp [cost, ih, Nat.add_comm]

theorem prefix_cost (charge : T → Nat) {first second : List T}
    (prefix : ∃ suffix, second = first ++ suffix) :
    cost charge first ≤ cost charge second := by
  obtain ⟨suffix, same⟩ := prefix
  rw [same, cost_append]
  exact Nat.le_add_right _ _

/-- Refusal, failure, and successful continuations all retain already charged work. -/
theorem continuation_does_not_refund (charge : T → Nat)
    (first : Result R E S T A) (next : A → S → Result R E S T B) :
    cost charge first.events ≤ cost charge (bind first next).events :=
  prefix_cost charge (bind_event_prefix first next)

theorem prefix_within_total_budget (charge : T → Nat)
    (first : Result R E S T A) (next : A → S → Result R E S T B) {budget : Nat}
    (bounded : cost charge (bind first next).events ≤ budget) :
    cost charge first.events ≤ budget :=
  Nat.le_trans (continuation_does_not_refund charge first next) bounded

/-- The continuation bound is needed only for a reached successful intermediate value. -/
theorem bind_budget (charge : T → Nat) (first : Result R E S T A)
    (next : A → S → Result R E S T B) {initialBudget continuationBudget : Nat}
    (initial : cost charge first.events ≤ initialBudget)
    (continuation : ∀ a, first.outcome = .success a →
      cost charge (next a first.state).events ≤ continuationBudget) :
    cost charge (bind first next).events ≤ initialBudget + continuationBudget := by
  cases h : first.outcome with
  | success a =>
      simpa [bind, h, cost_append] using Nat.add_le_add initial (continuation a h)
  | refused reason =>
      simpa [bind, h] using
        Nat.le_trans initial (Nat.le_add_right initialBudget continuationBudget)
  | failed error =>
      simpa [bind, h] using
        Nat.le_trans initial (Nat.le_add_right initialBudget continuationBudget)

/-- The second resource bound is justified at the attained state, using a preserved invariant. -/
theorem sequence_budget (charge : T → Nat) (invariant : S → Prop)
    (first : Stage R E S T A B) (second : Stage R E S T B C)
    {initialBudget continuationBudget : Nat}
    (preserves : Preserves invariant first)
    (initial : ∀ a s, invariant s → cost charge (first a s).events ≤ initialBudget)
    (continuation : ∀ b s, invariant s →
      cost charge (second b s).events ≤ continuationBudget) :
    ∀ a s, invariant s →
      cost charge (sequence first second a s).events ≤ initialBudget + continuationBudget := by
  intro a s admissible
  apply bind_budget charge (first a s) second (initial a s admissible)
  intro b _
  exact continuation b (first a s).state (preserves a s admissible)

/-- Erasure is an exact formula with the actual intermediate state. -/
theorem erase_bind (first : Result R E S T A) (next : A → S → Result R E S T B) :
    (bind first next).outcome =
      Outcome.bind first.outcome (fun a => (next a first.state).outcome) := by
  cases first with
  | mk outcome state events => cases outcome <;> rfl

theorem success_iff_intermediate_witness (first : Result R E S T A)
    (next : A → S → Result R E S T B) (b : B) :
    (bind first next).outcome = .success b ↔
      ∃ a, first.outcome = .success a ∧ (next a first.state).outcome = .success b := by
  rw [erase_bind]
  exact Outcome.bind_success_iff first.outcome (fun a => (next a first.state).outcome) b

/-- Unreached continuations do not enter the substitution premise. -/
theorem bind_congr_reached (first : Result R E S T A)
    (next next' : A → S → Result R E S T B)
    (agree : ∀ a, first.outcome = .success a → next a first.state = next' a first.state) :
    bind first next = bind first next' := by
  cases h : first.outcome with
  | success a => simp [bind, h, agree a h]
  | refused reason => simp [bind, h]
  | failed error => simp [bind, h]

/-- Failure preserves the exact previous charge rather than erasing it. -/
theorem failure_cost (charge : T → Nat) (first : Result R E S T A)
    (next : A → S → Result R E S T B) {error : E}
    (failed : first.outcome = .failed error) :
    cost charge (bind first next).events = cost charge first.events := by
  simp [bind, failed]

/-- A proved local saving is preserved in every common finite prefix and suffix. -/
theorem contextual_cost_replacement (charge : T → Nat)
    (prefix original replacement suffix : List T)
    (cheaper : cost charge replacement ≤ cost charge original) :
    cost charge (prefix ++ (replacement ++ suffix)) ≤
      cost charge (prefix ++ (original ++ suffix)) := by
  simp only [cost_append]
  exact Nat.add_le_add (Nat.le_refl _) (Nat.add_le_add cheaper (Nat.le_refl _))

/-- Identical successful values can conceal distinct full observations. -/
theorem erasure_not_injective :
    (Result.mk (Outcome.success ()) () [false] : Result Unit Unit Unit Bool Unit).outcome =
      (Result.mk (Outcome.success ()) () [true] : Result Unit Unit Unit Bool Unit).outcome ∧
    (Result.mk (Outcome.success ()) () [false] : Result Unit Unit Unit Bool Unit) ≠
      (Result.mk (Outcome.success ()) () [true] : Result Unit Unit Unit Bool Unit) := by
  constructor
  · rfl
  · intro h
    have impossible : [false] = [true] := congrArg Result.events h
    cases impossible

/-- A zero weighting is not evidence that no work was observed. -/
theorem zero_charge_does_not_mean_empty :
    cost (fun _ : Unit => 0) [()] = 0 ∧ ([()] : List Unit) ≠ [] := by
  constructor
  · rfl
  · intro h
    cases h

/-- A lookup plus validation can be strictly dearer than recomputation. -/
theorem replay_cost_obstruction : ¬ ((2 : Nat) + 3 ≤ 4) := by decide

end GRWTSK.Processing.StateTrace.Resource
