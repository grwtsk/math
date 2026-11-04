/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.StateTraceComposition

/-!
# Representation refinement for state-and-trace composition

Reuse the existing `Outcome`, `StateTrace.Result`, `bind`, `sequence`, `lift`,
and `Preserves`. Project values, states, and event labels explicitly, while
retaining refusal/failure constructors and the order and number of events.

Primary argument: constructor elimination shows projection commutes with bind
when the continuation commutes at every represented value and state. This gives
both horizontal composition of stages and vertical composition of representation
comparisons. Invariant transport includes stopped results. Separate left-inverse
premises reflect full result equality; ordinary projection need not be injective.

Consumers: connecting pure stages, explicit-state semantics, and abstract traces
without transferring correctness from structurally similar types. The event-label
counterexample hides which event occurred, although event count is retained.
The statements do not model divergence, stuttering, external execution, runtime
scheduling or authentication. No opaque effect is erased by a failed outcome.
Dependencies inspected at 7d33cee521e3f1c27ffce510a6894bf15b42c89b.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.StateTrace.Refinement

universe uR uE uS uT uU uL uM uN uA uB uC uD uF uG

variable {R : Type uR} {E : Type uE}
  {S : Type uS} {T : Type uT} {U : Type uU}
  {L : Type uL} {M : Type uM} {N : Type uN}
  {A : Type uA} {B : Type uB} {C : Type uC}
  {D : Type uD} {F : Type uF} {G : Type uG}

/-- Refusals and failures are retained, not mapped to successful empty values. -/
def project (state : S → T) (event : L → M) (value : A → B)
    (result : Result R E S L A) : Result R E T M B :=
  ⟨Outcome.map value result.outcome, state result.state, result.events.map event⟩

@[simp] theorem project_refused (state : S → T) (event : L → M) (value : A → B)
    (reason : R) (s : S) (events : List L) :
    project state event value ⟨.refused reason, s, events⟩ =
      (⟨.refused reason, state s, events.map event⟩ : Result R E T M B) := rfl

@[simp] theorem project_failed (state : S → T) (event : L → M) (value : A → B)
    (error : E) (s : S) (events : List L) :
    project state event value ⟨.failed error, s, events⟩ =
      (⟨.failed error, state s, events.map event⟩ : Result R E T M B) := rfl

@[simp] theorem project_identity (result : Result R E S L A) :
    project (fun s => s) (fun e => e) (fun a => a) result = result := by
  cases result with
  | mk outcome state events =>
      cases outcome <;> simp [project, Outcome.map, Outcome.bind]

/-- Vertical composition maps every component in its actual order. -/
theorem project_comp (firstState : S → T) (secondState : T → U)
    (firstEvent : L → M) (secondEvent : M → N)
    (firstValue : A → B) (secondValue : B → C) (result : Result R E S L A) :
    project secondState secondEvent secondValue
        (project firstState firstEvent firstValue result) =
      project (fun s => secondState (firstState s))
        (fun e => secondEvent (firstEvent e))
        (fun a => secondValue (firstValue a)) result := by
  cases result with
  | mk outcome state events =>
      cases outcome <;>
        simp [project, Outcome.map, Outcome.bind, List.map_map, Function.comp_def]

/-- The continuation comparison must hold at the actual intermediate state. -/
theorem project_bind (state : S → T) (event : L → M)
    (input : A → D) (output : B → F) (first : Result R E S L A)
    (next : A → S → Result R E S L B)
    (target : D → T → Result R E T M F)
    (agrees : ∀ a s, project state event output (next a s) =
      target (input a) (state s)) :
    project state event output (bind first next) =
      bind (project state event input first) target := by
  cases first with
  | mk outcome s events =>
      cases outcome with
      | refused reason => rfl
      | failed error => rfl
      | success a =>
          simp only [bind, project, Outcome.map, Outcome.bind]
          rw [← agrees a s]
          simp only [project, List.map_append]

/-- A commuting implementation square; this is an explicit hypothesis to establish. -/
def Refines (state : S → T) (event : L → M) (input : A → D) (output : B → F)
    (source : Stage R E S L A B) (target : Stage R E T M D F) : Prop :=
  ∀ a s, project state event output (source a s) = target (input a) (state s)

/-- Refinement by identity maps changes neither state nor observations. -/
theorem refines_refl (stage : Stage R E S L A B) :
    Refines (fun s => s) (fun e => e) (fun a => a) (fun b => b) stage stage := by
  intro a s
  exact project_identity (stage a s)

/-- Horizontal composition preserves both implementations' short-circuit semantics. -/
theorem sequence_refines (state : S → T) (event : L → M)
    (input : A → D) (middle : B → F) (output : C → G)
    (first : Stage R E S L A B) (second : Stage R E S L B C)
    (firstTarget : Stage R E T M D F) (secondTarget : Stage R E T M F G)
    (hfirst : Refines state event input middle first firstTarget)
    (hsecond : Refines state event middle output second secondTarget) :
    Refines state event input output (sequence first second)
      (sequence firstTarget secondTarget) := by
  intro a s
  change project state event output (bind (first a s) second) =
    bind (firstTarget (input a) (state s)) secondTarget
  rw [project_bind state event middle output (first a s) second secondTarget hsecond]
  rw [hfirst a s]

/-- Vertical composition connects different value, state and event types. -/
theorem refines_trans (firstState : S → T) (secondState : T → U)
    (firstEvent : L → M) (secondEvent : M → N)
    (firstInput : A → C) (secondInput : C → F)
    (firstOutput : B → D) (secondOutput : D → G)
    (first : Stage R E S L A B) (middle : Stage R E T M C D)
    (last : Stage R E U N F G)
    (hfirst : Refines firstState firstEvent firstInput firstOutput first middle)
    (hlast : Refines secondState secondEvent secondInput secondOutput middle last) :
    Refines (fun s => secondState (firstState s))
      (fun e => secondEvent (firstEvent e))
      (fun a => secondInput (firstInput a))
      (fun b => secondOutput (firstOutput b)) first last := by
  intro a s
  change project (fun s => secondState (firstState s))
      (fun e => secondEvent (firstEvent e)) (fun b => secondOutput (firstOutput b))
      (first a s) = last (secondInput (firstInput a)) (secondState (firstState s))
  rw [← project_comp firstState secondState firstEvent secondEvent
    firstOutput secondOutput (first a s)]
  rw [hfirst a s]
  exact hlast (firstInput a) (firstState s)

/-- State invariants transport even when the source result refuses or fails. -/
theorem preserves_of_refines (state : S → T) (event : L → M)
    (input : A → D) (output : B → F)
    (source : Stage R E S L A B) (target : Stage R E T M D F)
    (comparison : Refines state event input output source target)
    (invariant : T → Prop) (preserved : Preserves invariant target) :
    Preserves (fun s => invariant (state s)) source := by
  intro a s hs
  have finalState : state (source a s).state =
      (target (input a) (state s)).state :=
    congrArg (fun r : Result R E T M F => r.state) (comparison a s)
  change invariant (state (source a s).state)
  rw [finalState]
  exact preserved (input a) (state s) hs

/-- Pure-stage comparisons embed into the existing explicit-state semantics. -/
theorem lift_refines (state : S → T) (event : L → M)
    (input : A → D) (output : B → F)
    (source : GRWTSK.Processing.Stage R E A B)
    (target : GRWTSK.Processing.Stage R E D F)
    (comparison : ∀ a, Outcome.map output (source a) = target (input a)) :
    Refines state event input output (lift source) (lift target) := by
  intro a s
  change (⟨Outcome.map output (source a), state s, []⟩ : Result R E T M F) =
    ⟨target (input a), state s, []⟩
  rw [comparison a]

/-- Mapping labels does not delete event occurrences or change their order. -/
theorem event_count (state : S → T) (event : L → M) (value : A → B)
    (result : Result R E S L A) :
    (project state event value result).events.length = result.events.length := by
  simp [project]

/-- The old exact-prefix theorem survives projection with a mapped suffix witness. -/
theorem projected_prefix (state : S → T) (event : L → M) (value : B → F)
    (first : Result R E S L A) (next : A → S → Result R E S L B) :
    ∃ suffix : List M, (project state event value (bind first next)).events =
      first.events.map event ++ suffix := by
  obtain ⟨suffix, retained⟩ := bind_event_prefix first next
  refine ⟨suffix.map event, ?_⟩
  change (bind first next).events.map event = first.events.map event ++ suffix.map event
  rw [retained, List.map_append]

/-- Reflecting exact equality requires reconstruction of all three mapped components. -/
theorem project_injective (state : S → T) (stateBack : T → S)
    (event : L → M) (eventBack : M → L) (value : A → B) (valueBack : B → A)
    (hs : ∀ s, stateBack (state s) = s)
    (he : ∀ e, eventBack (event e) = e)
    (hv : ∀ a, valueBack (value a) = a) :
    ∀ first second : Result R E S L A,
      project state event value first = project state event value second → first = second := by
  intro first second same
  have returned := congrArg (project stateBack eventBack valueBack) same
  have stateId : (fun s => stateBack (state s)) = (fun s => s) := funext hs
  have eventId : (fun e => eventBack (event e)) = (fun e => e) := funext he
  have valueId : (fun a => valueBack (value a)) = (fun a => a) := funext hv
  simpa only [project_comp, stateId, eventId, valueId, project_identity] using returned

/-- Retaining event count is weaker than retaining what the events were. -/
theorem event_projection_can_hide_distinctions :
    let first : Result Unit Unit Unit Bool Unit := ⟨.success (), (), [false]⟩
    let second : Result Unit Unit Unit Bool Unit := ⟨.success (), (), [true]⟩
    first ≠ second ∧
      project id (fun _ : Bool => ()) id first =
        project id (fun _ : Bool => ()) id second := by
  constructor
  · intro same
    have events : [false] = [true] :=
      congrArg (fun r : Result Unit Unit Unit Bool Unit => r.events) same
    have impossible : (false : Bool) = true := (List.cons.inj events).1
    cases impossible
  · rfl

end GRWTSK.Processing.StateTrace.Refinement
