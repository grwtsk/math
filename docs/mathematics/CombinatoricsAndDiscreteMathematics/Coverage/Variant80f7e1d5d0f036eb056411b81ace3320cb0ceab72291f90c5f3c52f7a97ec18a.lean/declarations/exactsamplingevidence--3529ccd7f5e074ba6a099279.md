# ExactSamplingEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a12f4842ff856d05d9f51323f0e9d992a0597d2ff6e6787c91b7e845b558c5fc",
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
  "slug": "exactsamplingevidence--3529ccd7f5e074ba6a099279",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 616,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3529ccd7f5e074ba6a099279270efb5cf47811b50079a97dbc3c6efa4086e75b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a12f4842ff856d05d9f51323f0e9d992a0597d2ff6e6787c91b7e845b558c5fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–680.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
