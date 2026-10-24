import Init

/-!
# Label-preserving simulation and effect-policy transfer

Conceptual direction and authorship: grwtsk contributors.
Lean formulation and proof development with AI assistance.

The concrete and abstract transition systems in this file are supplied
independently. A simulation is an additional proof obligation: it must match
every concrete transition by an abstract transition carrying the same label.
Neither transition relation is defined by assuming the desired safety theorem.

The resulting transfer theorem has three separate hypotheses: initial/step
simulation, safety of the abstract system, and a policy bridge from related
abstract transitions to concrete transitions. These are mathematical hypotheses;
the file supplies no claim that a deployed implementation, observation system,
authority mechanism, or effect classifier satisfies them. In particular, a
concrete effect cannot be omitted or relabeled as a silent transition.

The simulation is intentionally strong and uses one abstract step for each
concrete step. A weak or stuttering refinement would require a separate trace
relation and a proof that it preserves every relevant effect label. The results
below prove finite-trace correspondence and safety, not fairness, termination,
or eventual external response.
-/

namespace GRWTSK.TransitionSystems.EffectSimulation

universe uC uA uB uL

/-- Initial states and labeled transitions, supplied without a safety predicate. -/
structure System (State : Type uC) (Label : Type uL) where
  initial : State → Prop
  step : State → Label → State → Prop

/-- A finite execution with its complete, ordered list of transition labels. -/
inductive Trace {State : Type uC} {Label : Type uL} (system : System State Label) :
    State → List Label → State → Prop where
  | nil {state} : Trace system state [] state
  | cons {source intermediate target label labels} :
      system.step source label intermediate →
      Trace system intermediate labels target →
      Trace system source (label :: labels) target

/-- Reachability means a finite trace from an explicitly admitted initial state. -/
def Reachable {State : Type uC} {Label : Type uL}
    (system : System State Label) (state : State) : Prop :=
  ∃ origin labels, system.initial origin ∧ Trace system origin labels state

theorem initial_reachable {State : Type uC} {Label : Type uL}
    {system : System State Label} {state : State}
    (initial : system.initial state) : Reachable system state :=
  ⟨state, [], initial, Trace.nil⟩

/-- Extending a trace retains every earlier label and adds the new label last. -/
theorem Trace.snoc {State : Type uC} {Label : Type uL}
    {system : System State Label} {source target : State}
    {labels : List Label} (trace : Trace system source labels target) :
    ∀ {next label}, system.step target label next →
      Trace system source (labels ++ [label]) next := by
  induction trace with
  | nil =>
      intro next label step
      exact Trace.cons step Trace.nil
  | cons first _rest inductionHypothesis =>
      intro next label step
      exact Trace.cons first (inductionHypothesis step)

theorem reachable_step {State : Type uC} {Label : Type uL}
    {system : System State Label} {source target : State} {label : Label}
    (reachable : Reachable system source)
    (step : system.step source label target) : Reachable system target := by
  cases reachable with
  | intro origin history =>
      cases history with
      | intro labels execution =>
          exact ⟨origin, labels ++ [label], execution.1, execution.2.snoc step⟩

/--
An independently proved forward simulation. The common label is preserved
exactly; the relation alone supplies neither policy meaning nor authority.
-/
structure Simulation {Concrete : Type uC} {Abstract : Type uA} {Label : Type uL}
    (concrete : System Concrete Label) (abstract : System Abstract Label)
    (related : Concrete → Abstract → Prop) : Prop where
  initial : ∀ {source}, concrete.initial source →
    ∃ abstractSource, abstract.initial abstractSource ∧ related source abstractSource
  step : ∀ {source target abstractSource label},
    related source abstractSource → concrete.step source label target →
    ∃ abstractTarget,
      abstract.step abstractSource label abstractTarget ∧ related target abstractTarget

/-- Every concrete finite trace has an abstract trace with exactly the same labels. -/
theorem Simulation.trace_correspondence
    {Concrete : Type uC} {Abstract : Type uA} {Label : Type uL}
    {concrete : System Concrete Label} {abstract : System Abstract Label}
    {related : Concrete → Abstract → Prop}
    (simulation : Simulation concrete abstract related)
    {source target : Concrete} {labels : List Label}
    (trace : Trace concrete source labels target) :
    ∀ {abstractSource}, related source abstractSource →
      ∃ abstractTarget,
        Trace abstract abstractSource labels abstractTarget ∧ related target abstractTarget := by
  induction trace with
  | nil =>
      intro abstractSource sourceRelated
      exact ⟨abstractSource, Trace.nil, sourceRelated⟩
  | cons first _rest inductionHypothesis =>
      intro abstractSource sourceRelated
      cases simulation.step sourceRelated first with
      | intro abstractIntermediate intermediate =>
          cases inductionHypothesis intermediate.2 with
          | intro abstractTarget target =>
              exact ⟨abstractTarget, Trace.cons intermediate.1 target.1, target.2⟩

/-- Every reachable concrete state is related to a reachable abstract state. -/
theorem Simulation.reachable_correspondence
    {Concrete : Type uC} {Abstract : Type uA} {Label : Type uL}
    {concrete : System Concrete Label} {abstract : System Abstract Label}
    {related : Concrete → Abstract → Prop}
    (simulation : Simulation concrete abstract related)
    {state : Concrete} (reachable : Reachable concrete state) :
    ∃ abstractState, Reachable abstract abstractState ∧ related state abstractState := by
  cases reachable with
  | intro origin history =>
      cases history with
      | intro labels execution =>
          cases simulation.initial execution.1 with
          | intro abstractOrigin initial =>
              cases simulation.trace_correspondence execution.2 initial.2 with
              | intro abstractState correspondence =>
                  exact ⟨abstractState,
                    ⟨abstractOrigin, labels, initial.1, correspondence.1⟩,
                    correspondence.2⟩

/--
Every relevant effect on a transition from a reachable state satisfies policy.
Completeness of `isEffect` for a proposed application is a separate obligation.
Safety can hold vacuously when there are no initial states or when `isEffect`
recognizes no labels. Neither safety nor its transfer establishes existence of
executions, completeness of modeled effects, or adequacy of the chosen policy.
-/
def EffectsSafe {State : Type uC} {Label : Type uL}
    (system : System State Label) (isEffect : Label → Prop)
    (policy : State → Label → State → Prop) : Prop :=
  ∀ source label target, Reachable system source → system.step source label target →
    isEffect label → policy source label target

/--
A separate semantic implication between policies on corresponding transitions.
This implication must be proved; it is not supplied by labels, schema validity,
the simulation relation, or a successful abstract safety check.
-/
def PolicyBridge {Concrete : Type uC} {Abstract : Type uA} {Label : Type uL}
    (concrete : System Concrete Label) (abstract : System Abstract Label)
    (related : Concrete → Abstract → Prop)
    (concretePolicy : Concrete → Label → Concrete → Prop)
    (abstractPolicy : Abstract → Label → Abstract → Prop) : Prop :=
  ∀ {source target abstractSource abstractTarget label},
    related source abstractSource → related target abstractTarget →
    concrete.step source label target → abstract.step abstractSource label abstractTarget →
    abstractPolicy abstractSource label abstractTarget → concretePolicy source label target

/--
Abstract effect safety transfers only with both a label-preserving simulation
and an independent policy bridge. No concrete safety proposition appears among
the hypotheses of an individual simulated transition.
-/
theorem Simulation.transfers_effect_safety
    {Concrete : Type uC} {Abstract : Type uA} {Label : Type uL}
    {concrete : System Concrete Label} {abstract : System Abstract Label}
    {related : Concrete → Abstract → Prop}
    {isEffect : Label → Prop}
    {concretePolicy : Concrete → Label → Concrete → Prop}
    {abstractPolicy : Abstract → Label → Abstract → Prop}
    (simulation : Simulation concrete abstract related)
    (bridge : PolicyBridge concrete abstract related concretePolicy abstractPolicy)
    (abstractSafe : EffectsSafe abstract isEffect abstractPolicy) :
    EffectsSafe concrete isEffect concretePolicy := by
  intro source label target reachable concreteStep effect
  cases simulation.reachable_correspondence reachable with
  | intro abstractSource sourceCorrespondence =>
      cases simulation.step sourceCorrespondence.2 concreteStep with
      | intro abstractTarget targetCorrespondence =>
          exact bridge sourceCorrespondence.2 targetCorrespondence.2
            concreteStep targetCorrespondence.1
            (abstractSafe abstractSource label abstractTarget
              sourceCorrespondence.1 targetCorrespondence.1 effect)

/-- Relational composition retains an explicit intermediate-state witness. -/
def RelComp {Concrete : Type uC} {Middle : Type uA} {Abstract : Type uB}
    (first : Concrete → Middle → Prop) (second : Middle → Abstract → Prop)
    (source : Concrete) (target : Abstract) : Prop :=
  ∃ intermediate, first source intermediate ∧ second intermediate target

/-- Label-preserving simulations compose without changing any trace labels. -/
theorem Simulation.comp
    {Concrete : Type uC} {Middle : Type uA} {Abstract : Type uB} {Label : Type uL}
    {concrete : System Concrete Label} {middle : System Middle Label}
    {abstract : System Abstract Label}
    {firstRelation : Concrete → Middle → Prop}
    {secondRelation : Middle → Abstract → Prop}
    (first : Simulation concrete middle firstRelation)
    (second : Simulation middle abstract secondRelation) :
    Simulation concrete abstract (RelComp firstRelation secondRelation) := by
  constructor
  · intro source initial
    cases first.initial initial with
    | intro middleSource firstInitial =>
        cases second.initial firstInitial.1 with
        | intro abstractSource secondInitial =>
            exact ⟨abstractSource, secondInitial.1,
              ⟨middleSource, firstInitial.2, secondInitial.2⟩⟩
  · intro source target abstractSource label correspondence concreteStep
    cases correspondence with
    | intro middleSource relations =>
        cases first.step relations.1 concreteStep with
        | intro middleTarget firstStep =>
            cases second.step relations.2 firstStep.1 with
            | intro abstractTarget secondStep =>
                exact ⟨abstractTarget, secondStep.1,
                  ⟨middleTarget, firstStep.2, secondStep.2⟩⟩

/-- Every system simulates itself by state equality. -/
theorem Simulation.identity {State : Type uC} {Label : Type uL}
    (system : System State Label) : Simulation system system Eq := by
  constructor
  · intro source initial
    exact ⟨source, initial, rfl⟩
  · intro source target abstractSource label correspondence step
    cases correspondence
    exact ⟨target, step, rfl⟩

namespace BypassCounterexample

inductive State where
  | ready
  | done

inductive Label where
  | silent
  | effect

/-- A concrete model with one actual effectful transition. -/
def concrete : System State Label where
  initial state := state = .ready
  step source label target := source = .ready ∧ label = .effect ∧ target = .done

/-- An abstraction that omits all transitions. -/
def absentAbstract : System Unit Label where
  initial _ := True
  step _ _ _ := False

/-- An abstraction that permits only silent transitions. -/
def silentAbstract : System Unit Label where
  initial _ := True
  step _ label _ := label = .silent

def isEffect (label : Label) : Prop := label = .effect

theorem concrete_effect : concrete.step .ready .effect .done :=
  ⟨rfl, rfl, rfl⟩

/-- Omitting effects makes abstract safety vacuous, not transferable. -/
theorem absent_abstract_safe :
    EffectsSafe absentAbstract isEffect (fun _ _ _ => False) := by
  intro _source _label _target _reachable step _effect
  exact step

/-- Relabeling all available steps as silent also makes effect safety vacuous. -/
theorem silent_abstract_safe :
    EffectsSafe silentAbstract isEffect (fun _ _ _ => False) := by
  intro _source label _target _reachable step effect
  change label = Label.silent at step
  change label = Label.effect at effect
  cases step
  cases effect

/-- The concrete transition refutes that same deny-every-effect policy. -/
theorem concrete_not_safe :
    ¬ EffectsSafe concrete isEffect (fun _ _ _ => False) := by
  intro safe
  exact safe .ready .effect .done (initial_reachable rfl) concrete_effect rfl

/-- No choice of state relation can match the concrete effect to an absent step. -/
theorem no_simulation_to_absent (related : State → Unit → Prop) :
    ¬ Simulation concrete absentAbstract related := by
  intro simulation
  cases simulation.initial (source := State.ready) rfl with
  | intro abstractSource initial =>
      cases simulation.step initial.2 concrete_effect with
      | intro abstractTarget correspondence =>
          exact correspondence.1

/-- No choice of state relation can match the concrete effect to a silent step. -/
theorem no_simulation_to_silent (related : State → Unit → Prop) :
    ¬ Simulation concrete silentAbstract related := by
  intro simulation
  cases simulation.initial (source := State.ready) rfl with
  | intro abstractSource initial =>
      cases simulation.step initial.2 concrete_effect with
      | intro abstractTarget correspondence =>
          have impossible : Label.effect = Label.silent := correspondence.1
          cases impossible

end BypassCounterexample

end GRWTSK.TransitionSystems.EffectSimulation
