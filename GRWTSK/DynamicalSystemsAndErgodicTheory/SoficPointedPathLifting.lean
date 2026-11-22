/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import Mathlib.Tactic

/-!
# Pointed path lifting

Exact lifting of finite paths from every chosen source representative is
equivalent to a one-edge condition. Terminal acceptance additionally needs
a compatible terminal predicate. Closure of a lifted walk is a separate
condition on its endpoints in the source fiber.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

variable {S V A : Type*} {source : LabeledGraph S A} {observed : LabeledGraph V A}

/-- Each observed edge lifts from the chosen representative of its start. -/
def LiftsEdges (source : LabeledGraph S A) (observed : LabeledGraph V A)
    (observe : S → V) : Prop :=
  ∀ s a v, observed.edge (observe s) a v →
    ∃ t, source.edge s a t ∧ observe t = v

theorem liftsEdges_iff_pointedPaths (observe : S → V) :
    LiftsEdges source observed observe ↔
      ∀ s w v, WordPath observed (observe s) w v →
        ∃ t, WordPath source s w t ∧ observe t = v := by
  constructor
  · intro lift
    have aux {v u : V} {w : List A} (path : WordPath observed v w u) :
        ∀ s, observe s = v → ∃ t, WordPath source s w t ∧ observe t = u := by
      induction path with
      | nil v =>
        intro s hs
        exact ⟨s, .nil s, hs⟩
      | cons a tail head _ ih =>
        intro s hs
        obtain ⟨next, hedge, hnext⟩ := lift s a _ (hs ▸ head)
        obtain ⟨finish, htail, hfinish⟩ := ih next hnext
        exact ⟨finish, .cons a tail hedge htail, hfinish⟩
    exact fun s _ _ path => aux path s rfl
  · intro lift s a v edge
    obtain ⟨t, path, ht⟩ := lift s [a] v (.cons a [] edge (.nil v))
    cases path with
    | cons _ _ head tail =>
      cases tail
      exact ⟨_, head, ht⟩

theorem pointedPath_projection (observe : S → V)
    (project : ∀ s a t, source.edge s a t → observed.edge (observe s) a (observe t))
    {s t : S} {w : List A} (path : WordPath source s w t) :
    WordPath observed (observe s) w (observe t) := by
  induction path with
  | nil s => exact .nil (observe s)
  | cons a w head _ ih => exact .cons a w (project _ _ _ head) ih

/-- Exact acceptance from a fixed source start for any terminal predicate
that agrees on the observation fibers. Taking True gives prefix language. -/
theorem pointed_terminal_language_iff (observe : S → V)
    (project : ∀ s a t, source.edge s a t → observed.edge (observe s) a (observe t))
    (lift : LiftsEdges source observed observe) (terminal : S → Prop) (accept : V → Prop)
    (agrees : ∀ s, terminal s ↔ accept (observe s)) (s : S) (w : List A) :
    (∃ t, WordPath source s w t ∧ terminal t) ↔
      ∃ v, WordPath observed (observe s) w v ∧ accept v := by
  constructor
  · rintro ⟨t, path, ht⟩
    exact ⟨observe t, pointedPath_projection observe project path, (agrees t).mp ht⟩
  · rintro ⟨v, path, hv⟩
    obtain ⟨t, lifted, hobs⟩ := (liftsEdges_iff_pointedPaths observe).mp lift s w v path
    exact ⟨t, lifted, (agrees t).mpr (hobs.symm ▸ hv)⟩

/-- A singleton observation fiber at the start suffices to return closed
walks. Other fibers may still contain several source states. -/
theorem pointed_closed_path_iff_of_singleton_fiber (observe : S → V)
    (project : ∀ s a t, source.edge s a t → observed.edge (observe s) a (observe t))
    (lift : LiftsEdges source observed observe) (s : S)
    (fiber : ∀ t, observe t = observe s → t = s) (w : List A) :
    WordPath source s w s ↔ WordPath observed (observe s) w (observe s) := by
  constructor
  · exact pointedPath_projection observe project
  · intro path
    obtain ⟨t, path', ht⟩ := (liftsEdges_iff_pointedPaths observe).mp lift s w (observe s) path
    exact (fiber t ht) ▸ path'

private def advancing : LabeledGraph ℕ Unit :=
  ⟨fun s _ t => t = s + 1⟩

private theorem advancing_endpoint {s t : ℕ} {w : List Unit}
    (path : WordPath advancing s w t) : t = s + w.length := by
  induction path with
  | nil => simp
  | cons a w head _ ih =>
    change _ = _ + 1 at head
    simp only [List.length_cons]
    omega

/-- Even lifting from every representative does not lift a 95-edge loop
to a closed source walk. Here every source edge strictly advances. -/
theorem pointed_lifting_does_not_preserve_return95 :
    LiftsEdges advancing (fullShiftGraph Unit) (fun _ => ()) ∧
    WordPath (fullShiftGraph Unit) () (List.replicate 95 ()) () ∧
    ∀ s : ℕ, ¬ WordPath advancing s (List.replicate 95 ()) s := by
  refine ⟨fun s _ v _ => ⟨s + 1, rfl, Subsingleton.elim _ v⟩,
    fullShiftGraph_path_all _, fun s path => ?_⟩
  have h := advancing_endpoint path
  simp at h

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
