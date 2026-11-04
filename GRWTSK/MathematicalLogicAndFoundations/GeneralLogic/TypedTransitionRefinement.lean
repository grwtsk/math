/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservedTransitions

/-!
# Typed comparisons of transition systems

Reuse `Ranking.Path` for exact-length execution paths and `Quiver.Path` for
chains of representation comparisons. These are different mathematical objects:
one counts state transitions, the other composes typed interpretations.

An edge comparison preserves concrete transitions and lifts each abstract edge
from the actual concrete representative. This is stronger than equality of
observations. Both properties compose; finite path lifting preserves length and
endpoint representation. Deadlock is reflected at represented states.

The infinite-trace theorem constructs a coherent sequence of representatives by
classical choice, using the one-step lifting premise at every stage. It does not
exchange an arbitrary family of finite lifts for a coherent infinite lift, and
it asserts no computable selector, fairness, scheduling, timing, or environment
availability. All external matching remains an explicit premise.

Primary arguments: composition of witnesses and induction on existing paths.
The earlier compatible observation quotient embeds as a concrete instance.
Consumer: validating abstraction chains before using abstract counterexamples
or termination observations. Source-level similarities are not comparisons.
Dependencies inspected at 7d33cee521e3 and ea33ef20e873.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Transition.Transport

universe u

open GRWTSK.Order.Ranking

structure System where
  Carrier : Type u
  step : Carrier → Carrier → Prop

/-- A terminal state has no outgoing edge; it need not denote successful completion. -/
def Terminal (system : System.{u}) (x : system.Carrier) : Prop :=
  ∀ y, ¬ system.step x y

/-- Matching starts at the supplied concrete state, not a convenient equal image. -/
structure Comparison (source target : System.{u}) where
  map : source.Carrier → target.Carrier
  forward : ∀ x y, source.step x y → target.step (map x) (map y)
  backward : ∀ x b, target.step (map x) b →
    ∃ y, source.step x y ∧ map y = b

namespace Comparison

variable {A B C D : System.{u}}

def identity (A : System.{u}) : Comparison A A where
  map := id
  forward := fun _ _ h => h
  backward := fun _ b h => ⟨b, h, rfl⟩

def comp (first : Comparison A B) (second : Comparison B C) : Comparison A C where
  map := fun x => second.map (first.map x)
  forward := fun x y h => second.forward _ _ (first.forward x y h)
  backward := by
    intro x c h
    obtain ⟨b, hab, hbc⟩ := second.backward (first.map x) c h
    obtain ⟨y, hxy, hyb⟩ := first.backward x b hab
    exact ⟨y, hxy, (congrArg second.map hyb).trans hbc⟩

@[simp] theorem identity_comp (f : Comparison A B) : (identity A).comp f = f := by
  cases f
  rfl

@[simp] theorem comp_identity (f : Comparison A B) : f.comp (identity B) = f := by
  cases f
  rfl

theorem comp_associative (f : Comparison A B) (g : Comparison B C)
    (h : Comparison C D) : (f.comp g).comp h = f.comp (g.comp h) := rfl

theorem project_path (f : Comparison A B) {n : Nat} {x y : A.Carrier}
    (path : Path A.step n x y) : Path B.step n (f.map x) (f.map y) :=
  path.map f.map B.step f.forward

/-- The starting representative and the number of transitions are both retained. -/
theorem lift_path (f : Comparison A B) {n : Nat} {a b : B.Carrier}
    (path : Path B.step n a b) :
    ∀ x, f.map x = a → ∃ y, Path A.step n x y ∧ f.map y = b := by
  induction path with
  | nil a =>
      intro x hx
      exact ⟨x, .nil x, hx⟩
  | cons edge tail ih =>
      intro x hx
      have atSource : B.step (f.map x) _ := by
        rw [hx]
        exact edge
      obtain ⟨y, hxy, hy⟩ := f.backward x _ atSource
      obtain ⟨z, hyz, hz⟩ := ih y hy
      exact ⟨z, .cons hxy hyz, hz⟩

theorem path_iff (f : Comparison A B) (n : Nat) (x : A.Carrier) (b : B.Carrier) :
    Path B.step n (f.map x) b ↔ ∃ y, Path A.step n x y ∧ f.map y = b := by
  constructor
  · intro h
    exact f.lift_path h x rfl
  · intro h
    obtain ⟨y, path, final⟩ := h
    exact final ▸ f.project_path path

/-- Deadlock reflection follows from both directions, not from state-map injectivity. -/
theorem terminal_iff (f : Comparison A B) (x : A.Carrier) :
    Terminal A x ↔ Terminal B (f.map x) := by
  constructor
  · intro terminal b edge
    obtain ⟨y, concrete, hy⟩ := f.backward x b edge
    exact terminal y concrete
  · intro terminal y edge
    exact terminal (f.map y) (f.forward x y edge)

/-- The old source-fiber matching condition is a consequence of this comparison. -/
theorem compatible (f : Comparison A B) :
    Observation.Transition.Compatible f.map A.step := by
  intro x y same next edge
  have abstract : B.step (f.map y) (f.map next) := by
    change f.map x = f.map y at same
    rw [← same]
    exact f.forward x next edge
  obtain ⟨result, lifted, final⟩ := f.backward y (f.map next) abstract
  exact ⟨result, lifted, final.symm⟩

/-- A determined concrete invariant can be checked using represented abstract paths. -/
theorem represented_path_preserves (f : Comparison A B) (invariant : A.Carrier → Prop)
    (known : Observation.Determined f.map invariant)
    (preserved : ∀ x y, invariant x → A.step x y → invariant y)
    {n : Nat} {x y : A.Carrier}
    (path : Path B.step n (f.map x) (f.map y)) (initial : invariant x) : invariant y := by
  obtain ⟨z, concrete, final⟩ := f.lift_path path x rfl
  exact (known z y final).mp (concrete.preserves invariant preserved initial)

/-- A selected matching edge; classical choice is explicit and non-executable. -/
noncomputable def successor (f : Comparison A B) (x : A.Carrier) (b : B.Carrier)
    (edge : B.step (f.map x) b) : {y : A.Carrier // A.step x y ∧ f.map y = b} :=
  ⟨Classical.choose (f.backward x b edge), Classical.choose_spec (f.backward x b edge)⟩

/-- Successor selection is coherent because it consumes the previously chosen state. -/
noncomputable def liftTrace (f : Comparison A B) (trace : Nat → B.Carrier)
    (valid : ∀ n, B.step (trace n) (trace (n + 1)))
    (initial : A.Carrier) (starts : f.map initial = trace 0) :
    (n : Nat) → {x : A.Carrier // f.map x = trace n}
  | 0 => ⟨initial, starts⟩
  | n + 1 =>
      let previous := f.liftTrace trace valid initial starts n
      let edge : B.step (f.map previous.val) (trace (n + 1)) := by
        rw [previous.property]
        exact valid n
      let next := f.successor previous.val (trace (n + 1)) edge
      ⟨next.val, next.property.2⟩

theorem liftTrace_step (f : Comparison A B) (trace : Nat → B.Carrier)
    (valid : ∀ n, B.step (trace n) (trace (n + 1)))
    (initial : A.Carrier) (starts : f.map initial = trace 0) (n : Nat) :
    A.step (f.liftTrace trace valid initial starts n).val
      (f.liftTrace trace valid initial starts (n + 1)).val := by
  let previous := f.liftTrace trace valid initial starts n
  have edge : B.step (f.map previous.val) (trace (n + 1)) := by
    rw [previous.property]
    exact valid n
  exact (f.successor previous.val (trace (n + 1)) edge).property.1

/-- Countably many matched steps give an infinite lift, with all choices disclosed. -/
theorem trace_lifts (f : Comparison A B) (trace : Nat → B.Carrier)
    (valid : ∀ n, B.step (trace n) (trace (n + 1)))
    (initial : A.Carrier) (starts : f.map initial = trace 0) :
    ∃ concrete : Nat → A.Carrier, concrete 0 = initial ∧
      (∀ n, A.step (concrete n) (concrete (n + 1))) ∧
      (∀ n, f.map (concrete n) = trace n) := by
  refine ⟨fun n => (f.liftTrace trace valid initial starts n).val, rfl, ?_, ?_⟩
  · exact f.liftTrace_step trace valid initial starts
  · intro n
    exact (f.liftTrace trace valid initial starts n).property

end Comparison

instance systemQuiver : Quiver (System.{u}) where
  Hom := Comparison

namespace Chain

variable {A B C : System.{u}}

def comparison : {A B : System.{u}} → Quiver.Path A B → Comparison A B
  | _, _, .nil => Comparison.identity _
  | _, _, .cons prefix last => (comparison prefix).comp last

theorem comparison_comp (first : Quiver.Path A B) (second : Quiver.Path B C) :
    comparison (first.comp second) = (comparison first).comp (comparison second) := by
  induction second with
  | nil => exact (Comparison.comp_identity (comparison first)).symm
  | cons prefix last ih =>
      change (comparison (first.comp prefix)).comp last =
        (comparison first).comp ((comparison prefix).comp last)
      rw [ih]
      exact Comparison.comp_associative _ _ _

/-- The representation map is the same generic typed interpreter used for evidence. -/
theorem map_evaluation (path : Quiver.Path A B) (x : A.Carrier) :
    (comparison path).map x =
      GRWTSK.CategoryTheory.TypedChain.evaluate (fun S : System.{u} => S.Carrier)
        (fun edge => edge.map) path x := by
  induction path with
  | nil => rfl
  | cons prefix last ih => exact congrArg last.map ih

/-- The number of representation changes never substitutes for execution-path length. -/
theorem execution_path_iff (chain : Quiver.Path A B) (n : Nat)
    (x : A.Carrier) (b : B.Carrier) :
    Path B.step n ((comparison chain).map x) b ↔
      ∃ y, Path A.step n x y ∧ (comparison chain).map y = b :=
  (comparison chain).path_iff n x b

end Chain

/-- Reuse the previously defined observation quotient, retaining its matching premise. -/
def fromObservation {X Y : Type u} (observe : X → Y) (step : X → X → Prop)
    (compatible : Observation.Transition.Compatible observe step) :
    Comparison ⟨X, step⟩ ⟨Y, Observation.Transition.projected observe step⟩ where
  map := observe
  forward := fun _ _ edge => Observation.Transition.project_edge observe step edge
  backward := fun x _ edge => Observation.Transition.lift_edge observe step compatible x edge

end GRWTSK.Logic.Transition.Transport
