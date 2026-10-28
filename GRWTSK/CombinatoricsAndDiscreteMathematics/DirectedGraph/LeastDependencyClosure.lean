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

/-- The supported typed prerequisite-CNF language. `tautology` is a constant
True constraint; mapping a raw clause to it requires a separate decoder proof.
This type contains neither negative units nor unsupported general CNF clauses. -/
inductive PrerequisiteClause (α : Type u) where
  | unit (node : α)
  | prerequisite (consumer dependency : α)
  | tautology
  deriving DecidableEq

/-- Genuine disjunctive clause semantics. In particular, a prerequisite clause
is the negative consumer literal OR the positive dependency literal. -/
def prerequisiteClauseHolds (retained : α → Prop) (clause : PrerequisiteClause α) : Prop :=
  match clause with
  | .unit node => retained node
  | .prerequisite consumer dependency => ¬ retained consumer ∨ retained dependency
  | .tautology => True

instance prerequisiteClauseHoldsDecidable (retained : α → Prop) [DecidablePred retained]
    (clause : PrerequisiteClause α) : Decidable (prerequisiteClauseHolds retained clause) :=
  match clause with
  | .unit node => inferInstanceAs (Decidable (retained node))
  | .prerequisite consumer dependency =>
      inferInstanceAs (Decidable (¬ retained consumer ∨ retained dependency))
  | .tautology => isTrue True.intro

def prerequisiteCNFSatisfied (retained : α → Prop) (clauses : List (PrerequisiteClause α)) : Prop :=
  match clauses with
  | [] => True
  | clause :: rest => prerequisiteClauseHolds retained clause ∧ prerequisiteCNFSatisfied retained rest

instance prerequisiteCNFSatisfiedDecidable (retained : α → Prop) [DecidablePred retained]
    (clauses : List (PrerequisiteClause α)) : Decidable (prerequisiteCNFSatisfied retained clauses) :=
  match clauses with
  | [] => isTrue True.intro
  | clause :: rest =>
    letI : Decidable (prerequisiteCNFSatisfied retained rest) :=
      prerequisiteCNFSatisfiedDecidable retained rest
    inferInstanceAs (Decidable (prerequisiteClauseHolds retained clause ∧
      prerequisiteCNFSatisfied retained rest))

/-- Decoded roots and edges refer to typed constructors, not raw integers or
JSON. Duplicate constraints are retained in the list and impose the same facts. -/
def prerequisiteCNFRequired (clauses : List (PrerequisiteClause α)) (a : α) : Prop :=
  PrerequisiteClause.unit a ∈ clauses

def prerequisiteCNFDepends (clauses : List (PrerequisiteClause α)) (a b : α) : Prop :=
  PrerequisiteClause.prerequisite a b ∈ clauses

/-- Constructor-based finite membership decisions. The proof does not transport
membership through a proposition-extensionality equality. -/
def typedListMembershipDecision {β : Type u} [DecidableEq β]
    (value : β) (entries : List β) : Decidable (value ∈ entries) :=
  match entries with
  | [] => isFalse (by intro h; cases h)
  | first :: rest =>
    match decEq value first with
    | isTrue he => isTrue (by cases he; exact List.Mem.head rest)
    | isFalse hne =>
      match typedListMembershipDecision value rest with
      | isTrue hm => isTrue (List.Mem.tail first hm)
      | isFalse hn => isFalse (by
          intro hm
          cases hm with
          | head => exact hne rfl
          | tail _ hm => exact hn hm)

instance prerequisiteCNFRequiredDecidable [DecidableEq α] (clauses : List (PrerequisiteClause α)) :
    DecidablePred (prerequisiteCNFRequired clauses) :=
  fun a => typedListMembershipDecision (PrerequisiteClause.unit a) clauses

instance prerequisiteCNFDependsDecidable [DecidableEq α] (clauses : List (PrerequisiteClause α)) :
    DecidableRel (prerequisiteCNFDepends clauses) :=
  fun a b => typedListMembershipDecision (PrerequisiteClause.prerequisite a b) clauses

/-- Literal tautologies require only the supplied membership decision procedure.
This does not certify that an external parser found a complementary pair. -/
theorem prerequisiteLiteral_tautology (retained : α → Prop) [DecidablePred retained] (node : α) :
    ¬ retained node ∨ retained node := by
  by_cases h : retained node
  · exact Or.inr h
  · exact Or.inl h

theorem prerequisiteCNFSatisfied_iff_all (retained : α → Prop)
    (clauses : List (PrerequisiteClause α)) :
    prerequisiteCNFSatisfied retained clauses ↔
      ∀ clause, clause ∈ clauses → prerequisiteClauseHolds retained clause := by
  induction clauses with
  | nil =>
    constructor
    · intro _ clause hm; cases hm
    · intro _; exact True.intro
  | cons first rest ih =>
    constructor
    · intro h clause hm
      cases hm with
      | head => exact h.1
      | tail _ hm => exact (ih.mp h.2) clause hm
    · intro h
      constructor
      · exact h first (List.Mem.head rest)
      · apply ih.mpr
        intro clause hm
        exact h clause (List.Mem.tail first hm)

theorem prerequisiteCNFSatisfied_feasible (retained : α → Prop)
    (clauses : List (PrerequisiteClause α)) (h : prerequisiteCNFSatisfied retained clauses) :
    Feasible (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses) retained where
  roots := by
    intro a ha
    exact (prerequisiteCNFSatisfied_iff_all retained clauses).mp h (.unit a) ha
  closed := by
    intro a b ha hab
    have hc := (prerequisiteCNFSatisfied_iff_all retained clauses).mp h (.prerequisite a b) hab
    cases hc with
    | inl hn => exact False.elim (hn ha)
    | inr hb => exact hb

theorem prerequisiteCNFFeasible_satisfied (retained : α → Prop) [DecidablePred retained]
    (clauses : List (PrerequisiteClause α))
    (h : Feasible (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses) retained) :
    prerequisiteCNFSatisfied retained clauses := by
  apply (prerequisiteCNFSatisfied_iff_all retained clauses).mpr
  intro clause hm
  cases clause with
  | unit node => exact h.roots hm
  | prerequisite consumer dependency =>
    by_cases hc : retained consumer
    · exact Or.inr (h.closed hc hm)
    · exact Or.inl hc
  | tautology => exact True.intro

/-- The exact typed-CNF semantic bridge. Decidable assignment membership is
explicit for the constructive implication-to-disjunction direction. -/
theorem prerequisiteCNFSatisfied_iff_feasible (retained : α → Prop) [DecidablePred retained]
    (clauses : List (PrerequisiteClause α)) :
    prerequisiteCNFSatisfied retained clauses ↔
      Feasible (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses) retained :=
  ⟨prerequisiteCNFSatisfied_feasible retained clauses,
    prerequisiteCNFFeasible_satisfied retained clauses⟩

/-- The shared-table model for the supported typed profile. Inventory coverage,
uniqueness and equality decisions retain their existing explicit scopes. -/
def prerequisiteCNFModel [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (PrerequisiteClause α)) : α → Prop :=
  materializedPrerequisiteClosure inventory (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses)

instance prerequisiteCNFModelDecidable [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (PrerequisiteClause α)) : DecidablePred (prerequisiteCNFModel inventory clauses) :=
  materializedPrerequisiteClosureDecidable inventory
    (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses)

theorem prerequisiteCNFModel_feasible [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (PrerequisiteClause α)) :
    Feasible (prerequisiteCNFRequired clauses) (prerequisiteCNFDepends clauses)
      (prerequisiteCNFModel inventory clauses) where
  roots := by
    intro a ha
    exact (materializedPrerequisiteClosure_iff inventory _ _ a).mpr (Closure.root ha)
  closed := by
    intro a b ha hab
    exact (materializedPrerequisiteClosure_iff inventory _ _ b).mpr
      (Closure.dependency ((materializedPrerequisiteClosure_iff inventory _ _ a).mp ha) hab)

theorem prerequisiteCNFModel_satisfies [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (PrerequisiteClause α)) :
    prerequisiteCNFSatisfied (prerequisiteCNFModel inventory clauses) clauses :=
  prerequisiteCNFFeasible_satisfied _ clauses (prerequisiteCNFModel_feasible inventory clauses)

theorem prerequisiteCNFModel_least [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (PrerequisiteClause α)) {retained : α → Prop}
    (h : prerequisiteCNFSatisfied retained clauses) :
    Included (prerequisiteCNFModel inventory clauses) retained := by
  intro a ha
  exact closure_least (prerequisiteCNFSatisfied_feasible retained clauses h)
    ((materializedPrerequisiteClosure_iff inventory _ _ a).mp ha)

/-- The typed semantic bridge yields a concrete weighted minimum over satisfying
assignments. It supplies no raw decoder, general-CNF, or runtime refinement. -/
theorem prerequisiteCNFModel_minimizes [DecidableEq α] (inventory : FiniteInventory α)
    (weight : α → Nat) (clauses : List (PrerequisiteClause α))
    {retained : α → Prop} [DecidablePred retained]
    (h : prerequisiteCNFSatisfied retained clauses) :
    finiteWeightedCost inventory weight (prerequisiteCNFModel inventory clauses) ≤
      finiteWeightedCost inventory weight retained :=
  finiteWeightedCost_mono inventory weight (prerequisiteCNFModel_least inventory clauses h)

/-- Signed typed variables. Raw integer signs, bounds and JSON are separate. -/
inductive SignedLiteral (α : Type u) where
  | positive (node : α)
  | negative (node : α)
  deriving DecidableEq

def signedLiteralHolds (retained : α → Prop) (literal : SignedLiteral α) : Prop :=
  match literal with
  | .positive node => retained node
  | .negative node => ¬ retained node

def signedClauseSatisfied (retained : α → Prop) (literals : List (SignedLiteral α)) : Prop :=
  match literals with
  | [] => False
  | literal :: rest => signedLiteralHolds retained literal ∨ signedClauseSatisfied retained rest

/-- Tail-first duplicate elimination keeps the last occurrence of each value
and preserves the relative order of those last occurrences. -/
def typedDeduplicate {β : Type u} [DecidableEq β] (entries : List β) : List β :=
  match entries with
  | [] => []
  | first :: rest =>
    let tail := typedDeduplicate rest
    match typedListMembershipDecision first tail with
    | isTrue _ => tail
    | isFalse _ => first :: tail

theorem typedDeduplicate_mem_iff {β : Type u} [DecidableEq β] (entries : List β) :
    ∀ value, value ∈ typedDeduplicate entries ↔ value ∈ entries := by
  induction entries with
  | nil =>
    intro value
    constructor <;> intro hm <;> cases hm
  | cons first rest ih =>
    intro value
    cases hd : typedListMembershipDecision first (typedDeduplicate rest) with
    | isTrue hf =>
      rw [typedDeduplicate, hd]
      constructor
      · intro hm
        exact List.Mem.tail first ((ih value).mp hm)
      · intro hm
        cases hm with
        | head => exact hf
        | tail _ hm => exact (ih value).mpr hm
    | isFalse hn =>
      rw [typedDeduplicate, hd]
      constructor
      · intro hm
        cases hm with
        | head => exact List.Mem.head rest
        | tail _ hm => exact List.Mem.tail first ((ih value).mp hm)
      · intro hm
        cases hm with
        | head => exact List.Mem.head (typedDeduplicate rest)
        | tail _ hm => exact List.Mem.tail first ((ih value).mpr hm)

theorem typedDeduplicate_nodup {β : Type u} [DecidableEq β] (entries : List β) :
    (typedDeduplicate entries).Nodup := by
  induction entries with
  | nil => exact List.Pairwise.nil
  | cons first rest ih =>
    cases hd : typedListMembershipDecision first (typedDeduplicate rest) with
    | isTrue hf => rw [typedDeduplicate, hd]; exact ih
    | isFalse hn =>
      rw [typedDeduplicate, hd]
      apply List.Pairwise.cons
      · intro value hm he
        cases he
        exact hn hm
      · exact ih

theorem signedClauseSatisfied_iff_exists (retained : α → Prop) (literals : List (SignedLiteral α)) :
    signedClauseSatisfied retained literals ↔
      ∃ literal, literal ∈ literals ∧ signedLiteralHolds retained literal := by
  induction literals with
  | nil =>
    constructor
    · intro h; exact False.elim h
    · intro h
      cases h with
      | intro literal h => cases h.1
  | cons first rest ih =>
    constructor
    · intro h
      cases h with
      | inl h => exact ⟨first, List.Mem.head rest, h⟩
      | inr h =>
        cases ih.mp h with
        | intro literal h => exact ⟨literal, List.Mem.tail first h.1, h.2⟩
    · intro h
      cases h with
      | intro literal h =>
        cases h.1 with
        | head => exact Or.inl h.2
        | tail _ hm => exact Or.inr (ih.mpr ⟨literal, hm, h.2⟩)

theorem signedClauseSatisfied_deduplicate [DecidableEq α] (retained : α → Prop)
    (literals : List (SignedLiteral α)) :
    signedClauseSatisfied retained (typedDeduplicate literals) ↔ signedClauseSatisfied retained literals := by
  constructor
  · intro h
    cases (signedClauseSatisfied_iff_exists retained _).mp h with
    | intro literal h =>
      exact (signedClauseSatisfied_iff_exists retained _).mpr
        ⟨literal, (typedDeduplicate_mem_iff literals literal).mp h.1, h.2⟩
  · intro h
    cases (signedClauseSatisfied_iff_exists retained _).mp h with
    | intro literal h =>
      exact (signedClauseSatisfied_iff_exists retained _).mpr
        ⟨literal, (typedDeduplicate_mem_iff literals literal).mpr h.1, h.2⟩

def complementaryAt (literals : List (SignedLiteral α)) (node : α) : Prop :=
  SignedLiteral.positive node ∈ literals ∧ SignedLiteral.negative node ∈ literals

def complementaryAtDecision [DecidableEq α] (literals : List (SignedLiteral α)) (node : α) :
    Decidable (complementaryAt literals node) :=
  match typedListMembershipDecision (SignedLiteral.positive node) literals,
      typedListMembershipDecision (SignedLiteral.negative node) literals with
  | isTrue hp, isTrue hn => isTrue ⟨hp, hn⟩
  | isFalse hp, _ => isFalse (fun h => hp h.1)
  | _, isFalse hn => isFalse (fun h => hn h.2)

/-- The first complementary node in the supplied inventory order is returned.
This is a numeric least-index witness only for an ascending indexed inventory;
the normalized `tautology` constructor itself erases the witness. -/
def complementaryWitness [DecidableEq α] (nodes : List α) (literals : List (SignedLiteral α)) : Option α :=
  match nodes with
  | [] => none
  | node :: rest =>
    match complementaryAtDecision literals node with
    | isTrue _ => some node
    | isFalse _ => complementaryWitness rest literals

theorem complementaryWitness_sound [DecidableEq α] (nodes : List α)
    (literals : List (SignedLiteral α)) {node : α}
    (h : complementaryWitness nodes literals = some node) : complementaryAt literals node := by
  induction nodes with
  | nil => cases h
  | cons candidate rest ih =>
    cases hd : complementaryAtDecision literals candidate with
    | isTrue hc =>
      rw [complementaryWitness, hd] at h
      cases h
      exact hc
    | isFalse hn =>
      rw [complementaryWitness, hd] at h
      exact ih h

theorem complementaryWitness_none [DecidableEq α] (nodes : List α)
    (literals : List (SignedLiteral α)) :
    complementaryWitness nodes literals = none →
      ∀ node, node ∈ nodes → ¬ complementaryAt literals node := by
  induction nodes with
  | nil => intro _ node hm; cases hm
  | cons candidate rest ih =>
    intro h node hm
    cases hd : complementaryAtDecision literals candidate with
    | isTrue hc => rw [complementaryWitness, hd] at h; cases h
    | isFalse hn =>
      rw [complementaryWitness, hd] at h
      cases hm with
      | head => exact hn
      | tail _ hm => exact ih h node hm

theorem complementaryWitness_complete [DecidableEq α] (inventory : FiniteInventory α)
    (literals : List (SignedLiteral α)) {node : α} (h : complementaryAt literals node) :
    ∃ witness, complementaryWitness inventory.vertices literals = some witness := by
  cases hw : complementaryWitness inventory.vertices literals with
  | none =>
    exact False.elim ((complementaryWitness_none inventory.vertices literals hw node
      (inventory.complete node)) h)
  | some witness => exact ⟨witness, rfl⟩

/-- This classifier has no catch-all acceptance case. Its input has already
had repeats removed and complementary pairs checked by the full normalizer. -/
def classifyPrerequisiteLiterals (literals : List (SignedLiteral α)) : Option (PrerequisiteClause α) :=
  match literals with
  | [] => none
  | first :: rest =>
    match rest with
    | [] =>
      match first with
      | .positive node => some (.unit node)
      | .negative _ => none
    | second :: tail =>
      match tail with
      | _ :: _ => none
      | [] =>
        match first with
        | .negative consumer =>
          match second with
          | .positive dependency => some (.prerequisite consumer dependency)
          | .negative _ => none
        | .positive dependency =>
          match second with
          | .negative consumer => some (.prerequisite consumer dependency)
          | .positive _ => none

theorem classifyPrerequisiteLiterals_empty :
    classifyPrerequisiteLiterals ([] : List (SignedLiteral α)) = none := rfl

theorem classifyPrerequisiteLiterals_negative_unit (node : α) :
    classifyPrerequisiteLiterals [.negative node] = none := rfl

theorem classifyPrerequisiteLiterals_positive_or (a b : α) :
    classifyPrerequisiteLiterals [.positive a, .positive b] = none := rfl

theorem classifyPrerequisiteLiterals_negative_pair (a b : α) :
    classifyPrerequisiteLiterals [.negative a, .negative b] = none := rfl

theorem classifyPrerequisiteLiterals_long (a b c : SignedLiteral α) (rest : List (SignedLiteral α)) :
    classifyPrerequisiteLiterals (a :: b :: c :: rest) = none := rfl

theorem signedClauseSatisfied_singleton (retained : α → Prop) (literal : SignedLiteral α) :
    signedClauseSatisfied retained [literal] ↔ signedLiteralHolds retained literal := by
  constructor
  · intro h
    cases h with
    | inl h => exact h
    | inr h => exact False.elim h
  · intro h; exact Or.inl h

theorem signedClauseSatisfied_pair (retained : α → Prop) (a b : SignedLiteral α) :
    signedClauseSatisfied retained [a, b] ↔ signedLiteralHolds retained a ∨ signedLiteralHolds retained b := by
  constructor
  · intro h
    cases h with
    | inl h => exact Or.inl h
    | inr h => exact Or.inr ((signedClauseSatisfied_singleton retained b).mp h)
  · intro h
    cases h with
    | inl h => exact Or.inl h
    | inr h => exact Or.inr ((signedClauseSatisfied_singleton retained b).mpr h)

theorem classifyPrerequisiteLiterals_sound (retained : α → Prop)
    (literals : List (SignedLiteral α)) (clause : PrerequisiteClause α)
    (h : classifyPrerequisiteLiterals literals = some clause) :
    signedClauseSatisfied retained literals ↔ prerequisiteClauseHolds retained clause := by
  cases literals with
  | nil => cases h
  | cons first rest =>
    cases rest with
    | nil =>
      cases first with
      | positive node =>
        change some (PrerequisiteClause.unit node) = some clause at h
        cases h
        exact signedClauseSatisfied_singleton retained (.positive node)
      | negative node => cases h
    | cons second tail =>
      cases tail with
      | cons third rest => cases h
      | nil =>
        cases first with
        | negative consumer =>
          cases second with
          | negative other => cases h
          | positive dependency =>
            change some (PrerequisiteClause.prerequisite consumer dependency) = some clause at h
            cases h
            exact signedClauseSatisfied_pair retained (.negative consumer) (.positive dependency)
        | positive dependency =>
          cases second with
          | positive other => cases h
          | negative consumer =>
            change some (PrerequisiteClause.prerequisite consumer dependency) = some clause at h
            cases h
            constructor
            · intro hs
              cases (signedClauseSatisfied_pair retained _ _).mp hs with
              | inl hd => exact Or.inr hd
              | inr hc => exact Or.inl hc
            · intro hs
              apply (signedClauseSatisfied_pair retained _ _).mpr
              cases hs with
              | inl hc => exact Or.inr hc
              | inr hd => exact Or.inl hd

def normalizePrerequisiteClause [DecidableEq α] (inventory : FiniteInventory α)
    (literals : List (SignedLiteral α)) : Option (PrerequisiteClause α) :=
  let normalized := typedDeduplicate literals
  match complementaryWitness inventory.vertices normalized with
  | some _ => some .tautology
  | none => classifyPrerequisiteLiterals normalized

theorem complementaryWitness_empty [DecidableEq α] (nodes : List α) :
    complementaryWitness nodes ([] : List (SignedLiteral α)) = none := by
  induction nodes with
  | nil => rfl
  | cons node rest ih => exact ih

theorem normalizePrerequisiteClause_empty [DecidableEq α] (inventory : FiniteInventory α) :
    normalizePrerequisiteClause inventory [] = none := by
  dsimp only [normalizePrerequisiteClause, typedDeduplicate]
  rw [complementaryWitness_empty]
  rfl

theorem normalizePrerequisiteClause_complementary [DecidableEq α] (inventory : FiniteInventory α)
    (literals : List (SignedLiteral α)) {node : α} (h : complementaryAt literals node) :
    normalizePrerequisiteClause inventory literals = some .tautology := by
  have hd : complementaryAt (typedDeduplicate literals) node :=
    ⟨(typedDeduplicate_mem_iff literals (.positive node)).mpr h.1,
      (typedDeduplicate_mem_iff literals (.negative node)).mpr h.2⟩
  cases complementaryWitness_complete inventory (typedDeduplicate literals) hd with
  | intro witness hw =>
    dsimp only [normalizePrerequisiteClause]
    rw [hw]

/-- Successful executable normalization preserves ordinary signed-clause
satisfaction. Unsupported shapes have no success premise and gain no theorem. -/
theorem normalizePrerequisiteClause_sound [DecidableEq α] (inventory : FiniteInventory α)
    (retained : α → Prop) [DecidablePred retained] (literals : List (SignedLiteral α))
    (clause : PrerequisiteClause α) (h : normalizePrerequisiteClause inventory literals = some clause) :
    signedClauseSatisfied retained literals ↔ prerequisiteClauseHolds retained clause := by
  dsimp only [normalizePrerequisiteClause] at h
  cases hw : complementaryWitness inventory.vertices (typedDeduplicate literals) with
  | none =>
    rw [hw] at h
    exact Iff.trans (signedClauseSatisfied_deduplicate retained literals).symm
      (classifyPrerequisiteLiterals_sound retained _ clause h)
  | some witness =>
    rw [hw] at h
    cases h
    have hp := complementaryWitness_sound inventory.vertices (typedDeduplicate literals) hw
    have hs : signedClauseSatisfied retained (typedDeduplicate literals) := by
      by_cases hr : retained witness
      · exact (signedClauseSatisfied_iff_exists retained _).mpr ⟨.positive witness, hp.1, hr⟩
      · exact (signedClauseSatisfied_iff_exists retained _).mpr ⟨.negative witness, hp.2, hr⟩
    constructor
    · intro _; exact True.intro
    · intro _; exact (signedClauseSatisfied_deduplicate retained literals).mp hs

def signedCNFSatisfied (retained : α → Prop) (clauses : List (List (SignedLiteral α))) : Prop :=
  match clauses with
  | [] => True
  | clause :: rest => signedClauseSatisfied retained clause ∧ signedCNFSatisfied retained rest

def normalizePrerequisiteCNF [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (List (SignedLiteral α))) : Option (List (PrerequisiteClause α)) :=
  match clauses with
  | [] => some []
  | clause :: rest =>
    match normalizePrerequisiteClause inventory clause with
    | none => none
    | some typed =>
      match normalizePrerequisiteCNF inventory rest with
      | none => none
      | some tail => some (typed :: tail)

theorem normalizePrerequisiteCNF_sound [DecidableEq α] (inventory : FiniteInventory α)
    (retained : α → Prop) [DecidablePred retained] (clauses : List (List (SignedLiteral α)))
    (typed : List (PrerequisiteClause α)) (h : normalizePrerequisiteCNF inventory clauses = some typed) :
    signedCNFSatisfied retained clauses ↔ prerequisiteCNFSatisfied retained typed := by
  induction clauses generalizing typed with
  | nil => cases h; exact Iff.rfl
  | cons clause rest ih =>
    cases hc : normalizePrerequisiteClause inventory clause with
    | none => rw [normalizePrerequisiteCNF, hc] at h; cases h
    | some first =>
      rw [normalizePrerequisiteCNF, hc] at h
      cases hr : normalizePrerequisiteCNF inventory rest with
      | none => rw [hr] at h; cases h
      | some tail =>
        rw [hr] at h
        cases h
        constructor
        · intro hs
          exact ⟨(normalizePrerequisiteClause_sound inventory retained clause first hc).mp hs.1,
            (ih tail hr).mp hs.2⟩
        · intro hs
          exact ⟨(normalizePrerequisiteClause_sound inventory retained clause first hc).mpr hs.1,
            (ih tail hr).mpr hs.2⟩

theorem normalizePrerequisiteCNF_model_satisfies [DecidableEq α] (inventory : FiniteInventory α)
    (clauses : List (List (SignedLiteral α))) (typed : List (PrerequisiteClause α))
    (h : normalizePrerequisiteCNF inventory clauses = some typed) :
    signedCNFSatisfied (prerequisiteCNFModel inventory typed) clauses :=
  (normalizePrerequisiteCNF_sound inventory _ clauses typed h).mpr (prerequisiteCNFModel_satisfies inventory typed)

theorem normalizePrerequisiteCNF_model_minimizes [DecidableEq α] (inventory : FiniteInventory α)
    (weight : α → Nat) (clauses : List (List (SignedLiteral α))) (typed : List (PrerequisiteClause α))
    (hn : normalizePrerequisiteCNF inventory clauses = some typed)
    {retained : α → Prop} [DecidablePred retained] (hs : signedCNFSatisfied retained clauses) :
    finiteWeightedCost inventory weight (prerequisiteCNFModel inventory typed) ≤
      finiteWeightedCost inventory weight retained :=
  prerequisiteCNFModel_minimizes inventory weight typed
    ((normalizePrerequisiteCNF_sound inventory retained clauses typed hn).mp hs)

/-- Mathematical signed integers use one-based magnitudes; typed indices are
zero based. This does not parse JSON or certify a Python integer conversion. -/
def encodeSignedLiteral {n : Nat} (literal : SignedLiteral (Fin n)) : Int :=
  match literal with
  | .positive index => .ofNat (Nat.succ index.val)
  | .negative index => .negSucc index.val

def decodeSignedInt (n : Nat) (raw : Int) : Option (SignedLiteral (Fin n)) :=
  match raw with
  | .ofNat magnitude =>
    match magnitude with
    | 0 => none
    | Nat.succ index =>
      if h : index < n then some (.positive ⟨index, h⟩) else none
  | .negSucc index =>
    if h : index < n then some (.negative ⟨index, h⟩) else none

def signedLiteralIndex {n : Nat} (literal : SignedLiteral (Fin n)) : Fin n :=
  match literal with
  | .positive index => index
  | .negative index => index

def signedLiteralSign {n : Nat} (literal : SignedLiteral (Fin n)) : Int :=
  match literal with
  | .positive _ => 1
  | .negative _ => -1

theorem decodeSignedInt_zero (n : Nat) : decodeSignedInt n 0 = none := rfl

theorem decodeSignedInt_positive_outOfRange (n index : Nat) (h : n ≤ index) :
    decodeSignedInt n (.ofNat (Nat.succ index)) = none := by
  dsimp only [decodeSignedInt]
  rw [dif_neg (Nat.not_lt_of_ge h)]

theorem decodeSignedInt_negative_outOfRange (n index : Nat) (h : n ≤ index) :
    decodeSignedInt n (.negSucc index) = none := by
  dsimp only [decodeSignedInt]
  rw [dif_neg (Nat.not_lt_of_ge h)]

theorem decodeSignedInt_zero_bound (raw : Int) : decodeSignedInt 0 raw = none := by
  cases raw with
  | ofNat magnitude =>
    cases magnitude with
    | zero => rfl
    | succ index => exact decodeSignedInt_positive_outOfRange 0 index (Nat.zero_le index)
  | negSucc index => exact decodeSignedInt_negative_outOfRange 0 index (Nat.zero_le index)

theorem decodeSignedInt_encode {n : Nat} (literal : SignedLiteral (Fin n)) :
    decodeSignedInt n (encodeSignedLiteral literal) = some literal := by
  cases literal with
  | positive index =>
    cases index with
    | mk value h =>
      dsimp only [encodeSignedLiteral, decodeSignedInt]
      rw [dif_pos h]
  | negative index =>
    cases index with
    | mk value h =>
      dsimp only [encodeSignedLiteral, decodeSignedInt]
      rw [dif_pos h]

theorem decodeSignedInt_success {n : Nat} {raw : Int} {literal : SignedLiteral (Fin n)}
    (h : decodeSignedInt n raw = some literal) : raw = encodeSignedLiteral literal := by
  cases raw with
  | ofNat magnitude =>
    cases magnitude with
    | zero => cases h
    | succ index =>
      by_cases hi : index < n
      · dsimp only [decodeSignedInt] at h
        rw [dif_pos hi] at h
        cases h
        rfl
      · dsimp only [decodeSignedInt] at h
        rw [dif_neg hi] at h
        cases h
  | negSucc index =>
    by_cases hi : index < n
    · dsimp only [decodeSignedInt] at h
      rw [dif_pos hi] at h
      cases h
      rfl
    · dsimp only [decodeSignedInt] at h
      rw [dif_neg hi] at h
      cases h

theorem decodeSignedInt_success_iff {n : Nat} (raw : Int) (literal : SignedLiteral (Fin n)) :
    decodeSignedInt n raw = some literal ↔ raw = encodeSignedLiteral literal := by
  constructor
  · exact decodeSignedInt_success
  · intro h
    rw [h]
    exact decodeSignedInt_encode literal

theorem encodeSignedLiteral_natAbs {n : Nat} (literal : SignedLiteral (Fin n)) :
    (encodeSignedLiteral literal).natAbs = (signedLiteralIndex literal).val + 1 := by
  cases literal <;> rfl

theorem encodeSignedLiteral_sign {n : Nat} (literal : SignedLiteral (Fin n)) :
    (encodeSignedLiteral literal).sign = signedLiteralSign literal := by
  cases literal <;> rfl

theorem encodeSignedLiteral_nonzero {n : Nat} (literal : SignedLiteral (Fin n)) :
    encodeSignedLiteral literal ≠ 0 := by
  cases literal with
  | positive index => intro h; cases h
  | negative index => intro h; cases h

theorem decodeSignedInt_range {n : Nat} {raw : Int} {literal : SignedLiteral (Fin n)}
    (h : decodeSignedInt n raw = some literal) :
    (signedLiteralIndex literal).val < n ∧
      raw.natAbs = (signedLiteralIndex literal).val + 1 ∧ raw.natAbs ≤ n := by
  constructor
  · exact (signedLiteralIndex literal).isLt
  · constructor
    · rw [decodeSignedInt_success h]
      exact encodeSignedLiteral_natAbs literal
    · rw [decodeSignedInt_success h, encodeSignedLiteral_natAbs]
      exact Nat.succ_le_of_lt (signedLiteralIndex literal).isLt

theorem decodeSignedInt_sign {n : Nat} {raw : Int} {literal : SignedLiteral (Fin n)}
    (h : decodeSignedInt n raw = some literal) : raw.sign = signedLiteralSign literal := by
  rw [decodeSignedInt_success h]
  exact encodeSignedLiteral_sign literal

theorem decodeSignedInt_nonzero {n : Nat} {raw : Int} {literal : SignedLiteral (Fin n)}
    (h : decodeSignedInt n raw = some literal) : raw ≠ 0 := by
  rw [decodeSignedInt_success h]
  exact encodeSignedLiteral_nonzero literal

theorem decodeSignedInt_magnitude_outOfRange (n : Nat) (raw : Int) (h : n < raw.natAbs) :
    decodeSignedInt n raw = none := by
  cases hd : decodeSignedInt n raw with
  | none => rfl
  | some literal => exact False.elim (Nat.not_lt_of_ge (decodeSignedInt_range hd).2.2 h)

theorem decodeSignedInt_complete (n : Nat) (raw : Int) (hz : raw ≠ 0) (hr : raw.natAbs ≤ n) :
    ∃ literal, decodeSignedInt n raw = some literal := by
  cases raw with
  | ofNat magnitude =>
    cases magnitude with
    | zero => exact False.elim (hz rfl)
    | succ index =>
      have hi : index < n := hr
      refine ⟨.positive ⟨index, hi⟩, ?_⟩
      dsimp only [decodeSignedInt]
      rw [dif_pos hi]
  | negSucc index =>
    have hi : index < n := hr
    refine ⟨.negative ⟨index, hi⟩, ?_⟩
    dsimp only [decodeSignedInt]
    rw [dif_pos hi]

/-- Independent bounded integer-literal interpretation. Invalid integers,
including invalid negative ones, denote False rather than a negated default. -/
def boundedIntLiteralHolds (n : Nat) (retained : Fin n → Prop) (raw : Int) : Prop :=
  match raw with
  | .ofNat magnitude =>
    match magnitude with
    | 0 => False
    | Nat.succ index => if h : index < n then retained ⟨index, h⟩ else False
  | .negSucc index => if h : index < n then ¬ retained ⟨index, h⟩ else False

theorem boundedIntLiteralHolds_zero (n : Nat) (retained : Fin n → Prop) :
    boundedIntLiteralHolds n retained 0 = False := rfl

theorem boundedIntLiteralHolds_positive_outOfRange (n : Nat) (retained : Fin n → Prop)
    (index : Nat) (h : n ≤ index) :
    boundedIntLiteralHolds n retained (.ofNat (Nat.succ index)) = False := by
  dsimp only [boundedIntLiteralHolds]
  rw [dif_neg (Nat.not_lt_of_ge h)]

theorem boundedIntLiteralHolds_negative_outOfRange (n : Nat) (retained : Fin n → Prop)
    (index : Nat) (h : n ≤ index) :
    boundedIntLiteralHolds n retained (.negSucc index) = False := by
  dsimp only [boundedIntLiteralHolds]
  rw [dif_neg (Nat.not_lt_of_ge h)]

theorem boundedIntLiteralHolds_encode {n : Nat} (retained : Fin n → Prop)
    (literal : SignedLiteral (Fin n)) :
    boundedIntLiteralHolds n retained (encodeSignedLiteral literal) ↔ signedLiteralHolds retained literal := by
  cases literal with
  | positive index =>
    cases index with
    | mk value h =>
      dsimp only [encodeSignedLiteral, boundedIntLiteralHolds, signedLiteralHolds]
      rw [dif_pos h]
  | negative index =>
    cases index with
    | mk value h =>
      dsimp only [encodeSignedLiteral, boundedIntLiteralHolds, signedLiteralHolds]
      rw [dif_pos h]

theorem decodeSignedInt_literal_sound {n : Nat} (retained : Fin n → Prop)
    {raw : Int} {literal : SignedLiteral (Fin n)} (h : decodeSignedInt n raw = some literal) :
    boundedIntLiteralHolds n retained raw ↔ signedLiteralHolds retained literal := by
  rw [decodeSignedInt_success h]
  exact boundedIntLiteralHolds_encode retained literal

def decodeSignedIntClause (n : Nat) (raws : List Int) : Option (List (SignedLiteral (Fin n))) :=
  match raws with
  | [] => some []
  | raw :: rest =>
    match decodeSignedInt n raw with
    | none => none
    | some literal =>
      match decodeSignedIntClause n rest with
      | none => none
      | some tail => some (literal :: tail)

def encodeSignedIntClause {n : Nat} (literals : List (SignedLiteral (Fin n))) : List Int :=
  match literals with
  | [] => []
  | literal :: rest => encodeSignedLiteral literal :: encodeSignedIntClause rest

theorem decodeSignedIntClause_encode {n : Nat} (literals : List (SignedLiteral (Fin n))) :
    decodeSignedIntClause n (encodeSignedIntClause literals) = some literals := by
  induction literals with
  | nil => rfl
  | cons literal rest ih =>
    rw [encodeSignedIntClause, decodeSignedIntClause, decodeSignedInt_encode, ih]

/-- An invalid literal anywhere rejects the whole list; none is filtered out. -/
theorem decodeSignedIntClause_invalid_member (n : Nat) (raws : List Int) {raw : Int}
    (hm : raw ∈ raws) (hb : decodeSignedInt n raw = none) : decodeSignedIntClause n raws = none := by
  induction raws with
  | nil => cases hm
  | cons first rest ih =>
    cases hm with
    | head => rw [decodeSignedIntClause, hb]
    | tail _ hm =>
      cases hd : decodeSignedInt n first with
      | none => rw [decodeSignedIntClause, hd]
      | some literal => rw [decodeSignedIntClause, hd, ih hm]

def boundedIntClauseSatisfied (n : Nat) (retained : Fin n → Prop) (raws : List Int) : Prop :=
  match raws with
  | [] => False
  | raw :: rest => boundedIntLiteralHolds n retained raw ∨ boundedIntClauseSatisfied n retained rest

theorem decodeSignedIntClause_sound (n : Nat) (retained : Fin n → Prop) (raws : List Int)
    (literals : List (SignedLiteral (Fin n))) (h : decodeSignedIntClause n raws = some literals) :
    boundedIntClauseSatisfied n retained raws ↔ signedClauseSatisfied retained literals := by
  induction raws generalizing literals with
  | nil => cases h; exact Iff.rfl
  | cons raw rest ih =>
    cases hd : decodeSignedInt n raw with
    | none => rw [decodeSignedIntClause, hd] at h; cases h
    | some literal =>
      rw [decodeSignedIntClause, hd] at h
      cases ht : decodeSignedIntClause n rest with
      | none => rw [ht] at h; cases h
      | some tail =>
        rw [ht] at h
        cases h
        constructor
        · intro hs
          cases hs with
          | inl hs => exact Or.inl ((decodeSignedInt_literal_sound retained hd).mp hs)
          | inr hs => exact Or.inr ((ih tail ht).mp hs)
        · intro hs
          cases hs with
          | inl hs => exact Or.inl ((decodeSignedInt_literal_sound retained hd).mpr hs)
          | inr hs => exact Or.inr ((ih tail ht).mpr hs)

theorem decodeSignedIntClause_normalize_sound (n : Nat) (inventory : FiniteInventory (Fin n))
    (retained : Fin n → Prop) [DecidablePred retained] (raws : List Int)
    (literals : List (SignedLiteral (Fin n))) (clause : PrerequisiteClause (Fin n))
    (hd : decodeSignedIntClause n raws = some literals)
    (hn : normalizePrerequisiteClause inventory literals = some clause) :
    boundedIntClauseSatisfied n retained raws ↔ prerequisiteClauseHolds retained clause :=
  Iff.trans (decodeSignedIntClause_sound n retained raws literals hd)
    (normalizePrerequisiteClause_sound inventory retained literals clause hn)

def decodeSignedIntCNF (n : Nat) (raws : List (List Int)) : Option (List (List (SignedLiteral (Fin n)))) :=
  match raws with
  | [] => some []
  | clause :: rest =>
    match decodeSignedIntClause n clause with
    | none => none
    | some literals =>
      match decodeSignedIntCNF n rest with
      | none => none
      | some tail => some (literals :: tail)

def boundedIntCNFSatisfied (n : Nat) (retained : Fin n → Prop) (raws : List (List Int)) : Prop :=
  match raws with
  | [] => True
  | clause :: rest => boundedIntClauseSatisfied n retained clause ∧ boundedIntCNFSatisfied n retained rest

theorem decodeSignedIntCNF_sound (n : Nat) (retained : Fin n → Prop) (raws : List (List Int))
    (clauses : List (List (SignedLiteral (Fin n)))) (h : decodeSignedIntCNF n raws = some clauses) :
    boundedIntCNFSatisfied n retained raws ↔ signedCNFSatisfied retained clauses := by
  induction raws generalizing clauses with
  | nil => cases h; exact Iff.rfl
  | cons clause rest ih =>
    cases hd : decodeSignedIntClause n clause with
    | none => rw [decodeSignedIntCNF, hd] at h; cases h
    | some literals =>
      rw [decodeSignedIntCNF, hd] at h
      cases ht : decodeSignedIntCNF n rest with
      | none => rw [ht] at h; cases h
      | some tail =>
        rw [ht] at h
        cases h
        constructor
        · intro hs
          exact ⟨(decodeSignedIntClause_sound n retained clause literals hd).mp hs.1,
            (ih tail ht).mp hs.2⟩
        · intro hs
          exact ⟨(decodeSignedIntClause_sound n retained clause literals hd).mpr hs.1,
            (ih tail ht).mpr hs.2⟩

theorem decodeSignedIntCNF_normalize_sound (n : Nat) (inventory : FiniteInventory (Fin n))
    (retained : Fin n → Prop) [DecidablePred retained] (raws : List (List Int))
    (clauses : List (List (SignedLiteral (Fin n)))) (typed : List (PrerequisiteClause (Fin n)))
    (hd : decodeSignedIntCNF n raws = some clauses)
    (hn : normalizePrerequisiteCNF inventory clauses = some typed) :
    boundedIntCNFSatisfied n retained raws ↔ prerequisiteCNFSatisfied retained typed :=
  Iff.trans (decodeSignedIntCNF_sound n retained raws clauses hd)
    (normalizePrerequisiteCNF_sound inventory retained clauses typed hn)

theorem decodeSignedIntCNF_model_satisfies (n : Nat) (inventory : FiniteInventory (Fin n))
    (raws : List (List Int)) (clauses : List (List (SignedLiteral (Fin n))))
    (typed : List (PrerequisiteClause (Fin n))) (hd : decodeSignedIntCNF n raws = some clauses)
    (hn : normalizePrerequisiteCNF inventory clauses = some typed) :
    boundedIntCNFSatisfied n (prerequisiteCNFModel inventory typed) raws :=
  (decodeSignedIntCNF_normalize_sound n inventory _ raws clauses typed hd hn).mpr
    (prerequisiteCNFModel_satisfies inventory typed)

/-- Composition covers mathematical Int lists through successful typed
normalization and the shared-table minimum. JSON and Python remain separate. -/
theorem decodeSignedIntCNF_model_minimizes (n : Nat) (inventory : FiniteInventory (Fin n))
    (weight : Fin n → Nat) (raws : List (List Int)) (clauses : List (List (SignedLiteral (Fin n))))
    (typed : List (PrerequisiteClause (Fin n))) (hd : decodeSignedIntCNF n raws = some clauses)
    (hn : normalizePrerequisiteCNF inventory clauses = some typed)
    {retained : Fin n → Prop} [DecidablePred retained] (hs : boundedIntCNFSatisfied n retained raws) :
    finiteWeightedCost inventory weight (prerequisiteCNFModel inventory typed) ≤
      finiteWeightedCost inventory weight retained :=
  prerequisiteCNFModel_minimizes inventory weight typed
    ((decodeSignedIntCNF_normalize_sound n inventory retained raws clauses typed hd hn).mp hs)

universe v

/-- Structural key erasure produces stored positional rows, not cell functions. -/
def eraseBoolRow (row : BoolRow α) : List Bool :=
  match row with
  | [] => []
  | first :: rest => first.2 :: eraseBoolRow rest

def eraseBoolTable (table : BoolTable α) : List (List Bool) :=
  match table with
  | [] => []
  | first :: rest => eraseBoolRow first.2 :: eraseBoolTable rest

def listPosition {β : Type v} (values : List β) (position : Nat) : Option β :=
  match values with
  | [] => none
  | first :: rest =>
    match position with
    | 0 => some first
    | Nat.succ index => listPosition rest index

def positionalBoolLookup (table : List (List Bool)) (row column : Nat) : Option Bool :=
  match listPosition table row with
  | none => none
  | some values => listPosition values column

theorem eraseBoolRow_length (row : BoolRow α) : (eraseBoolRow row).length = row.length := by
  induction row with
  | nil => rfl
  | cons first rest ih => exact congrArg Nat.succ ih

theorem eraseBoolTable_length (table : BoolTable α) : (eraseBoolTable table).length = table.length := by
  induction table with
  | nil => rfl
  | cons first rest ih => exact congrArg Nat.succ ih

theorem listPosition_mem {β : Type v} (values : List β) (position : Nat) (value : β)
    (h : listPosition values position = some value) : value ∈ values := by
  induction values generalizing position with
  | nil => cases h
  | cons first rest ih =>
    cases position with
    | zero => cases h; exact List.Mem.head rest
    | succ index => exact List.Mem.tail first (ih index h)

theorem listPosition_get {β : Type v} (values : List β) :
    ∀ index : Fin values.length, listPosition values index.val = some (values.get index) := by
  induction values with
  | nil => intro index; exact False.elim (Nat.not_lt_zero index.val index.isLt)
  | cons first rest ih =>
    intro index
    cases index with
    | mk position h =>
      cases position with
      | zero => rfl
      | succ position => exact ih ⟨position, Nat.lt_of_succ_lt_succ h⟩

theorem listPosition_bound {β : Type v} (values : List β) (position : Nat) (value : β)
    (h : listPosition values position = some value) : position < values.length := by
  induction values generalizing position with
  | nil => cases h
  | cons first rest ih =>
    cases position with
    | zero => exact Nat.zero_lt_succ _
    | succ index => exact Nat.succ_lt_succ (ih index h)

theorem listPosition_none_of_length_le {β : Type v} (values : List β) (position : Nat)
    (h : values.length ≤ position) : listPosition values position = none := by
  induction values generalizing position with
  | nil => rfl
  | cons first rest ih =>
    cases position with
    | zero => exact False.elim (Nat.not_lt_zero rest.length h)
    | succ index => exact ih index (Nat.le_of_succ_le_succ h)

def keyedListKeys {β : Type v} (entries : List (α × β)) : List α :=
  match entries with
  | [] => []
  | first :: rest => first.1 :: keyedListKeys rest

def keyedListLookup [DecidableEq α] {β : Type v} (entries : List (α × β)) (key : α) : Option β :=
  match entries with
  | [] => none
  | first :: rest => if key = first.1 then some first.2 else keyedListLookup rest key

theorem keyedListKeys_mem {β : Type v} (entries : List (α × β)) (key : α) (value : β)
    (h : (key, value) ∈ entries) : key ∈ keyedListKeys entries := by
  induction entries with
  | nil => cases h
  | cons first rest ih =>
    cases h with
    | head => exact List.Mem.head (keyedListKeys rest)
    | tail _ h => exact List.Mem.tail first.1 (ih h)

theorem keyedListKeys_length {β : Type v} (entries : List (α × β)) :
    (keyedListKeys entries).length = entries.length := by
  induction entries with
  | nil => rfl
  | cons first rest ih => exact congrArg Nat.succ ih

theorem pairPosition_of_keyPosition {β : Type v} (entries : List (α × β)) :
    ∀ position key, listPosition (keyedListKeys entries) position = some key →
      ∃ value, listPosition entries position = some (key, value) := by
  induction entries with
  | nil => intro position key h; cases h
  | cons first rest ih =>
    cases first with
    | mk firstKey firstValue =>
      intro position key h
      cases position with
      | zero => cases h; exact ⟨firstValue, rfl⟩
      | succ index =>
        cases ih index key h with
        | intro value h => exact ⟨value, h⟩

/-- Uniqueness is essential: a later duplicate key could store another value,
while keyed lookup would still return the first occurrence. -/
theorem keyedListLookup_at_position [DecidableEq α] {β : Type v} (entries : List (α × β)) :
    (keyedListKeys entries).Nodup →
      ∀ position key value, listPosition entries position = some (key, value) →
        keyedListLookup entries key = some value := by
  induction entries with
  | nil => intro _ position key value h; cases h
  | cons first rest ih =>
    cases first with
    | mk firstKey firstValue =>
      intro unique position key value h
      cases unique with
      | cons headNe tailUnique =>
        cases position with
        | zero =>
          cases h
          change (if firstKey = firstKey then some firstValue else _) = some firstValue
          rw [if_pos rfl]
        | succ index =>
          have hm := listPosition_mem rest index (key, value) h
          have hk := keyedListKeys_mem rest key value hm
          have hne : key ≠ firstKey := fun he => (headNe key hk) he.symm
          change (if key = firstKey then some firstValue else keyedListLookup rest key) = some value
          rw [if_neg hne]
          exact ih tailUnique index key value h

theorem boolRowKeys_keyed (row : BoolRow α) : boolRowKeys row = keyedListKeys row := by
  induction row with
  | nil => rfl
  | cons first rest ih =>
    cases first with
    | mk key value => exact congrArg (List.cons key) ih

theorem boolTableKeys_keyed (table : BoolTable α) : boolTableKeys table = keyedListKeys table := by
  induction table with
  | nil => rfl
  | cons first rest ih =>
    cases first with
    | mk key row => exact congrArg (List.cons key) ih

theorem boolRowKeys_length (row : BoolRow α) : (boolRowKeys row).length = row.length :=
  (congrArg List.length (boolRowKeys_keyed row)).trans (keyedListKeys_length row)

theorem boolTableKeys_length (table : BoolTable α) : (boolTableKeys table).length = table.length :=
  (congrArg List.length (boolTableKeys_keyed table)).trans (keyedListKeys_length table)

theorem boolRowLookup_of_keyedListLookup [DecidableEq α] (row : BoolRow α) :
    ∀ key value, keyedListLookup row key = some value → boolRowLookup row key = value := by
  induction row with
  | nil => intro key value h; cases h
  | cons first rest ih =>
    cases first with
    | mk header cell =>
      intro key value h
      by_cases he : key = header
      · change (if key = header then some cell else _) = some value at h
        rw [if_pos he] at h
        change (if key = header then cell else _) = value
        rw [if_pos he]
        cases h
        rfl
      · change (if key = header then some cell else keyedListLookup rest key) = some value at h
        rw [if_neg he] at h
        change (if key = header then cell else boolRowLookup rest key) = value
        rw [if_neg he]
        exact ih key value h

theorem boolTableLookup_of_keyedListLookup [DecidableEq α] (table : BoolTable α) :
    ∀ key row, keyedListLookup table key = some row →
      ∀ column, boolTableLookup table key column = boolRowLookup row column := by
  induction table with
  | nil => intro key row h; cases h
  | cons first rest ih =>
    cases first with
    | mk header cells =>
      intro key row h column
      by_cases he : key = header
      · change (if key = header then some cells else _) = some row at h
        rw [if_pos he] at h
        change (if key = header then boolRowLookup cells column else _) = boolRowLookup row column
        rw [if_pos he]
        cases h
        rfl
      · change (if key = header then some cells else keyedListLookup rest key) = some row at h
        rw [if_neg he] at h
        change (if key = header then boolRowLookup cells column else boolTableLookup rest key column) =
          boolRowLookup row column
        rw [if_neg he]
        exact ih key row h column

theorem eraseBoolRow_position (row : BoolRow α) :
    ∀ position key value, listPosition row position = some (key, value) →
      listPosition (eraseBoolRow row) position = some value := by
  induction row with
  | nil => intro position key value h; cases h
  | cons first rest ih =>
    cases first with
    | mk header cell =>
      intro position key value h
      cases position with
      | zero => cases h; rfl
      | succ index => exact ih index key value h

theorem eraseBoolTable_position (table : BoolTable α) :
    ∀ position key row, listPosition table position = some (key, row) →
      listPosition (eraseBoolTable table) position = some (eraseBoolRow row) := by
  induction table with
  | nil => intro position key row h; cases h
  | cons first rest ih =>
    cases first with
    | mk header cells =>
      intro position key row h
      cases position with
      | zero => cases h; rfl
      | succ index => exact ih index key row h

theorem eraseBoolTable_rowLengths (vertices : List α) (table : BoolTable α) :
    (∀ key row, (key, row) ∈ table → boolRowKeys row = vertices) →
      ∀ row, row ∈ eraseBoolTable table → row.length = vertices.length := by
  induction table with
  | nil => intro _ row hm; cases hm
  | cons first rest ih =>
    cases first with
    | mk key cells =>
      intro columns row hm
      cases hm with
      | head =>
        exact (eraseBoolRow_length cells).trans ((boolRowKeys_length cells).symm.trans
          (congrArg List.length (columns key cells (List.Mem.head rest))))
      | tail _ hm =>
        apply ih _ row hm
        intro otherKey otherRow h
        exact columns otherKey otherRow (List.Mem.tail (key, cells) h)

structure PositionalBoolTableShape (size : Nat) (table : List (List Bool)) : Prop where
  rows_length : table.length = size
  columns_length : ∀ row, row ∈ table → row.length = size

theorem eraseBoolTable_shape (vertices : List α) (table : BoolTable α)
    (h : BoolTableShape vertices table) :
    PositionalBoolTableShape vertices.length (eraseBoolTable table) where
  rows_length := (eraseBoolTable_length table).trans ((boolTableKeys_length table).symm.trans
    (congrArg List.length h.rows_exact))
  columns_length := eraseBoolTable_rowLengths vertices table h.columns_exact

theorem positionalBoolLookup_row_outOfBounds (table : List (List Bool)) (row column : Nat)
    (h : table.length ≤ row) : positionalBoolLookup table row column = none := by
  unfold positionalBoolLookup
  rw [listPosition_none_of_length_le table row h]

theorem positionalBoolLookup_column_outOfBounds (size : Nat) (table : List (List Bool))
    (shape : PositionalBoolTableShape size table) (row column : Nat) (h : size ≤ column) :
    positionalBoolLookup table row column = none := by
  unfold positionalBoolLookup
  cases hr : listPosition table row with
  | none => rfl
  | some values =>
    have hm := listPosition_mem table row values hr
    have hc : values.length ≤ column := by
      rw [shape.columns_length values hm]
      exact h
    exact listPosition_none_of_length_le values column hc

/-- Exact keyed-to-positional correspondence. The two Fin indices carry bounds;
shape fixes the inventory order, and inventory uniqueness excludes duplicate-key
ambiguity. No Python or Array execution semantics are asserted. -/
theorem eraseBoolTable_lookup [DecidableEq α] (inventory : FiniteInventory α)
    (table : BoolTable α) (shape : BoolTableShape inventory.vertices table)
    (i j : Fin inventory.vertices.length) :
    positionalBoolLookup (eraseBoolTable table) i.val j.val =
      some (boolTableLookup table (inventory.vertices.get i) (inventory.vertices.get j)) := by
  have hi : listPosition (keyedListKeys table) i.val = some (inventory.vertices.get i) :=
    ((congrArg (fun keys => listPosition keys i.val) (boolTableKeys_keyed table).symm).trans
      (congrArg (fun keys => listPosition keys i.val) shape.rows_exact)).trans
      (listPosition_get inventory.vertices i)
  have uniqueRows : (keyedListKeys table).Nodup := by
    rw [← boolTableKeys_keyed table, shape.rows_exact]
    exact inventory.nodup
  cases pairPosition_of_keyPosition table i.val (inventory.vertices.get i) hi with
  | intro row hr =>
    have rowKeys := shape.columns_exact (inventory.vertices.get i) row
      (listPosition_mem table i.val (inventory.vertices.get i, row) hr)
    have hj : listPosition (keyedListKeys row) j.val = some (inventory.vertices.get j) :=
      ((congrArg (fun keys => listPosition keys j.val) (boolRowKeys_keyed row).symm).trans
        (congrArg (fun keys => listPosition keys j.val) rowKeys)).trans
        (listPosition_get inventory.vertices j)
    have uniqueColumns : (keyedListKeys row).Nodup := by
      rw [← boolRowKeys_keyed row, rowKeys]
      exact inventory.nodup
    cases pairPosition_of_keyPosition row j.val (inventory.vertices.get j) hj with
    | intro value hv =>
      have rowLookup := keyedListLookup_at_position table uniqueRows i.val
        (inventory.vertices.get i) row hr
      have columnLookup := keyedListLookup_at_position row uniqueColumns j.val
        (inventory.vertices.get j) value hv
      have ht : boolTableLookup table (inventory.vertices.get i) (inventory.vertices.get j) = value :=
        (boolTableLookup_of_keyedListLookup table _ row rowLookup _).trans
          (boolRowLookup_of_keyedListLookup row _ value columnLookup)
      unfold positionalBoolLookup
      rw [eraseBoolTable_position table i.val _ row hr]
      change listPosition (eraseBoolRow row) j.val =
        some (boolTableLookup table (inventory.vertices.get i) (inventory.vertices.get j))
      rw [eraseBoolRow_position row j.val _ value hv, ht]

/-- A total convenience value. The bounded correspondence theorem proves its
fallback unreachable on a well-shaped erased table; it is not a bounds check. -/
def positionalBoolValue (table : List (List Bool)) (row column : Nat) : Bool :=
  match positionalBoolLookup table row column with
  | none => false
  | some value => value

theorem positionalBoolValue_correspondence [DecidableEq α] (inventory : FiniteInventory α)
    (table : BoolTable α) (shape : BoolTableShape inventory.vertices table)
    (i j : Fin inventory.vertices.length) :
    positionalBoolValue (eraseBoolTable table) i.val j.val =
      boolTableLookup table (inventory.vertices.get i) (inventory.vertices.get j) := by
  unfold positionalBoolValue
  rw [eraseBoolTable_lookup inventory table shape i j]

/-- Per-cell snapshot pivot formula entirely in bounded positional inputs.
This is still a pure list-table theorem, not a Python matrix refinement. -/
theorem eraseBoolTable_pivot_formula [DecidableEq α] (inventory : FiniteInventory α)
    (previous : BoolTable α) (shape : BoolTableShape inventory.vertices previous)
    (i j k : Fin inventory.vertices.length) :
    positionalBoolLookup
      (eraseBoolTable (boolTablePivot inventory.vertices previous (inventory.vertices.get k))) i.val j.val =
      some (positionalBoolValue (eraseBoolTable previous) i.val j.val ||
        (positionalBoolValue (eraseBoolTable previous) i.val k.val &&
          positionalBoolValue (eraseBoolTable previous) k.val j.val)) := by
  rw [eraseBoolTable_lookup inventory _ (boolTablePivot_shape inventory.vertices previous _) i j]
  rw [positionalBoolValue_correspondence inventory previous shape i j,
    positionalBoolValue_correspondence inventory previous shape i k,
    positionalBoolValue_correspondence inventory previous shape k j]
  unfold boolTablePivot
  rw [boolTableLookup_build inventory.vertices inventory.vertices _
    (inventory.complete (inventory.vertices.get i)) (inventory.complete (inventory.vertices.get j))]

/-- Unit-weight cost counts retained vertices once in a complete duplicate-free
inventory. The underlying list law below counts occurrences for arbitrary lists. -/
def retainedCount (inventory : FiniteInventory α) (retained : α → Prop)
    [DecidablePred retained] : Nat :=
  finiteWeightedCost inventory (fun _ => 1) retained

theorem vertexCost_uniformOffset (weight : α → Nat) (offset : Nat)
    (retained : α → Prop) [DecidablePred retained] (a : α) :
    vertexCost (fun x => weight x + offset) retained a =
      vertexCost weight retained a + offset * vertexCost (fun _ => 1) retained a := by
  by_cases ha : retained a
  · rw [vertexCost, vertexCost, vertexCost, if_pos ha, if_pos ha, if_pos ha, Nat.mul_one]
  · rw [vertexCost, vertexCost, vertexCost, if_neg ha, if_neg ha, if_neg ha, Nat.mul_zero,
      Nat.add_zero]

theorem cost_add_shuffle (a b c d : Nat) : (a + b) + (c + d) = (a + c) + (b + d) := by
  calc
    (a + b) + (c + d) = a + (b + (c + d)) := Nat.add_assoc a b (c + d)
    _ = a + ((b + c) + d) := congrArg (fun x => a + x) (Nat.add_assoc b c d).symm
    _ = a + ((c + b) + d) := congrArg (fun x => a + (x + d)) (Nat.add_comm b c)
    _ = a + (c + (b + d)) := congrArg (fun x => a + x) (Nat.add_assoc c b d)
    _ = (a + c) + (b + d) := (Nat.add_assoc a c (b + d)).symm

theorem weightedCost_uniformOffset (vertices : List α) (weight : α → Nat) (offset : Nat)
    (retained : α → Prop) [DecidablePred retained] :
    weightedCost (fun a => weight a + offset) retained vertices =
      weightedCost weight retained vertices + offset * weightedCost (fun _ => 1) retained vertices := by
  induction vertices with
  | nil =>
    change 0 = 0 + offset * 0
    rw [Nat.mul_zero]
  | cons a rest ih =>
    change vertexCost (fun x => weight x + offset) retained a +
      weightedCost (fun x => weight x + offset) retained rest =
      (vertexCost weight retained a + weightedCost weight retained rest) +
        offset * (vertexCost (fun _ => 1) retained a + weightedCost (fun _ => 1) retained rest)
    rw [vertexCost_uniformOffset weight offset retained a, ih, Nat.mul_add]
    exact cost_add_shuffle _ _ _ _

theorem finiteWeightedCost_uniformOffset (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) (retained : α → Prop) [DecidablePred retained] :
    finiteWeightedCost inventory (fun a => weight a + offset) retained =
      finiteWeightedCost inventory weight retained + offset * retainedCount inventory retained :=
  weightedCost_uniformOffset inventory.vertices weight offset retained

theorem retainedCount_mono (inventory : FiniteInventory α) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (h : Included s t) :
    retainedCount inventory s ≤ retainedCount inventory t :=
  finiteWeightedCost_mono inventory (fun _ => 1) h

theorem weightedCost_unit_le_length (vertices : List α) (retained : α → Prop)
    [DecidablePred retained] : weightedCost (fun _ => 1) retained vertices ≤ vertices.length := by
  induction vertices with
  | nil => exact Nat.le_refl 0
  | cons a rest ih =>
    have headBound : vertexCost (fun _ => 1) retained a ≤ 1 := by
      by_cases ha : retained a
      · rw [vertexCost, if_pos ha]
        exact Nat.le_refl 1
      · rw [vertexCost, if_neg ha]
        exact Nat.zero_le 1
    calc
      weightedCost (fun _ => 1) retained (a :: rest) ≤ 1 + rest.length :=
        Nat.add_le_add headBound ih
      _ = rest.length + 1 := Nat.add_comm 1 rest.length

theorem retainedCount_le_inventory (inventory : FiniteInventory α) (retained : α → Prop)
    [DecidablePred retained] : retainedCount inventory retained ≤ inventory.vertices.length :=
  weightedCost_unit_le_length inventory.vertices retained

/-- Structural right cancellation avoids stronger imported proof dependencies. -/
theorem cost_add_right_cancel {a b : Nat} (offset : Nat) :
    a + offset = b + offset → a = b := by
  induction offset with
  | zero => intro h; exact h
  | succ offset ih => intro h; exact ih (Nat.succ.inj h)

theorem cost_le_of_add_le_add_right {a b : Nat} (offset : Nat) :
    a + offset ≤ b + offset → a ≤ b := by
  induction offset with
  | zero => intro h; exact h
  | succ offset ih => intro h; exact ih (Nat.le_of_succ_le_succ h)

/-- A common uniform offset preserves comparisons only under the explicit
equal-retained-count premise. This is not an unrestricted argmin theorem. -/
theorem finiteWeightedCost_offset_eq_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (counts : retainedCount inventory s = retainedCount inventory t) :
    finiteWeightedCost inventory (fun a => weight a + offset) s =
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔
      finiteWeightedCost inventory weight s = finiteWeightedCost inventory weight t := by
  have hs : finiteWeightedCost inventory (fun a => weight a + offset) s =
      finiteWeightedCost inventory weight s + offset * retainedCount inventory t :=
    (finiteWeightedCost_uniformOffset inventory weight offset s).trans
      (congrArg (fun n => finiteWeightedCost inventory weight s + offset * n) counts)
  have ht := finiteWeightedCost_uniformOffset inventory weight offset t
  constructor
  · intro h
    exact cost_add_right_cancel _ (hs.symm.trans (h.trans ht))
  · intro h
    exact hs.trans ((congrArg (fun n => n + offset * retainedCount inventory t) h).trans ht.symm)

theorem finiteWeightedCost_offset_le_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (counts : retainedCount inventory s = retainedCount inventory t) :
    finiteWeightedCost inventory (fun a => weight a + offset) s ≤
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔
      finiteWeightedCost inventory weight s ≤ finiteWeightedCost inventory weight t := by
  have hs : finiteWeightedCost inventory (fun a => weight a + offset) s =
      finiteWeightedCost inventory weight s + offset * retainedCount inventory t :=
    (finiteWeightedCost_uniformOffset inventory weight offset s).trans
      (congrArg (fun n => finiteWeightedCost inventory weight s + offset * n) counts)
  have ht := finiteWeightedCost_uniformOffset inventory weight offset t
  constructor
  · intro h
    apply cost_le_of_add_le_add_right (offset * retainedCount inventory t)
    calc
      finiteWeightedCost inventory weight s + offset * retainedCount inventory t =
          finiteWeightedCost inventory (fun a => weight a + offset) s := hs.symm
      _ ≤ finiteWeightedCost inventory (fun a => weight a + offset) t := h
      _ = finiteWeightedCost inventory weight t + offset * retainedCount inventory t := ht
  · intro h
    calc
      finiteWeightedCost inventory (fun a => weight a + offset) s =
          finiteWeightedCost inventory weight s + offset * retainedCount inventory t := hs
      _ ≤ finiteWeightedCost inventory weight t + offset * retainedCount inventory t :=
        Nat.add_le_add_right h _
      _ = finiteWeightedCost inventory (fun a => weight a + offset) t := ht.symm

theorem finiteWeightedCost_offset_lt_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t] (counts : retainedCount inventory s = retainedCount inventory t) :
    finiteWeightedCost inventory (fun a => weight a + offset) s <
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔
      finiteWeightedCost inventory weight s < finiteWeightedCost inventory weight t := by
  have hs : finiteWeightedCost inventory (fun a => weight a + offset) s =
      finiteWeightedCost inventory weight s + offset * retainedCount inventory t :=
    (finiteWeightedCost_uniformOffset inventory weight offset s).trans
      (congrArg (fun n => finiteWeightedCost inventory weight s + offset * n) counts)
  have ht := finiteWeightedCost_uniformOffset inventory weight offset t
  constructor
  · intro h
    apply Nat.lt_of_add_lt_add_right
    calc
      finiteWeightedCost inventory weight s + offset * retainedCount inventory t =
          finiteWeightedCost inventory (fun a => weight a + offset) s := hs.symm
      _ < finiteWeightedCost inventory (fun a => weight a + offset) t := h
      _ = finiteWeightedCost inventory weight t + offset * retainedCount inventory t := ht
  · intro h
    calc
      finiteWeightedCost inventory (fun a => weight a + offset) s =
          finiteWeightedCost inventory weight s + offset * retainedCount inventory t := hs
      _ < finiteWeightedCost inventory weight t + offset * retainedCount inventory t :=
        Nat.add_lt_add_right h _
      _ = finiteWeightedCost inventory (fun a => weight a + offset) t := ht.symm

/-- When the cheaper base selection retains `extra` more vertices, a common
offset separates into the same right summand and the two competing increments.
The cost and count gaps are explicit equalities over natural numbers. -/
theorem finiteWeightedCost_gap_factorization (inventory : FiniteInventory α)
    (weight : α → Nat) (offset gap extra : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + gap)
    (counts : retainedCount inventory s = retainedCount inventory t + extra) :
    (finiteWeightedCost inventory (fun a => weight a + offset) s =
      offset * extra + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t)) ∧
    (finiteWeightedCost inventory (fun a => weight a + offset) t =
      gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t)) := by
  constructor
  · calc
      finiteWeightedCost inventory (fun a => weight a + offset) s =
          finiteWeightedCost inventory weight s + offset * retainedCount inventory s :=
        finiteWeightedCost_uniformOffset inventory weight offset s
      _ = finiteWeightedCost inventory weight s + offset * (retainedCount inventory t + extra) :=
        congrArg (fun n => finiteWeightedCost inventory weight s + offset * n) counts
      _ = finiteWeightedCost inventory weight s +
          (offset * retainedCount inventory t + offset * extra) :=
        congrArg (fun n => finiteWeightedCost inventory weight s + n)
          (Nat.mul_add offset (retainedCount inventory t) extra)
      _ = (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) +
          offset * extra := (Nat.add_assoc _ _ _).symm
      _ = offset * extra +
          (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) :=
        Nat.add_comm _ _
  · calc
      finiteWeightedCost inventory (fun a => weight a + offset) t =
          finiteWeightedCost inventory weight t + offset * retainedCount inventory t :=
        finiteWeightedCost_uniformOffset inventory weight offset t
      _ = (finiteWeightedCost inventory weight s + gap) + offset * retainedCount inventory t :=
        congrArg (fun n => n + offset * retainedCount inventory t) costs
      _ = (gap + finiteWeightedCost inventory weight s) + offset * retainedCount inventory t :=
        congrArg (fun n => n + offset * retainedCount inventory t) (Nat.add_comm _ _)
      _ = gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) :=
        Nat.add_assoc _ _ _

/-- Pairwise comparison under explicit base-cost and retained-count gaps.
This statement makes no unrestricted global-minimum or decoder claim. -/
theorem finiteWeightedCost_gap_le_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset gap extra : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + gap)
    (counts : retainedCount inventory s = retainedCount inventory t + extra) :
    finiteWeightedCost inventory (fun a => weight a + offset) s ≤
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset * extra ≤ gap := by
  have h := finiteWeightedCost_gap_factorization inventory weight offset gap extra costs counts
  constructor
  · intro comparison
    apply cost_le_of_add_le_add_right
      (finiteWeightedCost inventory weight s + offset * retainedCount inventory t)
    calc
      offset * extra + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) =
          finiteWeightedCost inventory (fun a => weight a + offset) s := h.1.symm
      _ ≤ finiteWeightedCost inventory (fun a => weight a + offset) t := comparison
      _ = gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) := h.2
  · intro comparison
    calc
      finiteWeightedCost inventory (fun a => weight a + offset) s =
          offset * extra + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) := h.1
      _ ≤ gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) :=
        Nat.add_le_add_right comparison _
      _ = finiteWeightedCost inventory (fun a => weight a + offset) t := h.2.symm

theorem finiteWeightedCost_gap_eq_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset gap extra : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + gap)
    (counts : retainedCount inventory s = retainedCount inventory t + extra) :
    finiteWeightedCost inventory (fun a => weight a + offset) s =
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset * extra = gap := by
  have h := finiteWeightedCost_gap_factorization inventory weight offset gap extra costs counts
  constructor
  · intro comparison
    exact cost_add_right_cancel _ (h.1.symm.trans (comparison.trans h.2))
  · intro comparison
    exact h.1.trans ((congrArg
      (fun n => n + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t))
      comparison).trans h.2.symm)

theorem finiteWeightedCost_gap_lt_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset gap extra : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + gap)
    (counts : retainedCount inventory s = retainedCount inventory t + extra) :
    finiteWeightedCost inventory (fun a => weight a + offset) s <
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset * extra < gap := by
  have h := finiteWeightedCost_gap_factorization inventory weight offset gap extra costs counts
  constructor
  · intro comparison
    apply Nat.lt_of_add_lt_add_right
    calc
      offset * extra + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) =
          finiteWeightedCost inventory (fun a => weight a + offset) s := h.1.symm
      _ < finiteWeightedCost inventory (fun a => weight a + offset) t := comparison
      _ = gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) := h.2
  · intro comparison
    calc
      finiteWeightedCost inventory (fun a => weight a + offset) s =
          offset * extra + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) := h.1
      _ < gap + (finiteWeightedCost inventory weight s + offset * retainedCount inventory t) :=
        Nat.add_lt_add_right comparison _
      _ = finiteWeightedCost inventory (fun a => weight a + offset) t := h.2.symm

/-- A base-cost gap of thirteen and one extra retained vertex give an exact
threshold for every common natural offset, with no subtraction or division. -/
theorem finiteWeightedCost_gap13_le_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + 13)
    (counts : retainedCount inventory s = retainedCount inventory t + 1) :
    finiteWeightedCost inventory (fun a => weight a + offset) s ≤
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset ≤ 13 := by
  have h := finiteWeightedCost_gap_le_iff inventory weight offset 13 1 costs counts
  constructor
  · intro comparison
    calc
      offset = offset * 1 := (Nat.mul_one offset).symm
      _ ≤ 13 := h.mp comparison
  · intro comparison
    apply h.mpr
    calc
      offset * 1 = offset := Nat.mul_one offset
      _ ≤ 13 := comparison

theorem finiteWeightedCost_gap13_eq_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + 13)
    (counts : retainedCount inventory s = retainedCount inventory t + 1) :
    finiteWeightedCost inventory (fun a => weight a + offset) s =
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset = 13 := by
  have h := finiteWeightedCost_gap_eq_iff inventory weight offset 13 1 costs counts
  constructor
  · intro comparison
    exact (Nat.mul_one offset).symm.trans (h.mp comparison)
  · intro comparison
    exact h.mpr ((Nat.mul_one offset).trans comparison)

theorem finiteWeightedCost_gap13_lt_iff (inventory : FiniteInventory α)
    (weight : α → Nat) (offset : Nat) {s t : α → Prop}
    [DecidablePred s] [DecidablePred t]
    (costs : finiteWeightedCost inventory weight t = finiteWeightedCost inventory weight s + 13)
    (counts : retainedCount inventory s = retainedCount inventory t + 1) :
    finiteWeightedCost inventory (fun a => weight a + offset) s <
        finiteWeightedCost inventory (fun a => weight a + offset) t ↔ offset < 13 := by
  have h := finiteWeightedCost_gap_lt_iff inventory weight offset 13 1 costs counts
  constructor
  · intro comparison
    calc
      offset = offset * 1 := (Nat.mul_one offset).symm
      _ < 13 := h.mp comparison
  · intro comparison
    apply h.mpr
    calc
      offset * 1 = offset := Nat.mul_one offset
      _ < 13 := comparison

/-- Scalar unequal-count illustrations. They do not certify any external model
enumeration or serialized cost projection. -/
theorem unequalCount_offset12 : (47 : Nat) + 12 * 11 < 60 + 12 * 10 := by decide

theorem unequalCount_offset13 : (47 : Nat) + 13 * 11 = 60 + 13 * 10 := by decide

theorem unequalCount_offset14 : (60 : Nat) + 14 * 10 < 47 + 14 * 11 := by decide

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
