/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPointedPathLifting

/-!
# A local criterion for exact observed graphs

The image graph collects the projected edges of all representatives.
Exact lifting from a chosen representative requires the same labeled
successor observations throughout its fiber. A larger edge relation
cannot repair a violation of this condition.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

variable {S V A : Type*}

/-- The existential image of the full source edge relation. -/
def observationGraph (source : LabeledGraph S A) (observe : S → V) : LabeledGraph V A :=
  ⟨fun v a w => ∃ s t, observe s = v ∧ source.edge s a t ∧ observe t = w⟩

/-- Every pair of representatives has identical labeled successor observations. -/
def FiberSuccessorsAgree (source : LabeledGraph S A) (observe : S → V) : Prop :=
  ∀ s t, observe s = observe t → ∀ a v,
    (∃ u, source.edge s a u ∧ observe u = v) ↔
    (∃ u, source.edge t a u ∧ observe u = v)

theorem observationGraph_lifts_iff (source : LabeledGraph S A) (observe : S → V) :
    LiftsEdges source (observationGraph source observe) observe ↔
      FiberSuccessorsAgree source observe := by
  constructor
  · intro lift s t same a v
    constructor
    · rintro ⟨u, edge, finish⟩
      exact lift t a v ⟨s, u, same, edge, finish⟩
    · rintro ⟨u, edge, finish⟩
      exact lift s a v ⟨t, u, same.symm, edge, finish⟩
  · intro agrees s a v
    rintro ⟨t, u, same, edge, finish⟩
    exact (agrees t s same a v).mp ⟨u, edge, finish⟩

theorem exists_projecting_lifting_graph_iff (source : LabeledGraph S A) (observe : S → V) :
    (∃ graph : LabeledGraph V A,
      (∀ s a t, source.edge s a t → graph.edge (observe s) a (observe t)) ∧
      LiftsEdges source graph observe) ↔ FiberSuccessorsAgree source observe := by
  rw [← observationGraph_lifts_iff]
  constructor
  · rintro ⟨graph, project, lift⟩ s a v ⟨t, u, start, edge, finish⟩
    apply lift s a v
    rw [← start, ← finish]
    exact project t a u edge
  · intro lift
    exact ⟨observationGraph source observe, fun s _ t edge => ⟨s, t, rfl, edge, rfl⟩, lift⟩

/-- Two same-label transitions from merged starts with different observed
destinations obstruct exact lifting when the second transition is unique. -/
theorem not_fiberSuccessorsAgree_of_distinct_targets
    (source : LabeledGraph S A) (observe : S → V) {s t x y : S} {a : A}
    (merge : observe s = observe t) (sx : source.edge s a x) (_ty : source.edge t a y)
    (unique : ∀ z, source.edge t a z → z = y) (different : observe x ≠ observe y) :
    ¬ FiberSuccessorsAgree source observe := by
  intro agree
  obtain ⟨z, tz, obs⟩ := (agree s t merge a (observe x)).mp ⟨x, sx, rfl⟩
  exact different (obs.symm.trans (congrArg observe (unique z tz)))

/-- Equality of successor observations is sufficient for exact finite
terminal acceptance in the image graph, with a compatible terminal test. -/
theorem observationGraph_terminal_language_iff (source : LabeledGraph S A) (observe : S → V)
    (agree : FiberSuccessorsAgree source observe) (terminal : S → Prop) (accept : V → Prop)
    (compatible : ∀ s, terminal s ↔ accept (observe s)) (s : S) (w : List A) :
    (∃ t, WordPath source s w t ∧ terminal t) ↔
      ∃ v, WordPath (observationGraph source observe) (observe s) w v ∧ accept v :=
  pointed_terminal_language_iff (source := source) (observed := observationGraph source observe) observe (fun a _ b edge => ⟨a, b, rfl, edge, rfl⟩)
    ((observationGraph_lifts_iff source observe).mpr agree) terminal accept compatible s w

private def oneLiveState : LabeledGraph Bool Unit :=
  ⟨fun s _ t => s = true ∧ t = true⟩

/-- An observed loop from the live representative cannot lift from the
merged terminal representative, even though the image contains the edge. -/
theorem live_terminal_merge_control :
    (observationGraph oneLiveState (fun _ => ())).edge () () () ∧
      ¬ FiberSuccessorsAgree oneLiveState (fun _ => ()) := by
  refine ⟨⟨true, true, rfl, ⟨rfl, rfl⟩, rfl⟩, ?_⟩
  intro agree
  obtain ⟨_, edge, _⟩ := (agree true false rfl () ()).mp ⟨true, ⟨rfl, rfl⟩, rfl⟩
  exact Bool.noConfusion edge.1

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
