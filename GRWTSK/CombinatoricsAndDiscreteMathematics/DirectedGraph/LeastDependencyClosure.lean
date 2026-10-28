import Init

/-!
# Least dependency closure

Local attribution: grwtsk contributors.

Required vertices and directed dependency edges determine a least feasible
retained predicate. Every cost monotone under inclusion is minimized by that
closure. This is a mathematical statement about a supplied dependency relation;
it does not discover filesystem dependencies or justify deleting a file.

The result gives no complexity bound, SAT solver, or conclusion about the
Exponential Time Hypothesis.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u

variable {α : Type u}

/-- Pointwise inclusion, without a finiteness or decidable-membership premise. -/
def Included (s t : α → Prop) : Prop := ∀ ⦃a⦄, s a → t a

/-- A feasible retained predicate contains every required vertex and every
dependency of a vertex that it contains. `depends a b` means that `a` needs `b`.
-/
structure Feasible (required : α → Prop) (depends : α → α → Prop)
    (retained : α → Prop) : Prop where
  roots : Included required retained
  closed : ∀ ⦃a b⦄, retained a → depends a b → retained b

/-- A vertex is in the closure exactly when it has a finite derivation from a
required vertex by following dependency edges. Cycles need no special case. -/
inductive Closure (required : α → Prop) (depends : α → α → Prop) : α → Prop
  | root {a} : required a → Closure required depends a
  | dependency {a b} : Closure required depends a → depends a b →
      Closure required depends b

theorem closure_feasible (required : α → Prop) (depends : α → α → Prop) :
    Feasible required depends (Closure required depends) where
  roots := Closure.root
  closed := Closure.dependency

/-- Every feasible selection contains the entire required dependency closure. -/
theorem closure_least {required : α → Prop} {depends : α → α → Prop}
    {retained : α → Prop} (h : Feasible required depends retained) :
    Included (Closure required depends) retained := by
  intro a ha
  induction ha with
  | root hr => exact h.roots hr
  | dependency _ hd ih => exact h.closed ih hd

/-- A vertex is unavoidable precisely when it belongs to the closure. -/
theorem closure_iff_unavoidable {required : α → Prop} {depends : α → α → Prop}
    {a : α} :
    Closure required depends a ↔
      ∀ retained, Feasible required depends retained → retained a := by
  constructor
  · intro ha retained h
    exact closure_least h ha
  · intro h
    exact h _ (closure_feasible required depends)

/-- Enlarging the required set or the dependency relation enlarges the closure.
This makes a newly discovered dependency an explicit strengthening of the model.
-/
theorem closure_mono {required required' : α → Prop}
    {depends depends' : α → α → Prop}
    (hr : Included required required')
    (hd : ∀ ⦃a b⦄, depends a b → depends' a b) :
    Included (Closure required depends) (Closure required' depends') := by
  apply closure_least
  constructor
  · intro a ha
    exact Closure.root (hr ha)
  · intro a b ha hab
    exact Closure.dependency ha (hd hab)

/-- Cost monotonicity is an explicit premise. A user-defined cost that rewards
extra retained vertices need not satisfy it. -/
def MonotoneCost (cost : (α → Prop) → Nat) : Prop :=
  ∀ ⦃s t⦄, Included s t → cost s ≤ cost t

/-- The least closure is a global cost minimum over all feasible predicates
for every supplied inclusion-monotone natural-valued cost. Finiteness is not
needed for this implication; concrete weighted finite sums may instantiate it.
-/
theorem closure_minimizes {required : α → Prop} {depends : α → α → Prop}
    {cost : (α → Prop) → Nat} (hm : MonotoneCost cost)
    {retained : α → Prop} (h : Feasible required depends retained) :
    cost (Closure required depends) ≤ cost retained :=
  hm (closure_least h)

/-- Erasing any unavoidable vertex makes a selection infeasible, even if all
other vertices are retained. This is inclusion minimality, separately from cost.
-/
theorem no_feasible_erasure {required : α → Prop} {depends : α → α → Prop}
    {retained : α → Prop} {a : α} (ha : Closure required depends a) :
    ¬ Feasible required depends (fun x => retained x ∧ x ≠ a) := by
  intro h
  exact (closure_least h ha).2 rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
