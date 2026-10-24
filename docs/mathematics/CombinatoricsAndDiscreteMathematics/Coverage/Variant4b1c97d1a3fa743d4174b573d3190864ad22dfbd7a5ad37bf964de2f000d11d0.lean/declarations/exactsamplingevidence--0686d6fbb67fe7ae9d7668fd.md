# ExactSamplingEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff9f6ba8147cedfb8640d00010a02bbd6d517f4dc432b4688013e69edae2f06d",
  "kind": "structure",
  "lexical_name": "ExactSamplingEvidence",
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
  "slug": "exactsamplingevidence--0686d6fbb67fe7ae9d7668fd",
  "source": {
    "blob": "fcec9691b43bf804424af8223b1437f5c532c6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 624,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0686d6fbb67fe7ae9d7668fdd9396742b691d07b911bd4420c457af23157c525",
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

Occurrence: `declaration:ff9f6ba8147cedfb8640d00010a02bbd6d517f4dc432b4688013e69edae2f06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactSamplingEvidence
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt) : Prop where
  planSpace : plan.space = space.id
  planProfile : plan.profile = space.profile
  familyIdentity : plan.probeFamily = family.id
  familyProfile : family.profile = plan.profile
  familyDomain : family.domain = plan.space
  familyValid : family.Valid
  planHashPresent : plan.contentHash.IsPresent
  pointsExact : plan.points = space.points
  pointsPresent : space.points.Nonempty
  exactMarkings : space.HasExactMarkings
  sampleOrderNodup : plan.sampleOrder.Nodup
  sampleOrderExact : plan.sampleOrder.toFinset = plan.points
  sampleFitsBound : plan.sampleOrder.length ≤ plan.maximumPoints
  cellsPresent : plan.cells.Nonempty
  cellsExact :
    ∀ cellId,
      cellId ∈ plan.cells ↔
        ∃ cell,
          plan.cellAt cellId = some cell ∧
          cell.id = cellId ∧
          cell.ValidFor space ∧
          cell.sampledMembers = cell.members
  cellsCoverEveryPoint :
    ∀ pointId,
      pointId ∈ plan.points ↔
        ∃ cellId ∈ plan.cells, ∃ cell,
          plan.cellAt cellId = some cell ∧ pointId ∈ cell.members
  cellsPairwiseDisjoint :
    ∀ leftId ∈ plan.cells, ∀ rightId ∈ plan.cells, leftId ≠ rightId →
      ∀ left right,
        plan.cellAt leftId = some left →
        plan.cellAt rightId = some right →
        Disjoint left.members right.members
  receiptPlan : receipt.plan = plan.id
  receiptOrder : receipt.sampledOrder = plan.sampleOrder
  receiptCells : receipt.accountedCells = plan.cells
  receiptProbes : receipt.evaluatedProbes = family.probes
  eachProbeEvaluatedExactly :
    ∀ probe ∈ family.probes,
      receipt.evaluationCount probe = plan.points.card ∧
        receipt.evaluationCount probe ≤ family.maximumEvaluations probe
  totalEvaluationsFitBound :
    (∑ probe ∈ family.probes, receipt.evaluationCount probe) ≤
      plan.maximumProbeEvaluations
  noUnsampledPoints : receipt.unsampledPoints = ∅
  noUnresolvedCells : receipt.unresolvedCells = ∅
  planFiniteDiscrete : plan.topology = .finiteDiscrete
  receiptFiniteDiscrete : receipt.topology = plan.topology
  planMeshZero : plan.meshTarget = 0
  receiptMeshZero : receipt.meshBound = plan.meshTarget
  planExhaustive : plan.exhaustive = true
  planStopsOnExhaustion :
    plan.stoppingCondition = .exhaustedFiniteUniverse
  receiptStoppingCondition :
    receipt.stoppingCondition = plan.stoppingCondition
  plannedTermination : plan.expectedTermination = .terminated
  receiptTerminated : receipt.termination = plan.expectedTermination
  deterministicReceiptPresent : receipt.deterministicReceiptHash.IsPresent
  hostBoundsNonauthoritative : plan.evidenceAuthority.IsNonauthoritative

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec9691b43bf804424af8223b1437f5c532c6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
