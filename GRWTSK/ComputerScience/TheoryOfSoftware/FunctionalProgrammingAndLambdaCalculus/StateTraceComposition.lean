/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.OutcomeComposition

/-!
# Composition with explicit state and retained finite traces

Extend `Processing.Outcome`, preserving its distinct refusal and failure values.
A terminating stage returns an outcome, final state, and finite event list.
Sequence runs the continuation only on success, at the actual intermediate
state, and concatenates traces without erasing effects preceding a stop.

Primary argument: eliminate the first outcome; in the success case eliminate the
second. Associativity then reduces to associativity of list append. State
invariants compose by applying each stage's preservation proof in order. The
embedding of existing pure stages respects their exact sequence operation.

Consumer: a precise finite semantics for processing implementations that expose
state and observations. An event here is mathematical data, not execution of an
external effect. No rollback, commutation, divergence, concurrency, cancellation
latency, or hidden-clock equivalence follows from these algebraic laws. A final
counterexample retains a state change and event despite a failed final outcome.
Dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.StateTrace

universe u v w x y z t q

structure Result (R : Type u) (E : Type v) (S : Type w)
    (Event : Type x) (A : Type y) where
  outcome : Outcome R E A
  state : S
  events : List Event

variable {R : Type u} {E : Type v} {S : Type w} {Event : Type x}
  {A : Type y} {B : Type z} {C : Type t} {D : Type q}

def bind (first : Result R E S Event A)
    (next : A → S → Result R E S Event B) : Result R E S Event B :=
  match first.outcome with
  | .success a =>
    let second := next a first.state
    ⟨second.outcome, second.state, first.events ++ second.events⟩
  | .refused reason => ⟨.refused reason, first.state, first.events⟩
  | .failed error => ⟨.failed error, first.state, first.events⟩

/-- Refusal preserves both the attained state and its already recorded trace. -/
theorem bind_refused (reason : R) (s : S) (events : List Event)
    (next : A → S → Result R E S Event B) :
    bind ⟨.refused reason, s, events⟩ next = ⟨.refused reason, s, events⟩ := rfl

/-- Failure does not erase observations preceding it. -/
theorem bind_failed (error : E) (s : S) (events : List Event)
    (next : A → S → Result R E S Event B) :
    bind ⟨.failed error, s, events⟩ next = ⟨.failed error, s, events⟩ := rfl

/-- Equality includes outcome, final state and the complete retained trace. -/
theorem bind_associative (first : Result R E S Event A)
    (next : A → S → Result R E S Event B)
    (last : B → S → Result R E S Event C) :
    bind (bind first next) last =
      bind first (fun a s => bind (next a s) last) := by
  cases first with
  | mk result state events =>
    cases result with
    | refused reason => rfl
    | failed error => rfl
    | success a =>
      cases hn : next a state with
      | mk result' state' events' =>
        cases result' with
        | refused reason => simp [bind, hn]
        | failed error => simp [bind, hn]
        | success b =>
          cases hl : last b state' with
          | mk result'' state'' events'' =>
            simp [bind, hn, hl, List.append_assoc]

/-- Every composition retains the first trace as an exact list prefix. -/
theorem bind_event_prefix (first : Result R E S Event A)
    (next : A → S → Result R E S Event B) :
    ∃ suffix, (bind first next).events = first.events ++ suffix := by
  cases first with
  | mk result state events =>
    cases result with
    | success a => exact ⟨(next a state).events, rfl⟩
    | refused reason => exact ⟨[], (List.append_nil events).symm⟩
    | failed error => exact ⟨[], (List.append_nil events).symm⟩

abbrev Stage (R : Type u) (E : Type v) (S : Type w)
    (Event : Type x) (A : Type y) (B : Type z) :=
  A → S → Result R E S Event B

def identity : Stage R E S Event A A := fun a s => ⟨.success a, s, []⟩

def sequence (first : Stage R E S Event A B)
    (second : Stage R E S Event B C) : Stage R E S Event A C :=
  fun a s => bind (first a s) second

@[simp] theorem identity_sequence (f : Stage R E S Event A B) :
    sequence identity f = f := by
  funext a s
  simp [sequence, identity, bind]

@[simp] theorem sequence_identity (f : Stage R E S Event A B) :
    sequence f identity = f := by
  funext a s
  cases hf : f a s with
  | mk result state events =>
    cases result <;> simp [sequence, identity, bind, hf]

theorem sequence_associative (f : Stage R E S Event A B)
    (g : Stage R E S Event B C) (h : Stage R E S Event C D) :
    sequence (sequence f g) h = sequence f (sequence g h) := by
  funext a s
  exact bind_associative (f a s) g h

/-- Embed an existing pure outcome stage without modifying state or adding events. -/
def lift (f : GRWTSK.Processing.Stage R E A B) : Stage R E S Event A B :=
  fun a s => ⟨f a, s, []⟩

theorem lift_sequence (f : GRWTSK.Processing.Stage R E A B)
    (g : GRWTSK.Processing.Stage R E B C) :
    sequence (lift (S := S) (Event := Event) f) (lift g) =
      lift (GRWTSK.Processing.Stage.sequence f g) := by
  funext a s
  cases hf : f a <;>
    simp [sequence, lift, bind, GRWTSK.Processing.Stage.sequence, Outcome.bind, hf]

theorem lift_state (f : GRWTSK.Processing.Stage R E A B) (a : A) (s : S) :
    (lift (Event := Event) f a s).state = s := rfl

theorem lift_events (f : GRWTSK.Processing.Stage R E A B) (a : A) (s : S) :
    (lift (Event := Event) f a s).events = [] := rfl

/-- Preservation includes stopped results, not only successful ones. -/
def Preserves (invariant : S → Prop) (f : Stage R E S Event A B) : Prop :=
  ∀ a s, invariant s → invariant (f a s).state

theorem preserves_sequence (invariant : S → Prop)
    (f : Stage R E S Event A B) (g : Stage R E S Event B C)
    (first : Preserves invariant f) (second : Preserves invariant g) :
    Preserves invariant (sequence f g) := by
  intro a s hs
  cases hf : f a s with
  | mk result nextState events =>
    have kept : invariant nextState := by
      simpa only [hf] using first a s hs
    cases result with
    | success b =>
      simpa [sequence, bind, hf] using second b nextState kept
    | refused reason => simpa [sequence, bind, hf] using kept
    | failed error => simpa [sequence, bind, hf] using kept

/-- Explicit state threading does not itself destroy associativity or invariants. -/
theorem pure_preserves (invariant : S → Prop)
    (f : GRWTSK.Processing.Stage R E A B) :
    Preserves invariant (lift (Event := Event) f) := fun _ _ h => h

/-- Failure is compatible with a prior state change and a nonempty observation. -/
theorem failed_result_can_retain_change :
    let first : Result Unit Unit Nat Unit Unit := ⟨.success (), 1, [()]⟩
    let next : Unit → Nat → Result Unit Unit Nat Unit Unit :=
      fun _ s => ⟨.failed (), s, []⟩
    (bind first next).outcome = .failed () ∧
      (bind first next).state = 1 ∧ (bind first next).events = [()] := by
  exact ⟨rfl, rfl, rfl⟩

end GRWTSK.Processing.StateTrace
