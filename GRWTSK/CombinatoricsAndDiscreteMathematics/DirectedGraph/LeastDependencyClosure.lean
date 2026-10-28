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
  roots := by
    intro a ha
    exact Closure.root ha
  closed := by
    intro a b ha hab
    exact Closure.dependency ha hab

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

/-- A finite inventory names every vertex exactly once. Completeness and
duplicate freedom are mathematical premises, not properties inferred from a
filesystem scan. -/
structure FiniteInventory (α : Type u) where
  vertices : List α
  nodup : vertices.Nodup
  complete : ∀ a, a ∈ vertices

/-- A retained vertex contributes its supplied natural weight. Membership is
explicitly decidable; no classical decision procedure is introduced. -/
def vertexCost (weight : α → Nat) (retained : α → Prop)
    [DecidablePred retained] (a : α) : Nat :=
  if retained a then weight a else 0

theorem vertexCost_mono (weight : α → Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (h : Included s t) (a : α) :
    vertexCost weight s a ≤ vertexCost weight t a := by
  by_cases hs : s a
  · rw [vertexCost, vertexCost, if_pos hs, if_pos (h hs)]
  · rw [vertexCost, if_neg hs]
    exact Nat.zero_le _

/-- Finite weighted cost over list occurrences. The general list theorem allows
repeated vertices; `finiteWeightedCost` below uses a complete duplicate-free
inventory to count each vertex exactly once. -/
def weightedCost (weight : α → Nat) (retained : α → Prop)
    [DecidablePred retained] : List α → Nat
  | [] => 0
  | a :: rest => vertexCost weight retained a + weightedCost weight retained rest

/-- Inclusion monotonicity is proved from natural-weight arithmetic, rather
than assumed as a premise about an unspecified cost function. -/
theorem weightedCost_mono (vertices : List α) (weight : α → Nat)
    {s t : α → Prop} [DecidablePred s] [DecidablePred t]
    (h : Included s t) : weightedCost weight s vertices ≤ weightedCost weight t vertices := by
  induction vertices with
  | nil => exact Nat.le_refl 0
  | cons a rest ih =>
    exact Nat.add_le_add (vertexCost_mono weight h a) ih

/-- One extra positively weighted vertex gives a strict increase, provided the
smaller selection is included in the larger one. -/
theorem weightedCost_lt_of_extra (vertices : List α) (weight : α → Nat)
    {s t : α → Prop} [DecidablePred s] [DecidablePred t]
    (h : Included s t) {a : α} (ha : a ∈ vertices)
    (hs : ¬ s a) (ht : t a) (hw : 0 < weight a) :
    weightedCost weight s vertices < weightedCost weight t vertices := by
  induction vertices with
  | nil => exact False.elim (List.not_mem_nil ha)
  | cons b rest ih =>
    cases List.mem_cons.mp ha with
    | inl hab =>
      cases hab
      change vertexCost weight s a + weightedCost weight s rest <
        vertexCost weight t a + weightedCost weight t rest
      rw [vertexCost, vertexCost, if_neg hs, if_pos ht]
      exact Nat.lt_of_lt_of_le
        (Nat.add_lt_add_right hw (weightedCost weight s rest))
        (Nat.add_le_add_left (weightedCost_mono rest weight h) (weight a))
    | inr ha =>
      exact Nat.lt_of_le_of_lt
        (Nat.add_le_add_right (vertexCost_mono weight h b) (weightedCost weight s rest))
        (Nat.add_lt_add_left (ih ha) (vertexCost weight t b))

/-- Actual finite vertex cost: inventory completeness excludes omitted vertices
and duplicate freedom excludes counting one vertex more than once. -/
def finiteWeightedCost (inventory : FiniteInventory α) (weight : α → Nat)
    (retained : α → Prop) [DecidablePred retained] : Nat :=
  weightedCost weight retained inventory.vertices

theorem finiteWeightedCost_mono (inventory : FiniteInventory α) (weight : α → Nat)
    {s t : α → Prop} [DecidablePred s] [DecidablePred t] (h : Included s t) :
    finiteWeightedCost inventory weight s ≤ finiteWeightedCost inventory weight t :=
  weightedCost_mono inventory.vertices weight h

/-- The least prerequisite closure minimizes this concrete finite weighted sum.
The closure's decidable-membership procedure and a complete duplicate-free
inventory are explicit inputs; monotonicity is a proved theorem above. -/
theorem finiteWeightedCost_closure_minimizes (inventory : FiniteInventory α)
    (weight : α → Nat) {required : α → Prop} {depends : α → α → Prop}
    [DecidablePred (Closure required depends)]
    {retained : α → Prop} [DecidablePred retained]
    (h : Feasible required depends retained) :
    finiteWeightedCost inventory weight (Closure required depends) ≤
      finiteWeightedCost inventory weight retained :=
  finiteWeightedCost_mono inventory weight (closure_least h)

/-- Completeness makes every extra positive-weight vertex visible to the cost. -/
theorem finiteWeightedCost_lt_of_extra (inventory : FiniteInventory α)
    (weight : α → Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (h : Included s t)
    {a : α} (hs : ¬ s a) (ht : t a) (hw : 0 < weight a) :
    finiteWeightedCost inventory weight s < finiteWeightedCost inventory weight t :=
  weightedCost_lt_of_extra inventory.vertices weight h (inventory.complete a) hs ht hw

/-- With positive vertex weights, a feasible selection whose cost is no larger
than the closure cannot retain any extra vertex. No predicate-extensionality
axiom is needed: the conclusion is pointwise inclusion. -/
theorem finiteWeightedCost_minimum_has_no_extra (inventory : FiniteInventory α)
    (weight : α → Nat) (positive : ∀ a, 0 < weight a)
    {required : α → Prop} {depends : α → α → Prop}
    [DecidablePred (Closure required depends)]
    {retained : α → Prop} [DecidablePred retained]
    (h : Feasible required depends retained)
    (hcost : finiteWeightedCost inventory weight retained ≤
      finiteWeightedCost inventory weight (Closure required depends)) :
    Included retained (Closure required depends) := by
  intro a ha
  by_cases hc : Closure required depends a
  · exact hc
  · exact False.elim (Nat.not_lt_of_ge hcost
      (finiteWeightedCost_lt_of_extra inventory weight (closure_least h) hc ha (positive a)))

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
