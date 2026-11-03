import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteDependencyDuality
import GRWTSK.Combinatorics.DependencyGraph

/-!
# A bridge from well-founded DAF dependency cones to least closure

Local attribution: grwtsk contributors. MIT.

DAF.DependencyGraph computes dependency cones by well-founded recursion from
consumer to prerequisites. The generic LeastDependencyClosure computes the
least predicate closed under the same consumer-to-prerequisite orientation.
This source supplies their exact membership comparison, then relates the
DAF cone to the independently maintained finite invalidation engine only
after reversing the edge carrier.

The source DAF model requires a well-founded graph; the finite invalidation
engine accepts cycles. This theorem compares values on DAF inputs. It does
not upgrade a cyclic graph to a DAF graph, infer filesystem dependency edges,
or establish soundness of any source theorem from its import structure.

SOURCE_PROOF_CANDIDATE. Compilation, kernel replay, transitive axiom audit
and actual repository dependency extraction: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure
open GRWTSK.ProofHorizon.CorkscrewChamberCap

/-- DAF's finite, well-founded cone agrees with the general least
prerequisite closure at the same source roots and actual dependency edges.
Well-foundedness is used by DAF's executable cone, not assumed by Closure. -/
theorem dafDepClosure_iff_leastClosure
    (G : DAF.DependencyGraph) (roots : Finset G.ProjectId) (a : G.ProjectId) :
    a ∈ G.depClosure roots ↔
      Closure (fun x => x ∈ roots) (fun x y => y ∈ G.dependsOn x) a := by
  constructor
  · intro h
    obtain ⟨root, hroot, hpath⟩ := G.mem_depClosure_iff.mp h
    induction hpath using Relation.ReflTransGen.head_induction_on with
    | refl => exact Closure.root hroot
    | @head x y hedge _ ih => exact Closure.dependency ih hedge
  · intro h
    induction h with
    | root hroot => exact G.root_mem_depClosure hroot
    | dependency _ hedge ih =>
        exact G.dependency_mem_depClosure ih hedge

/-- Reverse DAF's actual consumer-to-prerequisite edges to match the
consumer-propagating invalidation engine. -/
def dafReverseDependencies (G : DAF.DependencyGraph)
    (node : G.ProjectId) : Finset G.ProjectId := by
  letI : Fintype G.ProjectId := G.instFintype
  letI : DecidableEq G.ProjectId := G.instDecidableEq
  exact Finset.univ.filter (fun consumer => node ∈ G.dependsOn consumer)

/-- The reverse carrier contains precisely the original opposite edge. -/
theorem mem_dafReverseDependencies_iff (G : DAF.DependencyGraph)
    (a b : G.ProjectId) :
    a ∈ dafReverseDependencies G b ↔ b ∈ G.dependsOn a := by
  simp [dafReverseDependencies]

/-- All three actual source models now agree on the DAF input domain:
DAF's well-founded recursion, the generic least closure, and the finite
affected-closure saturation applied to *reversed* DAF edges. -/
theorem dafDepClosure_iff_reversedAffected
    (G : DAF.DependencyGraph) (roots : Finset G.ProjectId) (a : G.ProjectId) :
    a ∈ G.depClosure roots ↔
      a ∈ affectedClosure (dafReverseDependencies G) roots := by
  letI : Fintype G.ProjectId := G.instFintype
  letI : DecidableEq G.ProjectId := G.instDecidableEq
  constructor
  · intro h
    have hc := (dafDepClosure_iff_leastClosure G roots a).mp h
    apply (affectedClosure_iff_reversedLeastClosure
      (dafReverseDependencies G) roots a).mpr
    induction hc with
    | root hr => exact Closure.root hr
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_dafReverseDependencies_iff G _ _).mpr hedge)
  · intro h
    have hc := (affectedClosure_iff_reversedLeastClosure
      (dafReverseDependencies G) roots a).mp h
    apply (dafDepClosure_iff_leastClosure G roots a).mpr
    induction hc with
    | root hr => exact Closure.root hr
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_dafReverseDependencies_iff G _ _).mp hedge)

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
