# negativeUnitMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f34db742a28565aa375f6fac6007f6fa904f7e01114e7c0b6552b1cc6d983c78",
  "kind": "def",
  "lexical_name": "negativeUnitMatrix",
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
  "slug": "negativeunitmatrix--451fb3955a10f99be8601536",
  "source": {
    "blob": "7983b1e43a379daad3950067df41bc4dcf11c171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:451fb3955a10f99be86015368209b83a96cc19a5f8d0a0cb053945fe6dddc82b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f34db742a28565aa375f6fac6007f6fa904f7e01114e7c0b6552b1cc6d983c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def negativeUnitMatrix : Matrix (Fin 1) (Fin 1) ℂ := -1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7983b1e43a379daad3950067df41bc4dcf11c171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
