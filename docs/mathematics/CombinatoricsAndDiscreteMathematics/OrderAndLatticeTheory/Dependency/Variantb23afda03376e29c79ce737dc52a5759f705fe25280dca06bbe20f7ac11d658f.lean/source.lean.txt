import Mathlib.Order.WellFounded

/-!
# Ranked dependency graphs

`direct component dependency` means that `component` executes using
`dependency`.  This execution DAG is deliberately distinct from filesystem
containment.  A natural-valued rank certifies that dependencies are strictly
earlier and therefore rules out both direct and transitive cycles.
-/

universe u

namespace Surface.ContinuousAssurance

/-- A nonempty transitive chain in a relation. -/
inductive DependsTransitively
    {Node : Type u}
    (direct : Node → Node → Prop) : Node → Node → Prop
  | single {component dependency} :
      direct component dependency →
      DependsTransitively direct component dependency
  | tail {component intermediate dependency} :
      direct component intermediate →
      DependsTransitively direct intermediate dependency →
      DependsTransitively direct component dependency

/-- A dependency graph certified by a strictly decreasing dependency rank. -/
structure DependencyGraph (Node : Type u) where
  direct : Node → Node → Prop
  rank : Node → Nat
  dependencyRankLt :
    ∀ {component dependency},
      direct component dependency → rank dependency < rank component

namespace DependencyGraph

/-- The rank certificate gives a standard well-founded predecessor relation. -/
theorem wellFoundedCertificate
    {Node : Type u}
    (graph : DependencyGraph Node) :
    WellFounded (fun dependency component =>
      graph.direct component dependency) :=
  (InvImage.wf graph.rank wellFounded_lt).mono fun _ _ edge =>
    graph.dependencyRankLt edge

/-- A component cannot directly depend on itself. -/
theorem noDependencyCycle
    {Node : Type u}
    (graph : DependencyGraph Node)
    (component : Node) :
    ¬ graph.direct component component := by
  intro cycle
  exact (Nat.lt_irrefl _)
    (graph.dependencyRankLt cycle)

/-- Every nonempty transitive dependency chain strictly decreases rank. -/
theorem transitiveRankLt
    {Node : Type u}
    (graph : DependencyGraph Node)
    {component dependency : Node}
    (chain : DependsTransitively graph.direct component dependency) :
    graph.rank dependency < graph.rank component := by
  induction chain with
  | single edge => exact graph.dependencyRankLt edge
  | tail edge _ inductionHypothesis =>
      exact Nat.lt_trans inductionHypothesis (graph.dependencyRankLt edge)

/-- No component depends transitively on itself. -/
theorem noTransitiveSelfDependency
    {Node : Type u}
    (graph : DependencyGraph Node)
    (component : Node) :
    ¬ DependsTransitively graph.direct component component := by
  intro cycle
  exact (Nat.lt_irrefl _) (graph.transitiveRankLt cycle)

end DependencyGraph

/-- Canonical project-level components used by the repository model. -/
inductive AssuranceProjectComponent
  | leanFormalization
  | agdaFormalization
  | rustAudit
  | providerAdapter
  | generatedSubmission
  | externalRuntime
  deriving DecidableEq, Repr

/-- The project execution/authority rank, not a filesystem depth. -/
def assuranceProjectRank : AssuranceProjectComponent → Nat
  | .externalRuntime => 0
  | .leanFormalization => 1
  | .agdaFormalization => 1
  | .rustAudit => 2
  | .providerAdapter => 3
  | .generatedSubmission => 4

/-- Selected direct execution dependencies among canonical projects. -/
inductive AssuranceProjectDepends :
    AssuranceProjectComponent → AssuranceProjectComponent → Prop
  | rustLean : AssuranceProjectDepends .rustAudit .leanFormalization
  | rustAgda : AssuranceProjectDepends .rustAudit .agdaFormalization
  | adapterRust : AssuranceProjectDepends .providerAdapter .rustAudit
  | adapterRuntime : AssuranceProjectDepends .providerAdapter .externalRuntime
  | submissionRust : AssuranceProjectDepends .generatedSubmission .rustAudit

/-- The declared canonical project graph is ranked and acyclic. -/
def assuranceProjectGraph : DependencyGraph AssuranceProjectComponent where
  direct := AssuranceProjectDepends
  rank := assuranceProjectRank
  dependencyRankLt := by
    intro component dependency edge
    cases edge <;> decide

/-- The project graph has no transitive self-dependency. -/
theorem assuranceProjectGraph_acyclic
    (component : AssuranceProjectComponent) :
    ¬ DependsTransitively assuranceProjectGraph.direct component component :=
  assuranceProjectGraph.noTransitiveSelfDependency component

end Surface.ContinuousAssurance
