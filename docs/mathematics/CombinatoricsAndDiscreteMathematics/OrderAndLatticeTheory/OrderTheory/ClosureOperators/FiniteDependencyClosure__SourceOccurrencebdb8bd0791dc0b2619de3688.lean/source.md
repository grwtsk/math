# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867` · SHA-256 `0c2c0199d15476fb3c85c977531d271fcbc074ceb09c110d8e2b83ed0fec7120`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Fintype.Card
import Lean.Elab.Tactic.Omega

/-!
# CCC exact finite dependency invalidation

An edge points from a consumer to one of its prerequisites. Invalidation starts
with changed nodes and adds precisely their transitive consumers. Cycles are
allowed. The executable saturation routine terminates because every nonfixed
step adds at least one member of the finite node inventory; the number of absent
nodes strictly decreases. Neither acyclicity nor an assumed stabilization bound
is used. The semantic theorem identifies the computed set with finite dependency
paths to an original changed seed.

This is a dependency model. A faithful deployment must supply the complete,
correct dependency inventory; a missing edge is not repaired by these theorems.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u

section Dependencies

variable {Node : Type u}

/-- A finite path follows consumer-to-prerequisite edges. Reflexivity ensures
that every changed seed invalidates its own evidence. -/
inductive DependencyPath (dependencies : Node → Finset Node) : Node → Node → Prop
  | refl (node : Node) : DependencyPath dependencies node node
  | step {consumer prerequisite seed : Node} :
      prerequisite ∈ dependencies consumer →
      DependencyPath dependencies prerequisite seed →
      DependencyPath dependencies consumer seed

namespace DependencyPath

variable {dependencies : Node → Finset Node}

theorem trans {a b c : Node} (hab : DependencyPath dependencies a b)
    (hbc : DependencyPath dependencies b c) : DependencyPath dependencies a c := by
  induction hab with
  | refl => exact hbc
  | step hedge _ ih => exact .step hedge (ih hbc)

end DependencyPath

variable [Fintype Node] [DecidableEq Node]

/-- One executable pass retains all invalidated nodes and adds every consumer
of an invalidated prerequisite. -/
def dependencyStep (dependencies : Node → Finset Node) (nodes : Finset Node) : Finset Node :=
  nodes ∪ Finset.univ.filter (fun consumer =>
    ∃ prerequisite ∈ dependencies consumer, prerequisite ∈ nodes)

@[simp]
theorem mem_dependencyStep (dependencies : Node → Finset Node) (nodes : Finset Node)
    (node : Node) : node ∈ dependencyStep dependencies nodes ↔
    node ∈ nodes ∨ ∃ prerequisite ∈ dependencies node, prerequisite ∈ nodes := by
  simp [dependencyStep]

theorem subset_dependencyStep (dependencies : Node → Finset Node) (nodes : Finset Node) :
    nodes ⊆ dependencyStep dependencies nodes := Finset.subset_union_left

theorem dependencyStep_mono (dependencies : Node → Finset Node)
    {nodes larger : Finset Node} (h : nodes ⊆ larger) :
    dependencyStep dependencies nodes ⊆ dependencyStep dependencies larger := by
  intro node hn
  rcases (mem_dependencyStep dependencies nodes node).mp hn with hn | ⟨p, hp, hn⟩
  · exact (mem_dependencyStep dependencies larger node).mpr (Or.inl (h hn))
  · exact (mem_dependencyStep dependencies larger node).mpr (Or.inr ⟨p, hp, h hn⟩)

/-- Exact executable invalidation. The recursion includes finite cyclic graphs;
its termination proof counts absent nodes, rather than assuming a DAG. -/
def affectedClosure (dependencies : Node → Finset Node) (seeds : Finset Node) : Finset Node :=
  if _h : dependencyStep dependencies seeds = seeds then seeds
  else affectedClosure dependencies (dependencyStep dependencies seeds)
termination_by Fintype.card Node - seeds.card
decreasing_by
  have hstrict : seeds ⊂ dependencyStep dependencies seeds :=
    Finset.ssubset_iff_subset_ne.mpr
      ⟨subset_dependencyStep dependencies seeds, Ne.symm _h⟩
  have hcard := Finset.card_lt_card hstrict
  have hbound := Finset.card_le_univ (dependencyStep dependencies seeds)
  omega

/-- Closed sets include every consumer of every member prerequisite. -/
def DependencyClosed (dependencies : Node → Finset Node) (nodes : Finset Node) : Prop :=
  ∀ consumer prerequisite, prerequisite ∈ dependencies consumer →
    prerequisite ∈ nodes → consumer ∈ nodes

theorem dependencyStep_eq_iff_closed (dependencies : Node → Finset Node)
    (nodes : Finset Node) : dependencyStep dependencies nodes = nodes ↔
    DependencyClosed dependencies nodes := by
  constructor
  · intro heq consumer prerequisite hp hn
    rw [← heq]
    exact (mem_dependencyStep dependencies nodes consumer).mpr (Or.inr ⟨prerequisite, hp, hn⟩)
  · intro hc
    apply Finset.Subset.antisymm
    · intro consumer hn
      rcases (mem_dependencyStep dependencies nodes consumer).mp hn with hn | ⟨p, hp, hn⟩
      · exact hn
      · exact hc consumer p hp hn
    · exact subset_dependencyStep dependencies nodes

theorem seeds_subset_affectedClosure (dependencies : Node → Finset Node)
    (seeds : Finset Node) : seeds ⊆ affectedClosure dependencies seeds := by
  induction seeds using affectedClosure.induct dependencies with
  | case1 seeds h => simp [affectedClosure, h]
  | case2 seeds h ih =>
    rw [affectedClosure, dif_neg h]
    exact (subset_dependencyStep dependencies seeds).trans ih

theorem affectedClosure_closed (dependencies : Node → Finset Node)
    (seeds : Finset Node) : DependencyClosed dependencies (affectedClosure dependencies seeds) := by
  induction seeds using affectedClosure.induct dependencies with
  | case1 seeds h =>
    rw [affectedClosure, dif_pos h]
    exact (dependencyStep_eq_iff_closed dependencies seeds).mp h
  | case2 seeds h ih =>
    rw [affectedClosure, dif_neg h]
    exact ih

theorem affectedClosure_least (dependencies : Node → Finset Node)
    (seeds : Finset Node) {closed : Finset Node} (hseeds : seeds ⊆ closed)
    (hclosed : DependencyClosed dependencies closed) :
    affectedClosure dependencies seeds ⊆ closed := by
  induction seeds using affectedClosure.induct dependencies with
  | case1 seeds h => simpa [affectedClosure, h] using hseeds
  | case2 seeds h ih =>
    rw [affectedClosure, dif_neg h]
    apply ih
    intro consumer hn
    rcases (mem_dependencyStep dependencies seeds consumer).mp hn with hn | ⟨p, hp, hn⟩
    · exact hseeds hn
    · exact hclosed consumer p hp (hseeds hn)

/-- A dependency path propagates invalidation through any number of edges,
including paths within cycles. -/
theorem dependencyPath_mem_affectedClosure (dependencies : Node → Finset Node)
    (seeds : Finset Node) {consumer prerequisite : Node}
    (hpath : DependencyPath dependencies consumer prerequisite)
    (hprerequisite : prerequisite ∈ affectedClosure dependencies seeds) :
    consumer ∈ affectedClosure dependencies seeds := by
  induction hpath with
  | refl => exact hprerequisite
  | step hedge _ ih =>
    exact affectedClosure_closed dependencies seeds _ _ hedge (ih hprerequisite)

/-- Exactness is graph-theoretic: the computed set is precisely the nodes with a
finite dependency path to a declared changed seed. This does not claim that every
invalidated statement is false, or that the supplied dependency graph is complete. -/
theorem mem_affectedClosure_iff (dependencies : Node → Finset Node)
    (seeds : Finset Node) (consumer : Node) :
    consumer ∈ affectedClosure dependencies seeds ↔
      ∃ seed ∈ seeds, DependencyPath dependencies consumer seed := by
  classical
  constructor
  · intro hc
    let reachable := Finset.univ.filter (fun node =>
      ∃ seed ∈ seeds, DependencyPath dependencies node seed)
    have hseeds : seeds ⊆ reachable := by
      intro seed hs
      simp only [reachable, Finset.mem_filter, Finset.mem_univ, true_and]
      exact ⟨seed, hs, .refl seed⟩
    have hclosed : DependencyClosed dependencies reachable := by
      intro node prerequisite hp hprerequisite
      simp only [reachable, Finset.mem_filter, Finset.mem_univ, true_and] at hprerequisite ⊢
      rcases hprerequisite with ⟨seed, hs, hpath⟩
      exact ⟨seed, hs, .step hp hpath⟩
    have hr := affectedClosure_least dependencies seeds hseeds hclosed hc
    simpa only [reachable, Finset.mem_filter, Finset.mem_univ, true_and] using hr
  · rintro ⟨seed, hs, hpath⟩
    exact dependencyPath_mem_affectedClosure dependencies seeds hpath
      (seeds_subset_affectedClosure dependencies seeds hs)

theorem affectedClosure_mono (dependencies : Node → Finset Node)
    {seeds larger : Finset Node} (h : seeds ⊆ larger) :
    affectedClosure dependencies seeds ⊆ affectedClosure dependencies larger :=
  affectedClosure_least dependencies seeds
    (h.trans (seeds_subset_affectedClosure dependencies larger))
    (affectedClosure_closed dependencies larger)

theorem affectedClosure_eq_of_closed (dependencies : Node → Finset Node)
    (seeds : Finset Node) (hclosed : DependencyClosed dependencies seeds) :
    affectedClosure dependencies seeds = seeds :=
  Finset.Subset.antisymm
    (affectedClosure_least dependencies seeds (Finset.Subset.refl _) hclosed)
    (seeds_subset_affectedClosure dependencies seeds)

@[simp]
theorem affectedClosure_idempotent (dependencies : Node → Finset Node) (seeds : Finset Node) :
    affectedClosure dependencies (affectedClosure dependencies seeds) =
      affectedClosure dependencies seeds :=
  affectedClosure_eq_of_closed dependencies _ (affectedClosure_closed dependencies seeds)

/-- An unaffected node is not itself changed. -/
theorem unaffected_not_seed (dependencies : Node → Finset Node)
    (seeds : Finset Node) {node : Node} (hn : node ∉ affectedClosure dependencies seeds) :
    node ∉ seeds := fun hs => hn (seeds_subset_affectedClosure dependencies seeds hs)

/-- No unaffected node has even a transitive affected prerequisite. This is the
precise preservation condition for evidence outside the invalidation closure. -/
theorem unaffected_dependency_unaffected (dependencies : Node → Finset Node)
    (seeds : Finset Node) {consumer prerequisite : Node}
    (hc : consumer ∉ affectedClosure dependencies seeds)
    (hpath : DependencyPath dependencies consumer prerequisite) :
    prerequisite ∉ affectedClosure dependencies seeds :=
  fun hp => hc (dependencyPath_mem_affectedClosure dependencies seeds hpath hp)

@[simp]
theorem affectedClosure_empty (dependencies : Node → Finset Node) :
    affectedClosure dependencies ∅ = ∅ := by
  apply affectedClosure_eq_of_closed
  intro _ prerequisite _ hp
  exact False.elim (Finset.notMem_empty prerequisite hp)

end Dependencies

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
