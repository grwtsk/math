# FiniteSamplingConclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caa361896a3002ba6854c9f55f6a1b6cf1e74d00f7ce89e970e67556c016638c",
  "kind": "structure",
  "lexical_name": "FiniteSamplingConclusion",
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
  "slug": "finitesamplingconclusion--51544f791d6b4616a2e4c4df",
  "source": {
    "blob": "fcec9691b43bf804424af8223b1437f5c532c6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 689,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51544f791d6b4616a2e4c4df8ed20f2b03c302ec4707014ffbf8d70ec5fd106a",
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

Occurrence: `declaration:caa361896a3002ba6854c9f55f6a1b6cf1e74d00f7ce89e970e67556c016638c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSamplingConclusion
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt) : Prop where
  finiteUniverseExact : plan.points = space.points
  finiteUniversePresent : space.points.Nonempty
  everyPointExactlyMarked : space.HasExactMarkings
  orderedSampleNodup : plan.sampleOrder.Nodup
  orderedSampleExact : plan.sampleOrder.toFinset = space.points
  orderedSampleWithinBound : plan.sampleOrder.length ≤ plan.maximumPoints
  allCellsAccounted : receipt.accountedCells = plan.cells
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
  allProbesAccounted : receipt.evaluatedProbes = family.probes
  everyProbeWithinBound :
    ∀ probe ∈ family.probes,
      receipt.evaluationCount probe = space.points.card ∧
        receipt.evaluationCount probe ≤ family.maximumEvaluations probe
  finiteDiscreteMeshZero :
    plan.topology = .finiteDiscrete ∧
      receipt.topology = .finiteDiscrete ∧
      plan.meshTarget = 0 ∧
      receipt.meshBound = 0
  terminatedAtDeclaredStoppingCondition :
    plan.stoppingCondition = .exhaustedFiniteUniverse ∧
      receipt.stoppingCondition = .exhaustedFiniteUniverse ∧
      plan.expectedTermination = .terminated ∧
      receipt.termination = .terminated
  noUnreportedSamplingFrontier :
    receipt.unsampledPoints = ∅ ∧ receipt.unresolvedCells = ∅
  hostBoundsDoNotAuthorize : plan.evidenceAuthority.IsNonauthoritative

/-! ## Total content-bound probe observation matrix -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec9691b43bf804424af8223b1437f5c532c6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
