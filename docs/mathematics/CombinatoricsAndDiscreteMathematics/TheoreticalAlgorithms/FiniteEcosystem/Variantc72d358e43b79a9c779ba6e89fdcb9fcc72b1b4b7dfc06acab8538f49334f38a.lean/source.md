# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteEcosystem.Variantc72d358e43b79a9c779ba6e89fdcb9fcc72b1b4b7dfc06acab8538f49334f38a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8d84dc83111ccb85cb721ecf3a4506841078504` · SHA-256 `83627fdd9333bc9765874456429225ad4c02a7c7bb97adb2f029e732a0600d60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IngestedProject.Variant59119c7bde38e1b71516f6e7f45331020b85604d86f08d9870f9a2eee8692072","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59119c7bde38e1b71516f6e7f45331020b85604d86f08d9870f9a2eee8692072","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IngestedProject.Variant59119c7bde38e1b71516f6e7f45331020b85604d86f08d9870f9a2eee8692072","mathematical_subject":"Computation.DataStructures","original_sha256":"59119c7bde38e1b71516f6e7f45331020b85604d86f08d9870f9a2eee8692072","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/System/FiniteEcosystem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.All
import Mathematics.Federation.All
import Mathematics.Projects.All
import Mathematics.Reflection.All
import Mathematics.Projection.SnapshotAuthority

/-!
# First finite ecosystem theorem

The theorem is relative to one finite admitted registry and authority state.
It makes no claim that continuous discovery has terminated.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IngestedProject.Variant59119c7bde38e1b71516f6e7f45331020b85604d86f08d9870f9a2eee8692072

namespace Mathematics.System

/-- One admitted project snapshot paired with its exact ingestion receipt. -/
structure IngestedProject where
  snapshot : Ecosystem.ProjectSnapshot
  receipt : Ingestion.IngestionReceipt
  snapshot_exact : receipt.raw.snapshot = snapshot

/-- Finite project family plus its proof-bearing cross-project artifacts. -/
structure FiniteEcosystem where
  projects : List IngestedProject
  keysUnique :
    (projects.map fun project ↦ project.snapshot.key).Nodup
  federation : Federation.FederatedEnvironment
  exactAlignments : List Federation.CertifiedExactAlignment
  versionTransports :
    List (Federation.VersionTransport Federation.GlobalDeclarationId)
  upstreamBundles : List Reflection.UpstreamBundle
  reingestions : List Reflection.Reingestion
  obligationLedger : Ecosystem.VerificationObligationLedger
  authorityHead : Projection.CommittedSnapshotRoot
  ecosystemDigest : Digest
  openDiscovery : Ecosystem.DiscoveryLedger

namespace FiniteEcosystem

/-- Cross-record relationships checked before the ecosystem can be used. -/
structure Valid (ecosystem : FiniteEcosystem) : Prop where
  federationCoverage :
    ∀ project ∈ ecosystem.projects,
      ∃ fiber ∈ ecosystem.federation.fibers,
        fiber.snapshot = project.snapshot ∧
        fiber.ingestion = project.receipt
  transportEndpointsRegistered :
    ∀ transport ∈ ecosystem.versionTransports,
      (∃ project ∈ ecosystem.projects,
        project.snapshot = transport.source.snapshot) ∧
      (∃ project ∈ ecosystem.projects,
        project.snapshot = transport.target.snapshot)
  reingestionsTargetRegistered :
    ∀ reingestion ∈ ecosystem.reingestions,
      ∃ project ∈ ecosystem.projects,
        project.snapshot.identity.projectId =
          reingestion.bundle.patch.candidate.targetSnapshot.identity.projectId

/-- Exact finite-snapshot conclusions requested from the first milestone. -/
structure Sound (ecosystem : FiniteEcosystem) : Prop where
  everyArtifactAddressable :
    ∀ project ∈ ecosystem.projects,
      ∀ artifactId ∈ project.snapshot.manifest.sourceInventory,
        ∃ artifact ∈ project.snapshot.manifest.artifacts,
          artifact.artifactId = artifactId ∧
          artifact.storedBytes = artifact.sourceBytes ∧
          ∃ disposition ∈ project.receipt.artifactReceipts,
            disposition.artifactId = artifactId
  everyDeclarationAddressable :
    ∀ project ∈ ecosystem.projects,
      ∀ declarationId ∈ project.receipt.environment.declarationInventory,
        ∃ declaration ∈ project.receipt.declarations,
          declaration.declarationId = declarationId ∧
          Federation.GlobalDeclarationId.ofProjectDeclaration
              ⟨project.snapshot.key, declaration.declarationId⟩ =
            ⟨project.snapshot.key, declaration.declarationId⟩
  exactAlignmentsProved :
    ∀ alignment ∈ ecosystem.exactAlignments,
      alignment.profile.Related alignment.source alignment.target
  incompleteProofsExplicit :
    ∀ project ∈ ecosystem.projects,
      ∀ closure ∈
          project.receipt.environment.verification.extraction.trustClosures,
        ∀ assumption ∈ closure.assumptions,
          assumption.kind = .sorryDerivedDeclaration →
            ∃ obligation ∈ project.receipt.proofObligations,
              obligation.declarationId = closure.declarationId ∧
              obligation.assumption = assumption
  transportsEnvironmentScoped :
    ∀ transport ∈ ecosystem.versionTransports,
      (∃ project ∈ ecosystem.projects,
        project.snapshot = transport.source.snapshot) ∧
      (∃ project ∈ ecosystem.projects,
        project.snapshot = transport.target.snapshot)
  candidatesDistinctFromAcceptance :
    ∀ candidate reingestion,
      Reflection.ReflectionLifecycle.candidate candidate ≠
        Reflection.ReflectionLifecycle.upstreamAccepted reingestion
  bundlesCheckedInTargetCapsule :
    ∀ bundle ∈ ecosystem.upstreamBundles,
      bundle.positive.build.receipt.capsuleKey =
        bundle.patch.candidate.targetCapsule

/--
First finite ecosystem-total ingestion theorem.  Its conclusions are derived
from exact manifest/extractor/certificate fields and the cross-record validity
predicate, not from an aggregate success flag.
-/
theorem sound
    (ecosystem : FiniteEcosystem)
    (valid : ecosystem.Valid) :
    ecosystem.Sound where
  everyArtifactAddressable project projectMember artifactId inventoried := by
    obtain ⟨artifact, artifactMember, artifactIdExact⟩ :=
      project.snapshot.retains_source_artifact inventoried
    have receiptInventoried :
        artifactId ∈
          project.receipt.raw.snapshot.manifest.sourceInventory := by
      simpa [project.snapshot_exact] using inventoried
    obtain ⟨disposition, dispositionMember, dispositionIdExact⟩ :=
      project.receipt.disposition_exists receiptInventoried
    exact
      ⟨artifact, artifactMember, artifactIdExact,
        artifact.byte_round_trip,
        disposition, dispositionMember, dispositionIdExact⟩
  everyDeclarationAddressable project projectMember declarationId elaborated := by
    obtain ⟨declaration, declarationMember, declarationIdExact⟩ :=
      project.receipt.declaration_exists elaborated
    exact
      ⟨declaration, declarationMember, declarationIdExact, rfl⟩
  exactAlignmentsProved alignment alignmentMember :=
    alignment.related
  incompleteProofsExplicit project projectMember closure closureMember
      assumption assumptionMember isSorry :=
    project.receipt.sorryCoverage
      closure closureMember assumption assumptionMember isSorry
  transportsEnvironmentScoped transport transportMember :=
    valid.transportEndpointsRegistered transport transportMember
  candidatesDistinctFromAcceptance candidate reingestion :=
    Reflection.ReflectionLifecycle.candidate_not_accepted
      candidate reingestion
  bundlesCheckedInTargetCapsule bundle bundleMember :=
    bundle.positive.target_capsule_exact

end FiniteEcosystem

end Mathematics.System
```
