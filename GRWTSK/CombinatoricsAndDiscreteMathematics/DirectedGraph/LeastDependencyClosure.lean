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
    exact Nat.le_refl _
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
  | nil => cases ha
  | cons b rest ih =>
    cases ha with
    | head =>
      change vertexCost weight s a + weightedCost weight s rest <
        vertexCost weight t a + weightedCost weight t rest
      rw [vertexCost, vertexCost, if_neg hs, if_pos ht]
      exact Nat.lt_of_lt_of_le
        (Nat.add_lt_add_right hw (weightedCost weight s rest))
        (Nat.add_le_add_left (weightedCost_mono rest weight h) (weight a))
    | tail _ ha =>
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

/-- Erasing a retained positive-weight vertex strictly reduces concrete finite
cost. Whether that erasure remains feasible is a separate dependency question. -/
theorem finiteWeightedCost_erasure_lt [DecidableEq α]
    (inventory : FiniteInventory α) (weight : α → Nat)
    {retained : α → Prop} [DecidablePred retained] {a : α}
    (ha : retained a) (hw : 0 < weight a) :
    finiteWeightedCost inventory weight (fun x => retained x ∧ x ≠ a) <
      finiteWeightedCost inventory weight retained := by
  apply finiteWeightedCost_lt_of_extra inventory weight (a := a)
  · intro x hx
    exact hx.1
  · intro hx
    exact hx.2 rfl
  · exact ha
  · exact hw

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

/-- One finite-pivot update. Both legs read the same previous relation, rather
than a partially updated row. -/
def pivotStep (relation : α → α → Prop) (pivot : α) (a b : α) : Prop :=
  relation a b ∨ (relation a pivot ∧ relation pivot b)

instance pivotStepDecidable (relation : α → α → Prop) [DecidableRel relation]
    (pivot : α) : DecidableRel (pivotStep relation pivot) := by
  intro a b
  unfold pivotStep
  infer_instance

/-- Finite-pivot closure, processed tail first. An executable matrix refinement
must therefore visit the reversed inventory order and use a snapshot per pivot.
The definition itself gives no shared-table running-time bound. -/
def pivotClosure (relation : α → α → Prop) : List α → α → α → Prop
  | [], a, b => relation a b
  | pivot :: rest, a, b => pivotStep (pivotClosure relation rest) pivot a b

instance pivotClosureDecidable (relation : α → α → Prop) [DecidableRel relation]
    (pivots : List α) : DecidableRel (pivotClosure relation pivots) :=
  match pivots with
  | [] => inferInstanceAs (DecidableRel relation)
  | pivot :: rest =>
    letI : DecidableRel (pivotClosure relation rest) := pivotClosureDecidable relation rest
    pivotStepDecidable (pivotClosure relation rest) pivot

/-- Composition through a specified vertex is already represented. -/
def ClosedThrough (relation : α → α → Prop) (pivot : α) : Prop :=
  ∀ ⦃a b⦄, relation a pivot → relation pivot b → relation a b

theorem pivotStep_closed_self (relation : α → α → Prop) (pivot : α) :
    ClosedThrough (pivotStep relation pivot) pivot := by
  intro a b ha hb
  have hap : relation a pivot := by
    cases ha with
    | inl h => exact h
    | inr h => exact h.1
  have hpb : relation pivot b := by
    cases hb with
    | inl h => exact h
    | inr h => exact h.2
  exact Or.inr ⟨hap, hpb⟩

/-- Processing a new pivot preserves closure through every prior pivot. -/
theorem pivotStep_preserves_closedThrough (relation : α → α → Prop)
    (pivot prior : α) (h : ClosedThrough relation prior) :
    ClosedThrough (pivotStep relation pivot) prior := by
  intro a b ha hb
  cases ha with
  | inl ha =>
    cases hb with
    | inl hb => exact Or.inl (h ha hb)
    | inr hb => exact Or.inr ⟨h ha hb.1, hb.2⟩
  | inr ha =>
    cases hb with
    | inl hb => exact Or.inr ⟨ha.1, h ha.2 hb⟩
    | inr hb => exact Or.inr ⟨ha.1, hb.2⟩

theorem pivotClosure_extends (relation : α → α → Prop) (pivots : List α)
    {a b : α} (h : relation a b) : pivotClosure relation pivots a b := by
  induction pivots with
  | nil => exact h
  | cons pivot rest ih => exact Or.inl ih

theorem pivotClosure_closedThrough_member (relation : α → α → Prop)
    (pivots : List α) {pivot : α} (h : pivot ∈ pivots) :
    ClosedThrough (pivotClosure relation pivots) pivot := by
  induction pivots with
  | nil => cases h
  | cons current rest ih =>
    cases h with
    | head => exact pivotStep_closed_self (pivotClosure relation rest) pivot
    | tail _ h =>
      exact pivotStep_preserves_closedThrough (pivotClosure relation rest) current pivot (ih h)

/-- Full inventory coverage, rather than an assumed stabilization condition,
makes the final relation transitive. -/
theorem pivotClosure_transitive (inventory : FiniteInventory α)
    (relation : α → α → Prop) {a b c : α}
    (hab : pivotClosure relation inventory.vertices a b)
    (hbc : pivotClosure relation inventory.vertices b c) :
    pivotClosure relation inventory.vertices a c :=
  pivotClosure_closedThrough_member relation inventory.vertices (inventory.complete b) hab hbc

/-- A predicate preserved by the input relation is preserved by every finite
pivot composition. This is the soundness invariant used below. -/
theorem pivotClosure_preserves (relation : α → α → Prop) (pivots : List α)
    (retained : α → Prop)
    (h : ∀ ⦃a b⦄, retained a → relation a b → retained b) :
    ∀ ⦃a b⦄, retained a → pivotClosure relation pivots a b → retained b := by
  induction pivots with
  | nil => exact h
  | cons pivot rest ih =>
    intro a b ha hab
    cases hab with
    | inl hab => exact ih ha hab
    | inr hab => exact ih (ih ha hab.1) hab.2

/-- Initial reachability includes reflexivity and one consumer-to-prerequisite
edge. It does not reverse the dependency orientation. -/
def baseReach (depends : α → α → Prop) (a b : α) : Prop := a = b ∨ depends a b

instance baseReachDecidable [DecidableEq α] (depends : α → α → Prop)
    [DecidableRel depends] : DecidableRel (baseReach depends) := by
  intro a b
  unfold baseReach
  infer_instance

/-- Scan the finite required-root inventory in its ordinary list order. -/
def rootScan (required : α → Prop) (relation : α → α → Prop) : List α → α → Prop
  | [], _ => False
  | root :: rest, target =>
      (required root ∧ relation root target) ∨ rootScan required relation rest target

instance rootScanDecidable (required : α → Prop) [DecidablePred required]
    (relation : α → α → Prop) [DecidableRel relation] (roots : List α) :
    DecidablePred (rootScan required relation roots) :=
  match roots with
  | [] => fun _ => inferInstanceAs (Decidable False)
  | root :: rest => by
      intro target
      letI : DecidablePred (rootScan required relation rest) :=
        rootScanDecidable required relation rest
      change Decidable ((required root ∧ relation root target) ∨
        rootScan required relation rest target)
      infer_instance

theorem rootScan_of_mem (required : α → Prop) (relation : α → α → Prop)
    (roots : List α) {root target : α} (hm : root ∈ roots)
    (hr : required root) (ht : relation root target) :
    rootScan required relation roots target := by
  induction roots with
  | nil => cases hm
  | cons current rest ih =>
    cases hm with
    | head => exact Or.inl ⟨hr, ht⟩
    | tail _ hm => exact Or.inr (ih hm)

theorem rootScan_preserves (required : α → Prop) (relation : α → α → Prop)
    (roots : List α) (retained : α → Prop) (hr : Included required retained)
    (ht : ∀ ⦃a b⦄, retained a → relation a b → retained b) :
    Included (rootScan required relation roots) retained := by
  induction roots with
  | nil => intro target h; exact False.elim h
  | cons root rest ih =>
    intro target h
    cases h with
    | inl h => exact ht (hr h.1) h.2
    | inr h => exact ih h

theorem rootScan_transport (required : α → Prop) (relation : α → α → Prop)
    (roots : List α)
    (transitive : ∀ ⦃a b c⦄, relation a b → relation b c → relation a c) :
    ∀ ⦃a b⦄, rootScan required relation roots a → relation a b →
      rootScan required relation roots b := by
  induction roots with
  | nil => intro a b h; exact False.elim h
  | cons root rest ih =>
    intro a b h hab
    cases h with
    | inl h => exact Or.inl ⟨h.1, transitive h.2 hab⟩
    | inr h => exact Or.inr (ih h hab)

/-- Constructive finite prerequisite closure. No decision procedure for the
inductively defined semantic `Closure` is assumed. -/
def finitePrerequisiteClosure (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) : α → Prop :=
  rootScan required (pivotClosure (baseReach depends) inventory.vertices) inventory.vertices

instance finitePrerequisiteClosureDecidable [DecidableEq α]
    (inventory : FiniteInventory α) (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] :
    DecidablePred (finitePrerequisiteClosure inventory required depends) :=
  rootScanDecidable required (pivotClosure (baseReach depends) inventory.vertices) inventory.vertices

theorem finitePrerequisiteClosure_feasible (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) :
    Feasible required depends (finitePrerequisiteClosure inventory required depends) where
  roots := by
    intro a ha
    exact rootScan_of_mem required (pivotClosure (baseReach depends) inventory.vertices)
      inventory.vertices (inventory.complete a) ha
      (pivotClosure_extends (baseReach depends) inventory.vertices (Or.inl rfl))
  closed := by
    intro a b ha hab
    exact rootScan_transport required (pivotClosure (baseReach depends) inventory.vertices)
      inventory.vertices (by
        intro x y z hxy hyz
        exact pivotClosure_transitive inventory (baseReach depends) hxy hyz) ha
      (pivotClosure_extends (baseReach depends) inventory.vertices (Or.inr hab))

theorem finitePrerequisiteClosure_sound (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) :
    Included (finitePrerequisiteClosure inventory required depends) (Closure required depends) := by
  apply rootScan_preserves
  · intro a ha
    exact Closure.root ha
  · apply pivotClosure_preserves
    intro a b ha hab
    cases hab with
    | inl hab => cases hab; exact ha
    | inr hab => exact Closure.dependency ha hab

theorem finitePrerequisiteClosure_complete (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) :
    Included (Closure required depends) (finitePrerequisiteClosure inventory required depends) :=
  closure_least (finitePrerequisiteClosure_feasible inventory required depends)

theorem finitePrerequisiteClosure_iff (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) (a : α) :
    finitePrerequisiteClosure inventory required depends a ↔ Closure required depends a := by
  constructor
  · intro h
    exact finitePrerequisiteClosure_sound inventory required depends h
  · intro h
    exact finitePrerequisiteClosure_complete inventory required depends h

/-- An executable Boolean answer from finite decidable roots, edges and equality. -/
def decideFinitePrerequisiteClosure [DecidableEq α] (inventory : FiniteInventory α)
    (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] (a : α) : Bool :=
  decide (finitePrerequisiteClosure inventory required depends a)

theorem decideFinitePrerequisiteClosure_eq_true_iff [DecidableEq α]
    (inventory : FiniteInventory α) (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] (a : α) :
    decideFinitePrerequisiteClosure inventory required depends a = true ↔
      Closure required depends a := by
  constructor
  · intro h
    exact finitePrerequisiteClosure_sound inventory required depends (of_decide_eq_true h)
  · intro h
    exact decide_eq_true (finitePrerequisiteClosure_complete inventory required depends h)

/-- The verified finite output minimizes the concrete complete-inventory byte
cost. Decidability of semantic `Closure` and cost monotonicity are not premises. -/
theorem finitePrerequisiteClosure_minimizes [DecidableEq α]
    (inventory : FiniteInventory α) (weight : α → Nat)
    (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends]
    {retained : α → Prop} [DecidablePred retained]
    (h : Feasible required depends retained) :
    finiteWeightedCost inventory weight (finitePrerequisiteClosure inventory required depends) ≤
      finiteWeightedCost inventory weight retained := by
  apply finiteWeightedCost_mono
  intro a ha
  exact closure_least h (finitePrerequisiteClosure_sound inventory required depends ha)

/-- A row and table store Boolean cells, not deferred cell functions. Keys give
the explicit inventory index; the shape invariant below fixes both key orders. -/
abbrev BoolRow (α : Type u) := List (α × Bool)
abbrev BoolTable (α : Type u) := List (α × BoolRow α)

def buildBoolRow (columns : List α) (cell : α → Bool) : BoolRow α :=
  match columns with
  | [] => []
  | column :: rest => (column, cell column) :: buildBoolRow rest cell

def buildBoolRows (rows columns : List α) (cell : α → α → Bool) : BoolTable α :=
  match rows with
  | [] => []
  | row :: rest => (row, buildBoolRow columns (cell row)) :: buildBoolRows rest columns cell

def boolRowLookup [DecidableEq α] (row : BoolRow α) (target : α) : Bool :=
  match row with
  | [] => false
  | (key, value) :: rest => if target = key then value else boolRowLookup rest target

def boolTableLookup [DecidableEq α] (table : BoolTable α) (a b : α) : Bool :=
  match table with
  | [] => false
  | (key, row) :: rest => if a = key then boolRowLookup row b else boolTableLookup rest a b

theorem boolRowLookup_build [DecidableEq α] (columns : List α) (cell : α → Bool)
    {target : α} (hm : target ∈ columns) :
    boolRowLookup (buildBoolRow columns cell) target = cell target := by
  induction columns with
  | nil => cases hm
  | cons column rest ih =>
    by_cases he : target = column
    · cases he
      change (if target = target then cell target else _) = cell target
      rw [if_pos rfl]
    · cases hm with
      | head => exact False.elim (he rfl)
      | tail _ hm =>
        change (if target = column then cell column else
          boolRowLookup (buildBoolRow rest cell) target) = cell target
        rw [if_neg he]
        exact ih hm

theorem boolTableLookup_build [DecidableEq α] (rows columns : List α)
    (cell : α → α → Bool) {a b : α} (ha : a ∈ rows) (hb : b ∈ columns) :
    boolTableLookup (buildBoolRows rows columns cell) a b = cell a b := by
  induction rows with
  | nil => cases ha
  | cons row rest ih =>
    by_cases he : a = row
    · cases he
      change (if a = a then boolRowLookup (buildBoolRow columns (cell a)) b else _) = cell a b
      rw [if_pos rfl]
      exact boolRowLookup_build columns (cell a) hb
    · cases ha with
      | head => exact False.elim (he rfl)
      | tail _ ha =>
        change (if a = row then boolRowLookup (buildBoolRow columns (cell row)) b else
          boolTableLookup (buildBoolRows rest columns cell) a b) = cell a b
        rw [if_neg he]
        exact ih ha

def boolRowKeys (row : BoolRow α) : List α :=
  match row with
  | [] => []
  | (key, _) :: rest => key :: boolRowKeys rest

def boolTableKeys (table : BoolTable α) : List α :=
  match table with
  | [] => []
  | (key, _) :: rest => key :: boolTableKeys rest

/-- Every row and column key occurs in precisely the inventory order. A
`FiniteInventory` makes that order complete and duplicate free. Missing-key
lookup defaults are therefore unreachable for a well-shaped inventory table. -/
structure BoolTableShape (vertices : List α) (table : BoolTable α) : Prop where
  rows_exact : boolTableKeys table = vertices
  columns_exact : ∀ key row, (key, row) ∈ table → boolRowKeys row = vertices

theorem buildBoolRow_keys (columns : List α) (cell : α → Bool) :
    boolRowKeys (buildBoolRow columns cell) = columns := by
  induction columns with
  | nil => rfl
  | cons column rest ih => exact congrArg (List.cons column) ih

theorem buildBoolRows_keys (rows columns : List α) (cell : α → α → Bool) :
    boolTableKeys (buildBoolRows rows columns cell) = rows := by
  induction rows with
  | nil => rfl
  | cons row rest ih => exact congrArg (List.cons row) ih

theorem buildBoolRows_columns (rows columns : List α) (cell : α → α → Bool) :
    ∀ key row, (key, row) ∈ buildBoolRows rows columns cell → boolRowKeys row = columns := by
  induction rows with
  | nil => intro key row hm; cases hm
  | cons current rest ih =>
    intro key row hm
    cases hm with
    | head => exact buildBoolRow_keys columns (cell current)
    | tail _ hm => exact ih key row hm

theorem buildBoolRows_shape (vertices : List α) (cell : α → α → Bool) :
    BoolTableShape vertices (buildBoolRows vertices vertices cell) where
  rows_exact := buildBoolRows_keys vertices vertices cell
  columns_exact := buildBoolRows_columns vertices vertices cell

def boolTableCellCount (table : BoolTable α) : Nat :=
  match table with
  | [] => 0
  | (_, row) :: rest => row.length + boolTableCellCount rest

theorem buildBoolRow_length (columns : List α) (cell : α → Bool) :
    (buildBoolRow columns cell).length = columns.length := by
  induction columns with
  | nil => rfl
  | cons column rest ih => exact congrArg Nat.succ ih

theorem buildBoolRows_length (rows columns : List α) (cell : α → α → Bool) :
    (buildBoolRows rows columns cell).length = rows.length := by
  induction rows with
  | nil => rfl
  | cons row rest ih => exact congrArg Nat.succ ih

theorem buildBoolRows_cellCount (rows columns : List α) (cell : α → α → Bool) :
    boolTableCellCount (buildBoolRows rows columns cell) = rows.length * columns.length := by
  induction rows with
  | nil => exact (Nat.zero_mul _).symm
  | cons row rest ih =>
    change (buildBoolRow columns (cell row)).length +
      boolTableCellCount (buildBoolRows rest columns cell) = (rest.length + 1) * columns.length
    rw [buildBoolRow_length, ih, Nat.succ_mul]
    exact Nat.add_comm _ _

/-- One shared-table pivot builds all cells of the next snapshot. Each lookup
reads `previous`; no updated row is fed back into the same pivot. -/
def boolTablePivot [DecidableEq α] (vertices : List α)
    (previous : BoolTable α) (pivot : α) : BoolTable α :=
  buildBoolRows vertices vertices (fun a b => boolTableLookup previous a b ||
    (boolTableLookup previous a pivot && boolTableLookup previous pivot b))

def BoolTableRefines [DecidableEq α] (table : BoolTable α) (relation : α → α → Prop) : Prop :=
  ∀ a b, boolTableLookup table a b = true ↔ relation a b

theorem boolPivot_truth (x y z : Bool) :
    (x || (y && z)) = true ↔ x = true ∨ (y = true ∧ z = true) := by
  cases x <;> cases y <;> cases z <;> decide

theorem boolTablePivot_refines [DecidableEq α] (inventory : FiniteInventory α)
    (previous : BoolTable α) (relation : α → α → Prop)
    (h : BoolTableRefines previous relation) (pivot : α) :
    BoolTableRefines (boolTablePivot inventory.vertices previous pivot) (pivotStep relation pivot) := by
  intro a b
  unfold boolTablePivot
  rw [boolTableLookup_build inventory.vertices inventory.vertices _
    (inventory.complete a) (inventory.complete b)]
  constructor
  · intro ht
    cases (boolPivot_truth _ _ _).mp ht with
    | inl ht => exact Or.inl ((h a b).mp ht)
    | inr ht => exact Or.inr ⟨(h a pivot).mp ht.1, (h pivot b).mp ht.2⟩
  · intro ht
    apply (boolPivot_truth _ _ _).mpr
    cases ht with
    | inl ht => exact Or.inl ((h a b).mpr ht)
    | inr ht => exact Or.inr ⟨(h a pivot).mpr ht.1, (h pivot b).mpr ht.2⟩

theorem boolTablePivot_shape [DecidableEq α] (vertices : List α)
    (previous : BoolTable α) (pivot : α) :
    BoolTableShape vertices (boolTablePivot vertices previous pivot) :=
  buildBoolRows_shape vertices _

theorem boolTablePivot_cellCount [DecidableEq α] (vertices : List α)
    (previous : BoolTable α) (pivot : α) :
    boolTableCellCount (boolTablePivot vertices previous pivot) = vertices.length * vertices.length :=
  buildBoolRows_cellCount vertices vertices _

/-- The result stores one materialized table and an abstract cell-write count.
The counter counts each constructed Boolean cell once, excluding key/list
metadata, lookup work, counters, stack, allocation/GC, CPU time and wall time. -/
structure SharedTableRun (α : Type u) where
  table : BoolTable α
  cellUpdates : Nat

def sharedTableRun [DecidableEq α] (vertices : List α) (initial : BoolTable α)
    (pivots : List α) : SharedTableRun α :=
  match pivots with
  | [] => ⟨initial, 0⟩
  | pivot :: rest =>
    let previous := sharedTableRun vertices initial rest
    let next := boolTablePivot vertices previous.table pivot
    ⟨next, previous.cellUpdates + boolTableCellCount next⟩

theorem sharedTableRun_refines [DecidableEq α] (inventory : FiniteInventory α)
    (initial : BoolTable α) (relation : α → α → Prop)
    (h : BoolTableRefines initial relation) (pivots : List α) :
    BoolTableRefines (sharedTableRun inventory.vertices initial pivots).table
      (pivotClosure relation pivots) := by
  induction pivots with
  | nil => exact h
  | cons pivot rest ih =>
    exact boolTablePivot_refines inventory
      (sharedTableRun inventory.vertices initial rest).table (pivotClosure relation rest) ih pivot

theorem sharedTableRun_shape [DecidableEq α] (vertices : List α) (initial : BoolTable α)
    (h : BoolTableShape vertices initial) (pivots : List α) :
    BoolTableShape vertices (sharedTableRun vertices initial pivots).table := by
  cases pivots with
  | nil => exact h
  | cons pivot rest => exact boolTablePivot_shape vertices _ pivot

theorem sharedTableRun_cellCount [DecidableEq α] (vertices : List α) (initial : BoolTable α)
    (h : boolTableCellCount initial = vertices.length * vertices.length) (pivots : List α) :
    boolTableCellCount (sharedTableRun vertices initial pivots).table =
      vertices.length * vertices.length := by
  cases pivots with
  | nil => exact h
  | cons pivot rest => exact boolTablePivot_cellCount vertices _ pivot

/-- Exact abstract update count: each of the supplied pivots constructs n²
Boolean cells. Linear keyed lookups do not acquire a constant-time cost claim. -/
theorem sharedTableRun_updates [DecidableEq α] (vertices : List α) (initial : BoolTable α)
    (pivots : List α) :
    (sharedTableRun vertices initial pivots).cellUpdates =
      pivots.length * (vertices.length * vertices.length) := by
  induction pivots with
  | nil => exact (Nat.zero_mul _).symm
  | cons pivot rest ih =>
    change (sharedTableRun vertices initial rest).cellUpdates +
      boolTableCellCount (boolTablePivot vertices
        (sharedTableRun vertices initial rest).table pivot) =
      (rest.length + 1) * (vertices.length * vertices.length)
    rw [ih, boolTablePivot_cellCount, Nat.succ_mul]

/-- Two explicit adjacent snapshots contain exactly 2n² Boolean cells. This is
a structural cell-storage statement, not a maximum live-heap theorem. -/
theorem boolTablePivot_snapshotCells [DecidableEq α] (vertices : List α)
    (previous : BoolTable α) (h : boolTableCellCount previous = vertices.length * vertices.length)
    (pivot : α) :
    boolTableCellCount previous + boolTableCellCount (boolTablePivot vertices previous pivot) =
      2 * (vertices.length * vertices.length) := by
  rw [h, boolTablePivot_cellCount, Nat.two_mul]

def initialBoolTable [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] : BoolTable α :=
  buildBoolRows inventory.vertices inventory.vertices (fun a b => decide (baseReach depends a b))

theorem initialBoolTable_refines [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] :
    BoolTableRefines (initialBoolTable inventory depends) (baseReach depends) := by
  intro a b
  unfold initialBoolTable
  rw [boolTableLookup_build inventory.vertices inventory.vertices _
    (inventory.complete a) (inventory.complete b)]
  exact ⟨of_decide_eq_true, decide_eq_true⟩

def materializedClosureRun [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] : SharedTableRun α :=
  sharedTableRun inventory.vertices (initialBoolTable inventory depends) inventory.vertices

theorem materializedClosureRun_refines [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] :
    BoolTableRefines (materializedClosureRun inventory depends).table
      (pivotClosure (baseReach depends) inventory.vertices) :=
  sharedTableRun_refines inventory (initialBoolTable inventory depends) (baseReach depends)
    (initialBoolTable_refines inventory depends) inventory.vertices

theorem materializedClosureRun_shape [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] :
    BoolTableShape inventory.vertices (materializedClosureRun inventory depends).table :=
  sharedTableRun_shape inventory.vertices (initialBoolTable inventory depends)
    (buildBoolRows_shape inventory.vertices _) inventory.vertices

theorem materializedClosureRun_cellCount [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] :
    boolTableCellCount (materializedClosureRun inventory depends).table =
      inventory.vertices.length * inventory.vertices.length :=
  sharedTableRun_cellCount inventory.vertices (initialBoolTable inventory depends)
    (buildBoolRows_cellCount inventory.vertices inventory.vertices _) inventory.vertices

/-- Initial construction plus all n pivot passes constructs exactly (n+1)n²
Boolean cells. This is not a bound on comparisons or native instructions. -/
theorem materializedClosureRun_totalCellUpdates [DecidableEq α] (inventory : FiniteInventory α)
    (depends : α → α → Prop) [DecidableRel depends] :
    boolTableCellCount (initialBoolTable inventory depends) +
      (materializedClosureRun inventory depends).cellUpdates =
      (inventory.vertices.length + 1) * (inventory.vertices.length * inventory.vertices.length) := by
  change boolTableCellCount (initialBoolTable inventory depends) +
    (sharedTableRun inventory.vertices (initialBoolTable inventory depends) inventory.vertices).cellUpdates = _
  rw [sharedTableRun_updates]
  unfold initialBoolTable
  rw [buildBoolRows_cellCount, Nat.succ_mul]
  exact Nat.add_comm _ _

def boolTableRelation [DecidableEq α] (table : BoolTable α) (a b : α) : Prop :=
  boolTableLookup table a b = true

instance boolTableRelationDecidable [DecidableEq α] (table : BoolTable α) :
    DecidableRel (boolTableRelation table) := by
  intro a b
  exact inferInstanceAs (Decidable (boolTableLookup table a b = true))

theorem rootScan_congr (required : α → Prop) (left right : α → α → Prop)
    (roots : List α) (h : ∀ a b, left a b ↔ right a b) :
    ∀ target, rootScan required left roots target ↔ rootScan required right roots target := by
  induction roots with
  | nil => intro target; exact ⟨False.elim, False.elim⟩
  | cons root rest ih =>
    intro target
    constructor
    · intro ht
      cases ht with
      | inl ht => exact Or.inl ⟨ht.1, (h root target).mp ht.2⟩
      | inr ht => exact Or.inr ((ih target).mp ht)
    · intro ht
      cases ht with
      | inl ht => exact Or.inl ⟨ht.1, (h root target).mpr ht.2⟩
      | inr ht => exact Or.inr ((ih target).mpr ht)

def materializedPrerequisiteClosure [DecidableEq α] (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) [DecidableRel depends] : α → Prop :=
  rootScan required (boolTableRelation (materializedClosureRun inventory depends).table) inventory.vertices

instance materializedPrerequisiteClosureDecidable [DecidableEq α]
    (inventory : FiniteInventory α) (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] :
    DecidablePred (materializedPrerequisiteClosure inventory required depends) :=
  rootScanDecidable required (boolTableRelation (materializedClosureRun inventory depends).table)
    inventory.vertices

theorem materializedPrerequisiteClosure_iff [DecidableEq α] (inventory : FiniteInventory α)
    (required : α → Prop) (depends : α → α → Prop) [DecidableRel depends] (a : α) :
    materializedPrerequisiteClosure inventory required depends a ↔ Closure required depends a :=
  Iff.trans (rootScan_congr required _ _ inventory.vertices
    (materializedClosureRun_refines inventory depends) a)
    (finitePrerequisiteClosure_iff inventory required depends a)

def decideMaterializedPrerequisiteClosure [DecidableEq α] (inventory : FiniteInventory α)
    (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] (a : α) : Bool :=
  decide (materializedPrerequisiteClosure inventory required depends a)

theorem decideMaterializedPrerequisiteClosure_eq_true_iff [DecidableEq α]
    (inventory : FiniteInventory α) (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] (a : α) :
    decideMaterializedPrerequisiteClosure inventory required depends a = true ↔
      Closure required depends a := by
  constructor
  · intro h
    exact (materializedPrerequisiteClosure_iff inventory required depends a).mp (of_decide_eq_true h)
  · intro h
    exact decide_eq_true ((materializedPrerequisiteClosure_iff inventory required depends a).mpr h)

theorem bool_eq_of_true_iff (x y : Bool) (h : x = true ↔ y = true) : x = y := by
  cases x with
  | false =>
    cases y with
    | false => rfl
    | true => have hf := h.mpr rfl; cases hf
  | true =>
    cases y with
    | false => have hf := h.mp rfl; cases hf
    | true => rfl

theorem decideMaterializedPrerequisiteClosure_agrees [DecidableEq α]
    (inventory : FiniteInventory α) (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends] (a : α) :
    decideMaterializedPrerequisiteClosure inventory required depends a =
      decideFinitePrerequisiteClosure inventory required depends a :=
  bool_eq_of_true_iff _ _ (Iff.trans
    (decideMaterializedPrerequisiteClosure_eq_true_iff inventory required depends a)
    (decideFinitePrerequisiteClosure_eq_true_iff inventory required depends a).symm)

theorem materializedPrerequisiteClosure_minimizes [DecidableEq α]
    (inventory : FiniteInventory α) (weight : α → Nat)
    (required : α → Prop) [DecidablePred required]
    (depends : α → α → Prop) [DecidableRel depends]
    {retained : α → Prop} [DecidablePred retained] (h : Feasible required depends retained) :
    finiteWeightedCost inventory weight (materializedPrerequisiteClosure inventory required depends) ≤
      finiteWeightedCost inventory weight retained := by
  apply finiteWeightedCost_mono
  intro a ha
  exact closure_least h ((materializedPrerequisiteClosure_iff inventory required depends a).mp ha)

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
