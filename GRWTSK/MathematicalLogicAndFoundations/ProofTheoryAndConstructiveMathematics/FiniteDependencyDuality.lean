import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteHornSemantics
import GRWTSK.Combinatorics.FiniteDependencyClosure

/-!
# Exact orientation bridge for finite dependency closure

Local attribution: grwtsk contributors. MIT.

The CorkscrewChamberCap dependency engine invalidates a consumer when one of
its prerequisites changes; its closure moves *backwards* along
consumer-to-prerequisite arrows. The least prerequisite closure used by the
goal-pruning family moves from a selected goal to its prerequisites.

These are not the same relation on the same graph. With an explicit reversal
of the edge inventory, the two independently authored closure constructions
do agree, including seeded cycles and zero-edge seed cases. The theorem
does not assert that a filename, import, or arbitrary search similarity is a
mathematically valid rule edge.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit, application extraction and runtime improvement: NOT_RUN/NOT_MEASURED.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u

/-- Independent semantics are related by an explicit orientation reversal:
the least closure edge x -> y is represented by x in dependencies y. -/
theorem affectedClosure_iff_reversedLeastClosure
    {α : Type u} [Fintype α] [DecidableEq α]
    (dependencies : α → Finset α) (seeds : Finset α) (a : α) :
    a ∈ affectedClosure dependencies seeds ↔
      Closure (fun x => x ∈ seeds)
        (fun x y => x ∈ dependencies y) a := by
  constructor
  · intro h
    obtain ⟨seed, hseed, path⟩ :=
      (mem_affectedClosure_iff dependencies seeds a).mp h
    induction path with
    | refl => exact Closure.root hseed
    | step hedge _ ih => exact Closure.dependency ih hedge
  · intro hc
    induction hc with
    | root hseed =>
        exact seeds_subset_affectedClosure dependencies seeds hseed
    | dependency _ hedge ih =>
        exact affectedClosure_closed dependencies seeds _ _ hedge ih

/-- Reverse a finite *source rule* graph as a genuine Finset dependency
inventory, without guessing edges from source names. An edge (a,b) of the
original graph places a in the reverse dependencies of b. -/
def incomingRuleDependencies {α : Type u} [Fintype α] [DecidableEq α]
    (rules : List (Rule α)) (node : α) : Finset α :=
  Finset.univ.filter (fun candidate =>
    (candidate, node) ∈ ruleDependencyEdges rules)

/-- Exact inverse orientation between the two concrete graph carriers. -/
theorem mem_incomingRuleDependencies_iff
    {α : Type u} [Fintype α] [DecidableEq α]
    (rules : List (Rule α)) (a b : α) :
    a ∈ incomingRuleDependencies rules b ↔
      (a, b) ∈ ruleDependencyEdges rules := by
  simp [incomingRuleDependencies]

/-- A source-derived goal slice equals the affected closure in the
reverse-edge engine. This is a finite-set *navigation* equivalence,
not a derivation certificate or a proof that the input rules are valid. -/
theorem affectedClosure_iff_sourceGoalSlice
    {α : Type u} [Fintype α] [DecidableEq α]
    (rules : List (Rule α)) (seeds : Finset α) (a : α) :
    a ∈ affectedClosure (incomingRuleDependencies rules) seeds ↔
      goalSlice (fun r => r ∈ rules) (fun x => x ∈ seeds) a := by
  constructor
  · intro h
    have hc : Closure (fun x => x ∈ seeds)
        (fun x y => x ∈ incomingRuleDependencies rules y) a :=
      (affectedClosure_iff_reversedLeastClosure
        (incomingRuleDependencies rules) seeds a).mp h
    change Closure (fun x => x ∈ seeds)
      (RuleDepends (fun r => r ∈ rules)) a
    induction hc with
    | root hs => exact Closure.root hs
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_ruleDependencyEdges_iff rules _ _).mp
            ((mem_incomingRuleDependencies_iff rules _ _).mp hedge))
  · intro h
    change Closure (fun x => x ∈ seeds)
      (RuleDepends (fun r => r ∈ rules)) a at h
    apply (affectedClosure_iff_reversedLeastClosure
      (incomingRuleDependencies rules) seeds a).mpr
    induction h with
    | root hs => exact Closure.root hs
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_incomingRuleDependencies_iff rules _ _).mpr
            ((mem_ruleDependencyEdges_iff rules _ _).mpr hedge))

/-- Membership is also equivalent to the finite inventory's constructive
prerequisite closure under the corresponding source edges. Both algorithms
compute the same set when their edge orientations are reconciled. -/
theorem affectedClosure_iff_finiteSourceSlice
    {α : Type u} [Fintype α] [DecidableEq α]
    (inventory : FiniteInventory α)
    (rules : List (Rule α)) (seeds : Finset α) (a : α) :
    a ∈ affectedClosure (incomingRuleDependencies rules) seeds ↔
      finitePrerequisiteClosure inventory
        (fun x => x ∈ seeds)
        (fun x y => (x, y) ∈ ruleDependencyEdges rules) a := by
  letI : DecidablePred (fun x : α => x ∈ seeds) := by
    intro x
    infer_instance
  exact (affectedClosure_iff_sourceGoalSlice rules seeds a).trans
    (finiteSourceSlice_iff_goalSlice inventory rules
      (fun x => x ∈ seeds) a).symm

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
