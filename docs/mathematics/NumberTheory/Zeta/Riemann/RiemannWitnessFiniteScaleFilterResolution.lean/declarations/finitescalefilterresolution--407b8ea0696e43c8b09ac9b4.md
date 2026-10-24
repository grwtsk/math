# finiteScaleFilterResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:714d30a734ee078cc614fe67f8cbc01c307e761c6c6fd10abc015bd46d27140a",
  "kind": "def",
  "lexical_name": "finiteScaleFilterResolution",
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
  "slug": "finitescalefilterresolution--407b8ea0696e43c8b09ac9b4",
  "source": {
    "blob": "550c2996050a172e536def77c9281c0ec5a0c964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:407b8ea0696e43c8b09ac9b4b781f1a9dda552840ce84537ab72fe75aff09c0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:714d30a734ee078cc614fe67f8cbc01c307e761c6c6fd10abc015bd46d27140a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteScaleFilterResolution : FiniteScaleFilterResolution where
  sourceIssue := 324
  acceptedMainCommit := acceptedFormalResearchMain
  originalProgram := finiteScaleFilterProgramSource
  criticalMode := finiteScaleCriticalDecaySource
  exactMainReadout := finiteScaleCriticalDecayMainSource
  boundedCorrection := finiteScaleBoundedCorrectionSource
  openFilteredTail := finiteScaleFilteredTailSource
  residualEquivalence := finiteScaleResidualEquivalenceSource
  estimateConsumer := finiteScaleEstimateConsumerSource
  boundaryComparison := finiteScaleBoundaryComparisonSource
  importedLocally := false
  originalDiscreteFilterConstructed := false
  filteredTailWitnessConstructed := false
  estimatePremiseDischarged := false
  rhBridgeDischarged := false

/-- Replace the unresolved finite-scale-filter node with the exact accepted
critical-decay reduction and its still-open tail witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550c2996050a172e536def77c9281c0ec5a0c964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
