# AssignmentDigestsFresh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16d44c3d4d03fe8aa828b42e977007f7549ba48ca501fe806d9ef84df6837a14",
  "kind": "def",
  "lexical_name": "AssignmentDigestsFresh",
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
  "slug": "assignmentdigestsfresh--6129ae9bf43b683452082f70",
  "source": {
    "blob": "cf78adb7fbea35e504460c1613f63c7cfa9c09b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant5cea61e490a2e51d28dd25481eb9d18c6ce63222ad17197e59e11dc5d556b5d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6129ae9bf43b683452082f700ff81d9f626e2ddbf5e9c45354035bfb2e8689e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant5cea61e490a2e51d28dd25481eb9d18c6ce63222ad17197e59e11dc5d556b5d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16d44c3d4d03fe8aa828b42e977007f7549ba48ca501fe806d9ef84df6837a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AssignmentDigestsFresh
    (snapshot : Snapshot) (ledger : Ledger) : Prop :=
  ∀ assignment ∈ ledger.assignments,
    ∀ entity ∈ snapshot.entities,
      assignment.entityId = entity.id →
        assignment.sourceDigest = entity.sourceDigest ∧
          assignment.semanticFingerprint = entity.semanticProfile.normalizedDigest ∧
          assignment.evidence.id.Valid ∧
          assignment.evidence.digest.Valid ∧
          assignment.evidenceDigest = assignment.evidence.digest ∧
          ∀ concept ∈ ledger.concepts,
            assignment.disposition.conceptId? = some concept.id →
              assignment.evidence.reviewedDefinitionDigest = concept.definitionDigest ∧
              assignment.evidence.reviewedBoundaryDigest = concept.boundaryDigest ∧
              assignment.evidence.reviewedAuthorityDigest = concept.authorityDigest

end Ledger

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant5cea61e490a2e51d28dd25481eb9d18c6ce63222ad17197e59e11dc5d556b5d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant5cea61e490a2e51d28dd25481eb9d18c6ce63222ad17197e59e11dc5d556b5d1.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf78adb7fbea35e504460c1613f63c7cfa9c09b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
