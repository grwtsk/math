# isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0910bdb-352b-0bfc-398b-cc803a9cb30c",
  "kind": "theorem",
  "lexical_name": "isClosed",
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
  "slug": "isclosed--2e232b7d2f8f2c56194a5cb5",
  "source": {
    "blob": "8040d9627a20bad11789bc52ede18d77dfbe7abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e232b7d2f8f2c56194a5cb5ab6fddba61056aa4099c23710ccb8c118d1ce734",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0910bdb-352b-0bfc-398b-cc803a9cb30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed (x : A) : IsClosed (elemental R x : Set A) :=
  isClosed_closure

@[deprecated (since := "2024-11-05")] alias _root_.elementalStarAlgebra.isClosed := isClosed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8040d9627a20bad11789bc52ede18d77dfbe7abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
