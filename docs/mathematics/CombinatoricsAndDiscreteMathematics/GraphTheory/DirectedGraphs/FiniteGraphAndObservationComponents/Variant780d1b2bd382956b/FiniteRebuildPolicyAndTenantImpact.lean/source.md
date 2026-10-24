# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.FiniteRebuildPolicyAndTenantImpact

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43fb4e1ec7c9468f8c70fd8c681326c3b101df44` · SHA-256 `09082d71da4526d97212b64429effbf230d047270a607947655e3d14baaac9b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteRebuildPolicyAndTenantImpact - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30
Organized SHA-256: 06bc29213e0dabac25cf9e96ba61a54ad061aaa44c42df9a52cb7d80e379ea06
PMD: 510.7.030.110 directed graphs (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Finite-union rebuild policy and complete tenant-impact/public-fingerprint predicates and their actual proofs/public aliases. These are pure finite mathematical policy definitions, with no actual compiler, cache, runner or authority record. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Manifest
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.DirectedPaths.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.FiniteForwardDependentClosure
import GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.WholeFiniteChangeSetAndByteComparisons

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

namespace ChangeSet

end ChangeSet

/--
The declared Lean rebuild policy: implementation changes rebuild locally;
public changes propagate through every dependent.
-/
def leanRebuild
    {G : DependencyGraph}
    (changes : ChangeSet G) : Finset G.ProjectId :=
  changes.implementationChangedSet ∪
    dependentsClosure G changes.publicChangedSet

theorem leanRebuild_eq
    {G : DependencyGraph}
    (changes : ChangeSet G) :
    leanRebuild changes =
      changes.implementationChangedSet ∪
        dependentsClosure G changes.publicChangedSet :=
  rfl

/-- Every implementation-changed project is rebuilt. -/
theorem implChanged_subset_leanRebuild
    {G : DependencyGraph}
    (changes : ChangeSet G) :
    changes.implementationChangedSet ⊆ leanRebuild changes :=
  Finset.subset_union_left

/-- Every dependent of a public-changed project is rebuilt. -/
theorem publicChanged_dependents_subset_leanRebuild
    {G : DependencyGraph}
    (changes : ChangeSet G) :
    dependentsClosure G changes.publicChangedSet ⊆ leanRebuild changes :=
  Finset.subset_union_right

/-- Public changes themselves are included because dependent closure is reflexive. -/
theorem publicChanged_subset_leanRebuild
    {G : DependencyGraph}
    (changes : ChangeSet G) :
    changes.publicChangedSet ⊆ leanRebuild changes := by
  intro p hp
  exact publicChanged_dependents_subset_leanRebuild changes
    (seed_mem_dependentsClosure G hp)

/-- Exact least-set characterization of the declared policy. -/
theorem leanRebuild_least
    {G : DependencyGraph}
    (changes : ChangeSet G)
    (S : Finset G.ProjectId)
    (hImpl : changes.implementationChangedSet ⊆ S)
    (hPub : dependentsClosure G changes.publicChangedSet ⊆ S) :
    leanRebuild changes ⊆ S :=
  Finset.union_subset hImpl hPub

namespace Tenant

/-- A tenant is operationally affected when its closure meets the rebuild set. -/
def Affected
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) : Prop :=
  ∃ p,
    p ∈ G.depClosure t.roots ∧
    p ∈ leanRebuild changes

theorem tenant_affected_iff_inter_nonempty
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) :
    Affected t changes ↔
      (G.depClosure t.roots ∩ leanRebuild changes).Nonempty := by
  constructor
  · rintro ⟨p, hp, hr⟩
    exact ⟨p, Finset.mem_inter.mpr ⟨hp, hr⟩⟩
  · rintro ⟨p, hp⟩
    exact ⟨p, (Finset.mem_inter.mp hp).1, (Finset.mem_inter.mp hp).2⟩

/-- Unaffectedness is exactly disjointness from the abstract rebuild set. -/
theorem tenant_unaffected_iff_disjoint
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) :
    ¬ Affected t changes ↔
      Disjoint (G.depClosure t.roots) (leanRebuild changes) := by
  rw [tenant_affected_iff_inter_nonempty]
  exact Finset.not_nonempty_iff_eq_empty.trans
    Finset.disjoint_iff_inter_eq_empty.symm

/-- Syntactic equality of every public fingerprint visible to a tenant. -/
def PublicFingerprintsUnchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G) : Prop :=
  ∀ p, p ∈ G.depClosure t.roots →
    (old p).publicEnvironmentFingerprint =
      (new p).publicEnvironmentFingerprint

/--
Under the manifest comparison change set, operational unaffectedness implies
bytewise equality of visible public fingerprints.  It does not assert semantic
equivalence of the corresponding Lean environments.
-/
theorem not_affected_implies_publicFingerprintsUnchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G)
    (h : ¬ Affected t (ChangeSet.between G old new)) :
    PublicFingerprintsUnchanged t old new := by
  intro p hp
  by_contra hne
  apply h
  refine ⟨p, hp, publicChanged_subset_leanRebuild _ ?_⟩
  simpa using hne

end Tenant

end Build

namespace Tenant

/-- Public tenant-facing name for operational rebuild impact. -/
def Affected
    {G : DependencyGraph}
    (t : Tenant G)
    (changes : Build.ChangeSet G) : Prop :=
  Build.Tenant.Affected t changes

/-- Public tenant-facing name for visible fingerprint equality. -/
def PublicFingerprintsUnchanged
    {G : DependencyGraph}
    (t : Tenant G)
    (old new : ManifestSet G) : Prop :=
  Build.Tenant.PublicFingerprintsUnchanged t old new

end Tenant

namespace Build

/-- Tenant impact is nonempty intersection with the rebuild set. -/
theorem tenant_affected_iff_inter_nonempty
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) :
    t.Affected changes ↔
      (G.depClosure t.roots ∩ leanRebuild changes).Nonempty := by
  simpa [DAF.Tenant.Affected] using
    Tenant.tenant_affected_iff_inter_nonempty t changes

/-- Tenant unaffectedness is disjointness from the rebuild set. -/
theorem tenant_unaffected_iff_disjoint
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) :
    ¬ t.Affected changes ↔
      Disjoint (G.depClosure t.roots) (leanRebuild changes) := by
  simpa [DAF.Tenant.Affected] using
    Tenant.tenant_unaffected_iff_disjoint t changes

/-- Unaffected tenants see no detected public-fingerprint difference. -/
theorem not_affected_implies_publicFingerprintsUnchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G)
    (h : ¬ t.Affected (ChangeSet.between G old new)) :
    t.PublicFingerprintsUnchanged old new := by
  simpa [DAF.Tenant.Affected, DAF.Tenant.PublicFingerprintsUnchanged] using
    Tenant.not_affected_implies_publicFingerprintsUnchanged t old new h

end Build

end DAF
```
