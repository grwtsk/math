# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CertificateMetadata.Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a2312728418de85a6ed8866b5d31f2e6339d999` · SHA-256 `f6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Kernel
import Mathematics.Concept.Authority
import Mathematics.Projection.SnapshotComponents

/-!
# Dependency-bound certificate metadata

This module classifies and locates certificates.  Metadata is intentionally
not theorem authority: only the sealed kernel certificate indexed by an exact
proposition can eliminate to a proof.
-/

namespace Mathematics.Authority

open Mathematics.Projection

/-- Classificatory certificate kind; constructors grant no authority. -/
inductive CertificateKind
  | semanticRelation
  | quotientNorm
  | banachCompletion
  | kernelCompatibility
  | hilbertRealization
  | fixedPoint
  | fixedFamilyCompleteness
  | lyapunov
  | contraction
  | linearization
  | spectral
  | perturbation
  | separation
  | pathTransport
  | holonomy
  | propertyNaturality
  | analogy
  | boundary
  | approximation
  | confluence
  | singularity
  | surgery
  | restart
  | build
  deriving DecidableEq, Repr

/-- Reported lifecycle state of a certificate envelope. -/
inductive CertificateAuthorityState
  | candidate
  | admitted
  | rejected
  | revoked
  | superseded
  deriving DecidableEq, Repr

/-- Append-only lifecycle transitions for one immutable certificate identity. -/
inductive CertificateAuthorityTransition :
    CertificateAuthorityState →
    CertificateAuthorityState →
    Prop
  | admit :
      CertificateAuthorityTransition .candidate .admitted
  | rejectCandidate :
      CertificateAuthorityTransition .candidate .rejected
  | rejectAdmitted :
      CertificateAuthorityTransition .admitted .rejected
  | revokeCandidate :
      CertificateAuthorityTransition .candidate .revoked
  | revokeAdmitted :
      CertificateAuthorityTransition .admitted .revoked
  | supersedeCandidate :
      CertificateAuthorityTransition .candidate .superseded
  | supersedeAdmitted :
      CertificateAuthorityTransition .admitted .superseded

theorem CertificateAuthorityTransition.revoked_terminal
    {after : CertificateAuthorityState} :
    ¬ CertificateAuthorityTransition .revoked after := by
  intro transition
  cases transition

theorem CertificateAuthorityTransition.superseded_terminal
    {after : CertificateAuthorityState} :
    ¬ CertificateAuthorityTransition .superseded after := by
  intro transition
  cases transition

/--
Immutable metadata for one mathematical subject.  `dependencyRank` and
`upstreamCertificates` support a finite, well-founded dependency registry.
-/
structure CertificateMetadata where
  id : ObjectAddress
  subject : StableId
  kind : CertificateKind
  snapshot : SnapshotId
  dependencies : Finset SnapshotDependency
  dependencies_valid : SnapshotDependencySetValid dependencies
  authority : Concept.Profile
  authorityState : CertificateAuthorityState
  upstreamCertificates : Finset ObjectAddress
  dependencyRank : Nat
  provenance : Finset StableId
  unresolved : Finset StableId
  metadataDigest : Digest
  metadataDigest_valid : metadataDigest.Valid

/--
Registry validation makes the recorded component set transitively closed.
Every upstream certificate has lower rank, so recursive validation terminates.
-/
structure CertificateDependencyRegistry where
  lookup : ObjectAddress → Option CertificateMetadata
  directUpstream : ObjectAddress → Finset ObjectAddress
  rank : ObjectAddress → Nat
  upstream_bound :
    ∀ {certificate metadata},
      lookup certificate = some metadata →
        directUpstream certificate = metadata.upstreamCertificates
  upstream_registered :
    ∀ {certificate upstream metadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
        ∃ upstreamMetadata, lookup upstream = some upstreamMetadata
  upstream_rank_decreases :
    ∀ {certificate upstream metadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
        rank upstream < rank certificate
  metadata_rank_bound :
    ∀ {certificate metadata},
      lookup certificate = some metadata →
        rank certificate = metadata.dependencyRank
  component_dependencies_closed :
    ∀ {certificate upstream metadata upstreamMetadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
      lookup upstream = some upstreamMetadata →
        upstreamMetadata.dependencies ⊆ metadata.dependencies

namespace CertificateDependencyRegistry

/-- Nonempty transitive reachability through direct upstream certificates. -/
inductive UpstreamReachable
    (registry : CertificateDependencyRegistry)
    (root : ObjectAddress) :
    ObjectAddress → Prop
  | direct
      {upstream : ObjectAddress}
      (member : upstream ∈ registry.directUpstream root) :
      UpstreamReachable registry root upstream
  | step
      {middle upstream : ObjectAddress}
      (first : UpstreamReachable registry root middle)
      (member : upstream ∈ registry.directUpstream middle) :
      UpstreamReachable registry root upstream

/-- Strict dependency rank excludes a direct self-cycle. -/
theorem no_direct_self_dependency
    (registry : CertificateDependencyRegistry)
    {certificate metadata}
    (registered : registry.lookup certificate = some metadata) :
    certificate ∉ registry.directUpstream certificate := by
  intro selfMember
  have rankDecrease :=
    registry.upstream_rank_decreases registered selfMember
  exact (Nat.lt_irrefl _ rankDecrease)

/-- Every direct upstream component dependency is already in the consumer. -/
theorem upstream_component_subset
    (registry : CertificateDependencyRegistry)
    {certificate upstream metadata upstreamMetadata}
    (consumerRegistered :
      registry.lookup certificate = some metadata)
    (upstreamMember :
      upstream ∈ registry.directUpstream certificate)
    (upstreamRegistered :
      registry.lookup upstream = some upstreamMetadata) :
    upstreamMetadata.dependencies ⊆ metadata.dependencies :=
  registry.component_dependencies_closed
    consumerRegistered upstreamMember upstreamRegistered

/-- Every transitively reachable certificate is registered. -/
theorem registered_of_reachable
    (registry : CertificateDependencyRegistry)
    {root rootMetadata upstream}
    (rootRegistered :
      registry.lookup root = some rootMetadata)
    (reachable :
      UpstreamReachable registry root upstream) :
    ∃ upstreamMetadata,
      registry.lookup upstream = some upstreamMetadata := by
  induction reachable with
  | direct member =>
      exact
        registry.upstream_registered
          rootRegistered member
  | @step middle upstream first member inductionHypothesis =>
      obtain ⟨middleMetadata, middleRegistered⟩ :=
        inductionHypothesis
      exact
        registry.upstream_registered
          middleRegistered member

/-- Every transitive upstream path strictly lowers the well-founded rank. -/
theorem rank_decreases_along_reachable
    (registry : CertificateDependencyRegistry)
    {root rootMetadata upstream}
    (rootRegistered :
      registry.lookup root = some rootMetadata)
    (reachable :
      UpstreamReachable registry root upstream) :
    registry.rank upstream < registry.rank root := by
  induction reachable with
  | direct member =>
      exact
        registry.upstream_rank_decreases
          rootRegistered member
  | @step middle upstream first member inductionHypothesis =>
      obtain ⟨middleMetadata, middleRegistered⟩ :=
        registry.registered_of_reachable
          rootRegistered first
      exact
        (registry.upstream_rank_decreases
          middleRegistered member).trans
          inductionHypothesis

/-- Strict rank excludes every nonempty transitive dependency cycle. -/
theorem no_dependency_cycle
    (registry : CertificateDependencyRegistry)
    {certificate metadata}
    (registered :
      registry.lookup certificate = some metadata) :
    ¬ UpstreamReachable registry certificate certificate := by
  intro cycle
  exact
    Nat.lt_irrefl _
      (registry.rank_decreases_along_reachable registered cycle)

end CertificateDependencyRegistry

/--
Sealed committed authorization for one metadata envelope at one exact master
snapshot.  Metadata alone cannot construct this capability.
-/
structure AcceptedCertificateAuthorization
    (metadata : CertificateMetadata)
    (snapshot : MasterSnapshot) : Type where
  private mk ::
  private authorizationEvent : ObjectAddress
  private snapshot_bound : metadata.snapshot = snapshot.id
  private state_admitted : metadata.authorityState = .admitted

namespace AcceptedCertificateAuthorization

/-- Accepted authorization is bound to the exact master-snapshot identity. -/
theorem snapshot_exact
    {metadata : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (authorization :
      AcceptedCertificateAuthorization metadata snapshot) :
    metadata.snapshot = snapshot.id :=
  authorization.snapshot_bound

/-- The sealed authorization can exist only for admitted metadata. -/
theorem admitted
    {metadata : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (authorization :
      AcceptedCertificateAuthorization metadata snapshot) :
    metadata.authorityState = .admitted :=
  authorization.state_admitted

end AcceptedCertificateAuthorization

end Mathematics.Authority
```
