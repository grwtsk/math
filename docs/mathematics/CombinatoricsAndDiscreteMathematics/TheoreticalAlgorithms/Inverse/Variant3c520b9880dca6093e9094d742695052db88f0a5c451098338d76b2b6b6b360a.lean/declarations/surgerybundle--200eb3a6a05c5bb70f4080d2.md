# SurgeryBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eeb03251dae136a27219b5fc82be3954bcc004857356c1a75d3ab8d4cb9641e",
  "kind": "structure",
  "lexical_name": "SurgeryBundle",
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
  "slug": "surgerybundle--200eb3a6a05c5bb70f4080d2",
  "source": {
    "blob": "5ddecc442f59b1132fe728c13c44b5deca58917a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:200eb3a6a05c5bb70f4080d21b03a75312f3416b8ba53ba238fb4839efff0101",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eeb03251dae136a27219b5fc82be3954bcc004857356c1a75d3ab8d4cb9641e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgeryBundle where
  baseSnapshot : SourceSnapshotModel
  afterSnapshot : SourceSnapshotModel
  resolvedOperations : List ResolvedSurgeryOperation
  forwardEdits : List ExactGuardedByteEdit
  inverseEdits : List ExactGuardedByteEdit
  forwardObservations : List GuardObservation
  inverseObservations : List GuardObservation
  inverseResultSnapshotHash : Hash256
  inverseResultRepositoryRevision : Nat
  forwardEditsOrdered : CompiledEditsOrdered forwardEdits
  forwardEditsNonoverlapping : CompiledEditsNonoverlapping forwardEdits
  inverseEditsOrdered : CompiledEditsOrdered inverseEdits
  inverseEditsNonoverlapping : CompiledEditsNonoverlapping inverseEdits
  forwardAppliesExactly :
    applyObservedEditSequence baseSnapshot.canonicalSourceBytes forwardObservations
      forwardEdits = some afterSnapshot.canonicalSourceBytes
  inverseAppliesExactly :
    applyObservedEditSequence afterSnapshot.canonicalSourceBytes inverseObservations
      inverseEdits = some baseSnapshot.canonicalSourceBytes
  inverseHashRestores : inverseResultSnapshotHash = baseSnapshot.snapshotHash
  inverseRevisionRestores :
    inverseResultRepositoryRevision = baseSnapshot.repositoryRevision

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ddecc442f59b1132fe728c13c44b5deca58917a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
