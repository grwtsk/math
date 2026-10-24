# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BuildModel.Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca2310a94c2269178bd39834fe8e9dde1e0deada` · SHA-256 `780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

/-- The three independent, detected change sets. -/
structure ChangeSet (G : DependencyGraph) where
  implementationChangedSet : Finset G.ProjectId
  publicChangedSet : Finset G.ProjectId
  runtimeChangedSet : Finset G.ProjectId

namespace ChangeSet

/-- Compare the bytes recorded in two manifest snapshots. -/
def between
    (G : DependencyGraph)
    (old new : ManifestSet G) : ChangeSet G where
  implementationChangedSet := Finset.univ.filter fun p ↦
    (old p).implementationFingerprint ≠ (new p).implementationFingerprint
  publicChangedSet := Finset.univ.filter fun p ↦
    (old p).publicEnvironmentFingerprint ≠ (new p).publicEnvironmentFingerprint
  runtimeChangedSet := Finset.univ.filter fun p ↦
    (old p).runtimeArtifactFingerprint ≠ (new p).runtimeArtifactFingerprint

@[simp]
theorem mem_between_implementation_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).implementationChangedSet ↔
      (old p).implementationFingerprint ≠
        (new p).implementationFingerprint := by
  simp [between]

@[simp]
theorem mem_between_public_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).publicChangedSet ↔
      (old p).publicEnvironmentFingerprint ≠
        (new p).publicEnvironmentFingerprint := by
  simp [between]

@[simp]
theorem mem_between_runtime_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).runtimeChangedSet ↔
      (old p).runtimeArtifactFingerprint ≠
        (new p).runtimeArtifactFingerprint := by
  simp [between]

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

/-- Semantic stability over a tenant closure, parameterized by its meaning. -/
def SemanticallyUnchanged
    {G : DependencyGraph}
    (t : Tenant G)
    (publicEquivalent : G.ProjectId → Prop) : Prop :=
  ∀ p, p ∈ G.depClosure t.roots → publicEquivalent p

end Tenant

/--
An explicit trusted bridge from equal fingerprint bytes to semantic public-
environment equivalence.  Ordinary fingerprint equality does not construct
this assumption.
-/
structure PublicFingerprintConsistency
    {G : DependencyGraph}
    (old new : ManifestSet G)
    (publicEquivalent : G.ProjectId → Prop) : Prop where
  equal_implies : ∀ p,
    (old p).publicEnvironmentFingerprint =
        (new p).publicEnvironmentFingerprint →
      publicEquivalent p

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

/--
Operational unaffectedness yields semantic stability only when the caller
supplies the explicit fingerprint-consistency assumption.
-/
theorem not_affected_implies_semantically_unchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G)
    (publicEquivalent : G.ProjectId → Prop)
    (hConsistency :
      PublicFingerprintConsistency old new publicEquivalent)
    (h : ¬ t.Affected (ChangeSet.between G old new)) :
    t.SemanticallyUnchanged publicEquivalent := by
  intro p hp
  apply hConsistency.equal_implies
  exact not_affected_implies_publicFingerprintsUnchanged
    t old new h p hp

end Build

end DAF
```
