/-
FiniteForwardDependentClosure - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30
Organized SHA-256: 06bc29213e0dabac25cf9e96ba61a54ad061aaa44c42df9a52cb7d80e379ea06
PMD: 510.7.030.110.010 directed paths (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Finite forward dependent closure with membership, reflexivity, step closure, monotonicity and least-set proof; edge orientation and whole finite acyclic provider retained. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Manifest

/-!
# Abstract incremental rebuild policy

This module models a conservative policy over declared fingerprints.  An
implementation change rebuilds its own project.  A detected public-environment
change rebuilds that project and every transitive dependent.  Runtime artifact
changes are recorded separately and do not silently alter the Lean rebuild rule.

The results characterize this finite policy exactly; they do not claim to model
Lake's cache, the Lean compiler, or semantic equivalence from hash equality.
-/

universe u

namespace DAF
namespace Build

/--
All projects transitively depending on at least one seed.  Because graph edges
point from a dependency to its dependent, this follows `DepReachable` forward.
-/
def dependentsClosure
    (G : DependencyGraph)
    (seeds : Finset G.ProjectId) : Finset G.ProjectId :=
  seeds.biUnion fun q ↦
    Finset.univ.filter (G.DepReachable q)

theorem mem_dependentsClosure_iff
    (G : DependencyGraph)
    {seeds : Finset G.ProjectId} {p : G.ProjectId} :
    p ∈ dependentsClosure G seeds ↔
      ∃ q ∈ seeds, G.DepReachable q p := by
  simp [dependentsClosure]

/-- Every seed is one of its own transitive dependents. -/
theorem seed_mem_dependentsClosure
    (G : DependencyGraph)
    {seeds : Finset G.ProjectId} {p : G.ProjectId}
    (hp : p ∈ seeds) :
    p ∈ dependentsClosure G seeds := by
  exact (mem_dependentsClosure_iff G).mpr ⟨p, hp, .refl⟩

/-- A direct dependent of a member remains in dependent closure. -/
theorem dependent_mem_dependentsClosure
    (G : DependencyGraph)
    {seeds : Finset G.ProjectId} {q p : G.ProjectId}
    (hq : q ∈ dependentsClosure G seeds)
    (hqp : G.DirectDep q p) :
    p ∈ dependentsClosure G seeds := by
  obtain ⟨s, hs, hsq⟩ := (mem_dependentsClosure_iff G).mp hq
  exact (mem_dependentsClosure_iff G).mpr ⟨s, hs, hsq.tail hqp⟩

/-- Dependent closure is monotone in its seed set. -/
theorem dependentsClosure_mono
    (G : DependencyGraph)
    {seeds seeds' : Finset G.ProjectId}
    (h : seeds ⊆ seeds') :
    dependentsClosure G seeds ⊆ dependentsClosure G seeds' := by
  intro p hp
  obtain ⟨q, hq, hqp⟩ := (mem_dependentsClosure_iff G).mp hp
  exact (mem_dependentsClosure_iff G).mpr ⟨q, h hq, hqp⟩

/-- Dependent closure is the least set containing seeds and closed forward. -/
theorem dependentsClosure_minimal
    (G : DependencyGraph)
    {seeds S : Finset G.ProjectId}
    (hseed : seeds ⊆ S)
    (hdependent : ∀ {q p}, q ∈ S → G.DirectDep q p → p ∈ S) :
    dependentsClosure G seeds ⊆ S := by
  intro p hp
  obtain ⟨q, hq, hqp⟩ := (mem_dependentsClosure_iff G).mp hp
  have hqS : q ∈ S := hseed hq
  have aux : ∀ {a b : G.ProjectId}, G.DepReachable a b → a ∈ S → b ∈ S := by
    intro a b hab ha
    induction hab with
    | refl => exact ha
    | tail _ hstep ih => exact hdependent ih hstep
  exact aux hqp hqS

namespace ChangeSet

end ChangeSet

namespace Tenant

end Tenant

end Build

namespace Tenant

end Tenant

namespace Build

end Build

end DAF
