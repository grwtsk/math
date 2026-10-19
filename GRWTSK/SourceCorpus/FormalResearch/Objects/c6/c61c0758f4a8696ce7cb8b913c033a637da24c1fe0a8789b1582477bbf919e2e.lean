import Mathlib.Data.Finset.Union
import Mathlib.Logic.Relation
import Mathlib.Order.WellFounded

/-!
# Finite dependency graphs and tenant environments

This module fixes the edge orientation used by the DAF build model: `q` is a
direct dependency of `p` precisely when `q ∈ G.dependsOn p`.  A graph carries
a well-foundedness proof, so dependency cones are computed by recursion from a
project to its strictly earlier dependencies.

`Tenant.Environment` contains exports for every project in the dependency
closure, while `Tenant.RootExports` exposes only the selected roots.  These are
deliberately separate denotations.
-/

universe u v

namespace DAF

/-- A finite, acyclic project dependency graph. -/
structure DependencyGraph where
  ProjectId : Type u
  instFintype : Fintype ProjectId
  instDecidableEq : DecidableEq ProjectId
  dependsOn : ProjectId → Finset ProjectId
  acyclic : WellFounded (fun q p ↦ q ∈ dependsOn p)

attribute [instance] DependencyGraph.instFintype DependencyGraph.instDecidableEq

/--
Construct a dependency graph from a natural-valued topological rank.  This is a
convenient executable interface for concrete manifests: every dependency must
have strictly smaller rank than the project that imports it.
-/
def DependencyGraph.ofRank
    (ProjectId : Type u)
    [Fintype ProjectId]
    [DecidableEq ProjectId]
    (dependsOn : ProjectId → Finset ProjectId)
    (rank : ProjectId → Nat)
    (dependency_rank_lt :
      ∀ {q p}, q ∈ dependsOn p → rank q < rank p) :
    DependencyGraph where
  ProjectId := ProjectId
  instFintype := inferInstance
  instDecidableEq := inferInstance
  dependsOn := dependsOn
  acyclic := (InvImage.wf rank wellFounded_lt).mono fun _ _ h ↦
    dependency_rank_lt h

namespace DependencyGraph

/-- `q` is a direct dependency of `p`. -/
def DirectDep (G : DependencyGraph) (q p : G.ProjectId) : Prop :=
  q ∈ G.dependsOn p

instance (G : DependencyGraph) : DecidableRel G.DirectDep :=
  fun _ _ ↦ Finset.decidableMem _ _

/-- The reflexive transitive dependency relation. -/
abbrev DepReachable (G : DependencyGraph) : G.ProjectId → G.ProjectId → Prop :=
  Relation.ReflTransGen G.DirectDep

/--
The dependency cone of one project, computed by well-founded recursion.
The project itself is included.
-/
def dependencyCone (G : DependencyGraph) : G.ProjectId → Finset G.ProjectId :=
  G.acyclic.fix fun p recurse ↦
    insert p <|
      G.dependsOn p |>.attach.biUnion fun q ↦
        recurse q.1 q.2

theorem dependencyCone_eq (G : DependencyGraph) (p : G.ProjectId) :
    G.dependencyCone p =
      insert p
        (G.dependsOn p |>.attach.biUnion fun q ↦
          G.dependencyCone q.1) := by
  rw [dependencyCone, WellFounded.fix_eq]

theorem mem_dependencyCone_iff (G : DependencyGraph) (q p : G.ProjectId) :
    q ∈ G.dependencyCone p ↔ G.DepReachable q p := by
  induction p using G.acyclic.induction with
  | h p ih =>
      rw [G.dependencyCone_eq]
      simp only [Finset.mem_insert, Finset.mem_biUnion, Finset.mem_attach, true_and]
      constructor
      · rintro (rfl | ⟨d, hqd⟩)
        · exact .refl
        · exact Relation.ReflTransGen.trans
            ((ih d d.2).mp hqd) (.single d.2)
      · intro hqp
        rcases hqp.cases_tail with rfl | ⟨d, hqd, hdp⟩
        · exact Or.inl rfl
        · exact Or.inr ⟨⟨d, hdp⟩, (ih d hdp).mpr hqd⟩

/-- Reachability is decidable by the computed dependency cone. -/
instance (G : DependencyGraph) : DecidableRel G.DepReachable :=
  fun q p ↦ decidable_of_iff (q ∈ G.dependencyCone p)
    (G.mem_dependencyCone_iff q p)

/-- All projects needed by at least one root. -/
def depClosure (G : DependencyGraph) (roots : Finset G.ProjectId) :
    Finset G.ProjectId :=
  roots.biUnion G.dependencyCone

theorem mem_depClosure_iff (G : DependencyGraph)
    {roots : Finset G.ProjectId} {q : G.ProjectId} :
    q ∈ G.depClosure roots ↔
      ∃ r ∈ roots, G.DepReachable q r := by
  simp only [depClosure, Finset.mem_biUnion, G.mem_dependencyCone_iff]

/-- Every selected root belongs to its dependency closure. -/
theorem root_mem_depClosure (G : DependencyGraph)
    {roots : Finset G.ProjectId} {p : G.ProjectId}
    (hp : p ∈ roots) :
    p ∈ G.depClosure roots := by
  exact G.mem_depClosure_iff.mpr ⟨p, hp, .refl⟩

/-- The closure is closed under taking a direct dependency. -/
theorem dependency_mem_depClosure (G : DependencyGraph)
    {roots : Finset G.ProjectId} {p q : G.ProjectId}
    (hp : p ∈ G.depClosure roots)
    (hqp : G.DirectDep q p) :
    q ∈ G.depClosure roots := by
  obtain ⟨r, hr, hpr⟩ := G.mem_depClosure_iff.mp hp
  exact G.mem_depClosure_iff.mpr ⟨r, hr, hpr.head hqp⟩

/--
The dependency closure is the least finite set containing the roots and closed
under direct dependencies.
-/
theorem depClosure_minimal (G : DependencyGraph)
    {roots S : Finset G.ProjectId}
    (hroot : roots ⊆ S)
    (hdep : ∀ {p}, p ∈ S → G.dependsOn p ⊆ S) :
    G.depClosure roots ⊆ S := by
  intro q hq
  obtain ⟨r, hr, hqr⟩ := G.mem_depClosure_iff.mp hq
  have hrS : r ∈ S := hroot hr
  have aux : ∀ {a b : G.ProjectId}, G.DepReachable a b → b ∈ S → a ∈ S := by
    intro a b hab hb
    induction hab using Relation.ReflTransGen.head_induction_on with
    | refl => exact hb
    | @head a c hac _ ih =>
        exact hdep ih hac
  exact aux hqr hrS

/-- Enlarging the root set can only enlarge its dependency closure. -/
theorem depClosure_mono (G : DependencyGraph)
    {roots roots' : Finset G.ProjectId}
    (h : roots ⊆ roots') :
    G.depClosure roots ⊆ G.depClosure roots' := by
  intro q hq
  obtain ⟨r, hr, hqr⟩ := G.mem_depClosure_iff.mp hq
  exact G.mem_depClosure_iff.mpr ⟨r, h hr, hqr⟩

/-- Taking dependency closure twice adds no projects. -/
@[simp]
theorem depClosure_idempotent (G : DependencyGraph)
    (roots : Finset G.ProjectId) :
    G.depClosure (G.depClosure roots) = G.depClosure roots := by
  apply Finset.Subset.antisymm
  · apply G.depClosure_minimal
    · exact fun _ h ↦ h
    · intro p hp q hqp
      exact G.dependency_mem_depClosure hp hqp
  · exact G.depClosure_mono fun p hp ↦ G.root_mem_depClosure hp

end DependencyGraph

/-- Exports supplied for exactly the direct dependencies of `p`. -/
def DependencyEnv
    (G : DependencyGraph)
    (Exports : G.ProjectId → Type v)
    (p : G.ProjectId) :=
  ∀ q, q ∈ G.dependsOn p → Exports q

/-- A tenant selects finitely many project roots. -/
structure Tenant (G : DependencyGraph) where
  roots : Finset G.ProjectId

namespace Tenant

/-- Product semantics over every export in the tenant dependency closure. -/
def Environment
    {G : DependencyGraph}
    (t : Tenant G)
    (Exports : G.ProjectId → Type v) :=
  ∀ p, p ∈ G.depClosure t.roots → Exports p

/-- Root-only semantics after dependencies have been evaluated. -/
def RootExports
    {G : DependencyGraph}
    (t : Tenant G)
    (Exports : G.ProjectId → Type v) :=
  ∀ p, p ∈ t.roots → Exports p

/-- Restrict a full tenant environment to its roots. -/
def Environment.toRootExports
    {G : DependencyGraph}
    {t : Tenant G}
    {Exports : G.ProjectId → Type v}
    (env : t.Environment Exports) :
    t.RootExports Exports :=
  fun p hp ↦ env p (G.root_mem_depClosure hp)

end Tenant

end DAF
