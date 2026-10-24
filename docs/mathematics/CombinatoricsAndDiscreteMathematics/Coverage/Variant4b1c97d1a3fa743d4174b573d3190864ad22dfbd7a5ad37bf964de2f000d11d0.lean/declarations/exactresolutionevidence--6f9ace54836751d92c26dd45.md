# ExactResolutionEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bd668d41bb3016e4f8f033b53263f6a8c8f5f69df40ef874e934802f13aaac3",
  "kind": "structure",
  "lexical_name": "ExactResolutionEvidence",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exactresolutionevidence--6f9ace54836751d92c26dd45",
  "source": {
    "blob": "fcec9691b43bf804424af8223b1437f5c532c6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1003,
    "line": 947,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f9ace54836751d92c26dd452a02988cbabd5fe80a1e64018f4b1ff4de2aee20",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bd668d41bb3016e4f8f033b53263f6a8c8f5f69df40ef874e934802f13aaac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 947–1003.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactResolutionEvidence
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix) : Prop where
  samplingExact : ExactSamplingEvidence space plan family receipt
  matrixExact : matrix.ExactAgainst space plan family
  inspectedOntologyBound :
    InspectedOntologyBinding certificate matrix inspectedOntology
  repositorySnapshotBound : matrix.repositorySnapshot = certificate.repositorySnapshot
  spaceSnapshotBound : space.repositorySnapshot = certificate.repositorySnapshot
  admittedProfile : certificate.profile = repositoryProbeCoverageProfile
  profileBound : certificate.profile = plan.profile
  universeIdentityBound : certificate.obligationUniverse = space.obligationUniverse
  universeHashBound : certificate.obligationUniverseHash = space.obligationUniverseHash
  spaceBound : certificate.rhetoricalSpace = space.id
  spaceHashBound : certificate.rhetoricalSpaceHash = space.contentHash
  familyBound : certificate.probeFamily = family.id
  familyHashBound : certificate.probeFamilyHash = family.contentHash
  planBound : certificate.samplingPlan = plan.id
  planHashBound : certificate.samplingPlanHash = plan.contentHash
  receiptBound : certificate.samplingReceipt = receipt.id
  receiptHashBound :
    certificate.samplingReceiptHash = receipt.deterministicReceiptHash
  deterministicReceiptBound : certificate.deterministicReceipt = receipt.id
  matrixBound : certificate.observationMatrix = matrix.id
  matrixHashBound : certificate.observationMatrixHash = matrix.contentHash
  separationBound : certificate.separationWitness = separation.id
  separationHashBound : certificate.separationWitnessHash = separation.contentHash
  separationHashPresent : separation.contentHash.IsPresent
  equivalenceProfileBound : certificate.equivalenceProfile = separation.equivalenceProfile
  samplesBound : certificate.sampleIdentities = plan.sampleOrder
  cellsBound : certificate.coverageCells = plan.cells
  topologyBound : certificate.topology = plan.topology
  meshBound : certificate.meshBound = receipt.meshBound
  maximumPointsBound : certificate.maximumPoints = plan.maximumPoints
  repositoryHashPresent : certificate.repositoryAggregateHash.IsPresent
  ontologyHashPresent : certificate.ontologyAggregateHash.IsPresent
  universeHashPresent : certificate.obligationUniverseHash.IsPresent
  inclusionRulesBound : certificate.inclusionRuleHash.IsPresent
  exclusionRulesBound : certificate.exclusionRuleHash.IsPresent
  familyHashPresent : certificate.probeFamilyHash.IsPresent
  planHashPresent : certificate.samplingPlanHash.IsPresent
  receiptHashPresent : certificate.samplingReceiptHash.IsPresent
  matrixHashPresent : certificate.observationMatrixHash.IsPresent
  witnessHashPresent : certificate.separationWitnessHash.IsPresent
  exactClass : certificate.exactness = .exactlyResolved
  separatedResult : certificate.separated = true
  noBlockingResiduals : certificate.blockingResiduals = ∅
  terminated : certificate.termination = .terminated
  receiptPresent : certificate.deterministicReceipt.value ≠ 0
  nonauthoritative : certificate.mutationAuthority = false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean#L947).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec9691b43bf804424af8223b1437f5c532c6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
