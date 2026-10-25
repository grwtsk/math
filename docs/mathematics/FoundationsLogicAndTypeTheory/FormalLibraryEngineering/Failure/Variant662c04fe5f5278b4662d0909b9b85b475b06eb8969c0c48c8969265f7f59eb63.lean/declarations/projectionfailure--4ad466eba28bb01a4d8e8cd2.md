# ProjectionFailure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ae4e4fdd4c1bc42f5c55cd508d2d696eb6d50729c1965dbf6c7b9aeae6a5b5b",
  "kind": "inductive",
  "lexical_name": "ProjectionFailure",
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
  "slug": "projectionfailure--4ad466eba28bb01a4d8e8cd2",
  "source": {
    "blob": "71a3db9dd27094e51d856d352e754825e03f8f45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Failure/Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ad466eba28bb01a4d8e8cd2621e517e486f6f0f7952de6116cd82d6ea8efc01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Failure/Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ae4e4fdd4c1bc42f5c55cd508d2d696eb6d50729c1965dbf6c7b9aeae6a5b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProjectionFailure
  | uncertifiedExternalLabel
  | labelCollision
  | incompleteLabelCoverage
  | ambiguousLabelDenotation
  | unresolvedDerivedNode
  | nonfunctionalProjectionLaw
  | projectionCertificateFailure
  deriving DecidableEq, Repr, Inhabited

/-- A projection can be emitted only on the successful side of this boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Failure/Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Failure/Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a3db9dd27094e51d856d352e754825e03f8f45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
