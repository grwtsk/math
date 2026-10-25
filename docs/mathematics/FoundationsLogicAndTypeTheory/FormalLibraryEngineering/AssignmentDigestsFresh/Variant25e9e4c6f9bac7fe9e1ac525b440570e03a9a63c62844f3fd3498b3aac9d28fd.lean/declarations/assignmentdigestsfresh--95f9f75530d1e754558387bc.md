# AssignmentDigestsFresh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:671a12e10c2f45631e3bb4366e761c8b10a9bba45c921a3d2170fe885e1df07f",
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
  "slug": "assignmentdigestsfresh--95f9f75530d1e754558387bc",
  "source": {
    "blob": "34e26ef9c22bb8a54f79c48f3fd649b64fe62b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant25e9e4c6f9bac7fe9e1ac525b440570e03a9a63c62844f3fd3498b3aac9d28fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95f9f75530d1e754558387bcd58805304743502581a8c57162e9c3ea85f5e725",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant25e9e4c6f9bac7fe9e1ac525b440570e03a9a63c62844f3fd3498b3aac9d28fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:671a12e10c2f45631e3bb4366e761c8b10a9bba45c921a3d2170fe885e1df07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant25e9e4c6f9bac7fe9e1ac525b440570e03a9a63c62844f3fd3498b3aac9d28fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssignmentDigestsFresh/Variant25e9e4c6f9bac7fe9e1ac525b440570e03a9a63c62844f3fd3498b3aac9d28fd.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e26ef9c22bb8a54f79c48f3fd649b64fe62b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
