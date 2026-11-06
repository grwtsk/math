/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.RankedReachability
import Mathlib.Logic.Relation

/-!
# Invariant-restricted progress and simulation of exact-length returns

The existing `GRWTSK.Order.Ranking.Path` and natural-rank bounds are reused.
No second finite-path or natural-rank model is introduced. The bridge to
Mathlib's reflexive transitive closure forgets only length, and its converse
recovers a finite length witness.

The principal consumer `reaches_terminal_within` restricts the existing ranked
termination theorem to the subtype satisfying an invariant. Consequently,
progress need only be supplied at safe unfinished states. The invariant is
preserved by actual edges and the result carries a path, a terminal witness,
the final invariant, and the original rank bound.

The distinct well-founded-induction argument permits an arbitrary well-founded
reversed relation, without claiming a natural step bound. Forward simulations
lift exact-length paths and compose through explicit intermediate witnesses.
Terminal predicates require their own transfer theorem. Additional target
transitions need not be simulated, as the final one-state example demonstrates.

These are abstract relational implications, not external availability,
scheduler fairness, or runtime execution claims. The proofs use supplied
progress, invariant, and simulation hypotheses. The existing rank argument and
the general well-founded argument are not advertised as independent evidence
for those hypotheses. Dependencies inspected at
7d33cee521e3f1c27ffce510a6894bf15b42c89b. No novelty or independent-review claim.
-/

namespace GRWTSK.Order.Ranking

universe u v w

variable {S : Type u} {T : Type v} {U : Type w}

namespace Path

/-- Forgetting length preserves the actual sequence of transitions. -/
theorem toReflTransGen {step : S → S → Prop} {n : Nat} {x y : S}
    (path : Path step n x y) : _root_.Relation.ReflTransGen step x y := by
  induction path with
  | nil x => exact .refl
  | cons edge tail ih => exact (_root_.Relation.ReflTransGen.single edge).trans ih

end Path

/-- The existing exact-length paths describe precisely finite reflexive reachability. -/
theorem reflTransGen_iff_exists_path (step : S → S → Prop) (x y : S) :
    _root_.Relation.ReflTransGen step x y ↔ ∃ n, Path step n x y := by
  constructor
  · intro path
    induction path with
    | refl => exact ⟨0, .nil _⟩
    | tail path edge ih =>
      obtain ⟨n, earlier⟩ := ih
      exact ⟨n + 1, earlier.append (Path.single edge)⟩
  · rintro ⟨n, path⟩
    exact path.toReflTransGen

/-- Restriction to an invariant avoids assuming progress at unreachable unsafe states. -/
theorem reaches_terminal_within (step : S → S → Prop) (rank : S → Nat)
    (terminal invariant : S → Prop)
    (progress : ∀ x, invariant x → ¬ terminal x → ∃ y, step x y)
    (decreases : ∀ x y, step x y → rank y < rank x)
    (preserved : ∀ x y, invariant x → step x y → invariant y)
    (x : S) (initial : invariant x) :
    ∃ n y, Path step n x y ∧ terminal y ∧ invariant y ∧ n ≤ rank x := by
  obtain ⟨n, finish, path, returned, bound⟩ := reaches_terminal
    (fun a b : {a : S // invariant a} => step a.val b.val)
    (fun a => rank a.val) (fun a => terminal a.val)
    (by
      intro current unfinished
      obtain ⟨next, edge⟩ := progress current.val current.property unfinished
      exact ⟨⟨next, preserved current.val next current.property edge⟩, edge⟩)
    (fun a b edge => decreases a.val b.val edge)
    ⟨x, initial⟩
  exact ⟨n, finish.val,
    path.map (fun a : {a : S // invariant a} => a.val) step (fun _ _ edge => edge),
    returned, finish.property, bound⟩

/-- General well-founded descent gives a finite terminal path without a numeric bound. -/
theorem reaches_terminal_wellFounded (step : S → S → Prop) (terminal : S → Prop)
    (wellFounded : WellFounded (fun next current => step current next))
    (progress : ∀ x, ¬ terminal x → ∃ y, step x y) (x : S) :
    ∃ n y, Path step n x y ∧ terminal y := by
  classical
  refine wellFounded.induction x ?_
  intro current ih
  by_cases doneHere : terminal current
  · exact ⟨0, current, .nil current, doneHere⟩
  · obtain ⟨next, edge⟩ := progress current doneHere
    obtain ⟨n, finish, tail, doneThere⟩ := ih next edge
    exact ⟨n + 1, finish, .cons edge tail, doneThere⟩

/-- A source edge has a matching target edge from every related target state. -/
def ForwardSimulation (source : S → S → Prop) (target : T → T → Prop)
    (relates : S → T → Prop) : Prop :=
  ∀ ⦃x x' y⦄, relates x y → source x x' →
    ∃ y', target y y' ∧ relates x' y'

/-- Forward simulation preserves the exact length, not merely endpoint reachability. -/
theorem ForwardSimulation.path
    {source : S → S → Prop} {target : T → T → Prop} {relates : S → T → Prop}
    (simulation : ForwardSimulation source target relates)
    {n : Nat} {start finish : S} (path : Path source n start finish) :
    ∀ y, relates start y → ∃ y', Path target n y y' ∧ relates finish y' := by
  induction path with
  | nil x =>
    intro y related
    exact ⟨y, .nil y, related⟩
  | cons edge tail ih =>
    intro y related
    obtain ⟨next, targetEdge, relatedNext⟩ := simulation related edge
    obtain ⟨finish, targetTail, relatedFinish⟩ := ih next relatedNext
    exact ⟨finish, .cons targetEdge targetTail, relatedFinish⟩

/-- Composing simulations retains the intermediate witness needed to match an edge. -/
theorem ForwardSimulation.comp
    {first : S → S → Prop} {second : T → T → Prop} {third : U → U → Prop}
    {left : S → T → Prop} {right : T → U → Prop}
    (leftSimulation : ForwardSimulation first second left)
    (rightSimulation : ForwardSimulation second third right) :
    ForwardSimulation first third (fun x z => ∃ y, left x y ∧ right y z) := by
  rintro x x' z ⟨y, hxy, hyz⟩ edge
  obtain ⟨y', yedge, hxy'⟩ := leftSimulation hxy edge
  obtain ⟨z', zedge, hyz'⟩ := rightSimulation hyz yedge
  exact ⟨z', zedge, y', hxy', hyz'⟩

/-- The existing ranking theorem supplies the source path; simulation supplies its lift. -/
theorem ForwardSimulation.ranked_return
    {source : S → S → Prop} {target : T → T → Prop}
    {relates : S → T → Prop} {sourceTerminal : S → Prop} {targetTerminal : T → Prop}
    (simulation : ForwardSimulation source target relates) (rank : S → Nat)
    (progress : ∀ x, ¬ sourceTerminal x → ∃ x', source x x')
    (decreases : ∀ x x', source x x' → rank x' < rank x)
    (transfer : ∀ ⦃x y⦄, relates x y → sourceTerminal x → targetTerminal y)
    (x : S) (y : T) (initial : relates x y) :
    ∃ n finish, Path target n y finish ∧ targetTerminal finish ∧ n ≤ rank x := by
  obtain ⟨n, sourceFinish, sourcePath, sourceReturned, bound⟩ :=
    reaches_terminal source rank sourceTerminal progress decreases x
  obtain ⟨finish, targetPath, related⟩ := simulation.path sourcePath y initial
  exact ⟨n, finish, targetPath, transfer related sourceReturned, bound⟩

/-- No natural rank is required when a separate well-foundedness proof is provided. -/
theorem ForwardSimulation.wellFounded_return
    {source : S → S → Prop} {target : T → T → Prop}
    {relates : S → T → Prop} {sourceTerminal : S → Prop} {targetTerminal : T → Prop}
    (simulation : ForwardSimulation source target relates)
    (wellFounded : WellFounded (fun next current => source current next))
    (progress : ∀ x, ¬ sourceTerminal x → ∃ x', source x x')
    (transfer : ∀ ⦃x y⦄, relates x y → sourceTerminal x → targetTerminal y)
    (x : S) (y : T) (initial : relates x y) :
    ∃ n finish, Path target n y finish ∧ targetTerminal finish := by
  obtain ⟨n, sourceFinish, sourcePath, sourceReturned⟩ :=
    reaches_terminal_wellFounded source sourceTerminal wellFounded progress x
  obtain ⟨finish, targetPath, related⟩ := simulation.path sourcePath y initial
  exact ⟨n, finish, targetPath, transfer related sourceReturned⟩

/-- Extra target transitions remain unconstrained by a forward simulation. -/
theorem forward_simulation_does_not_exclude_target_loops :
    ForwardSimulation (fun _ _ : Unit => False) (fun _ _ : Unit => True)
      (fun _ _ => True) ∧
      (∀ n : Nat, (fun _ _ : Unit => True) () ()) := by
  constructor
  · intro x x' y related impossible
    exact False.elim impossible
  · intro n
    trivial

end GRWTSK.Order.Ranking
