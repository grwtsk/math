# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.FiniteGraphExportProducts.Variantc61c0758f4a8696c.WholeDependentExportProductsAndRootRestriction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2974ea118e6f6d5f9ff96f75d82eea3ad7ecae6` · SHA-256 `ccc39305da41801067c204c0b179dc7da418cfc341a2473d8e34437d858839b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeDependentExportProductsAndRootRestriction — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e
Organized SHA-256: b6473ffa933abc35f9acdf2b80c93aeb73c7e15af3b8513571455dc91ceadc91
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete finite well-founded directed graph, supplied topological-rank constructor, exact edge orientation, reflexive-transitive reachability, well-founded dependency cone, decidability instances and all closure proofs remain together. The whole dependent export products, Tenant roots, full closure environment and root-only restriction form a second seam. No build execution, receipt, authority or cache law is present or inferred; both positional unnamed instances retain exact existing terms without invented Lean names or extra theorem credit. -/

import Mathlib.Data.Finset.Union
import Mathlib.Logic.Relation
import Mathlib.Order.WellFounded

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.FiniteAcyclicDependencyClosure.Variantc61c0758f4a8696c.FiniteAcyclicGraphReachabilityAndClosure

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
```
