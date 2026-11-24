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


/-!
## Coverage refinement for partial dependency observations

Local attribution: grwtsk contributors.
Consumer: grwtsk/sofic PR #1 at 76ec55b3d782e8f0fd5039d0d1e7906ee37f4807,
issues #6/#10 (A04/A06). ArchitecturalInvariantValidator.cpp lines 344–373
checks a lexical subset of C++ includes, not complete actual dependencies.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent analytic review: NOT_RUN.

For a common finite stable-ID domain, every actual dependency edge must have
a reported dependency path; literal edge inclusion is sufficient but stronger
than necessary. Induction concatenates those paths; the converse tests a
singleton seed at each actual prerequisite. Taking the old/new union covers
both revisions if identities have first been reconciled. Unknown completeness
requires the full domain, not the observed closure. Test-selection completeness
additionally requires coverage of the actual node-to-check relation. No claim
that source parsing, compiler invocation or this Boolean certifies coverage;
the actual dependencies, seeds, old/new identity map and check inventory
must be supplied independently.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

section CoverageRefinement

universe u v

variable {Node : Type u} [Fintype Node] [DecidableEq Node]

/-- Each actual edge has a reported path, on the same stable-ID domain. -/
def DependencyCoverage (actual reported : Node → Finset Node) : Prop :=
  ∀ consumer prerequisite, prerequisite ∈ actual consumer →
    DependencyPath reported consumer prerequisite

theorem dependencyPath_of_coverage (actual reported : Node → Finset Node)
    (covered : DependencyCoverage actual reported) {consumer prerequisite : Node}
    (path : DependencyPath actual consumer prerequisite) :
    DependencyPath reported consumer prerequisite := by
  induction path with
  | refl => exact .refl _
  | step hedge _ ih => exact (covered _ _ hedge).trans ih

/-- Exact weakest graph-theoretic coverage for conservative closure at
every seed set, including singleton probes and cycles. -/
theorem affectedClosure_subset_iff_coverage (actual reported : Node → Finset Node) :
    (∀ seeds, affectedClosure actual seeds ⊆ affectedClosure reported seeds) ↔
      DependencyCoverage actual reported := by
  constructor
  · intro h consumer prerequisite hedge
    have hc : consumer ∈ affectedClosure actual {prerequisite} :=
      (mem_affectedClosure_iff actual {prerequisite} consumer).2
        ⟨prerequisite, by simp, .step hedge (.refl prerequisite)⟩
    obtain ⟨seed, hs, path⟩ :=
      (mem_affectedClosure_iff reported {prerequisite} consumer).1
        (h {prerequisite} hc)
    have same : seed = prerequisite := Finset.mem_singleton.mp hs
    simpa only [same] using path
  · intro covered seeds consumer hc
    obtain ⟨seed, hs, path⟩ :=
      (mem_affectedClosure_iff actual seeds consumer).1 hc
    exact (mem_affectedClosure_iff reported seeds consumer).2
      ⟨seed, hs, dependencyPath_of_coverage actual reported covered path⟩

theorem edge_inclusion_implies_coverage (actual reported : Node → Finset Node)
    (edges : ∀ consumer, actual consumer ⊆ reported consumer) :
    DependencyCoverage actual reported := by
  intro consumer prerequisite hedge
  exact .step (edges consumer hedge) (.refl prerequisite)

/-- After stable-ID reconciliation, retain paths affected in either revision. -/
theorem old_new_union_covers (old new : Node → Finset Node) (seeds : Finset Node) :
    affectedClosure old seeds ⊆ affectedClosure (fun c => old c ∪ new c) seeds ∧
    affectedClosure new seeds ⊆ affectedClosure (fun c => old c ∪ new c) seeds := by
  have left : DependencyCoverage old (fun c => old c ∪ new c) :=
    edge_inclusion_implies_coverage old _ (fun _ => Finset.subset_union_left)
  have right : DependencyCoverage new (fun c => old c ∪ new c) :=
    edge_inclusion_implies_coverage new _ (fun _ => Finset.subset_union_right)
  exact ⟨(affectedClosure_subset_iff_coverage old _).2 left seeds,
    (affectedClosure_subset_iff_coverage new _).2 right seeds⟩

/-- A false certification flag is a conservative full-domain fallback. -/
def conservativeAffected (certified : Bool) (reported : Node → Finset Node)
    (seeds : Finset Node) : Finset Node :=
  if certified then affectedClosure reported seeds else Finset.univ

theorem conservativeAffected_sound (certified : Bool) (actual reported : Node → Finset Node)
    (seeds : Finset Node) (coverage : certified = true → DependencyCoverage actual reported) :
    affectedClosure actual seeds ⊆ conservativeAffected certified reported seeds := by
  cases certified with
  | false =>
      intro c _
      simp [conservativeAffected]
  | true =>
      simpa [conservativeAffected] using
        (affectedClosure_subset_iff_coverage actual reported).2 (coverage rfl) seeds

variable {Check : Type v}

/-- Node coverage alone is insufficient: the actual check relation must also
be covered. This theorem supplies the exact selected-check implication. -/
theorem selected_check_of_coverage (actual reported : Node → Finset Node)
    (seeds : Finset Node) (covered : DependencyCoverage actual reported)
    (actualChecks reportedChecks : Node → Check → Prop)
    (checks : ∀ c k, actualChecks c k → reportedChecks c k) (k : Check)
    (affected : ∃ c ∈ affectedClosure actual seeds, actualChecks c k) :
    ∃ c ∈ affectedClosure reported seeds, reportedChecks c k := by
  obtain ⟨c, hc, hcheck⟩ := affected
  exact ⟨c, (affectedClosure_subset_iff_coverage actual reported).2 covered seeds hc,
    checks c k hcheck⟩

end CoverageRefinement

end GRWTSK.ProofHorizon.CorkscrewChamberCap
