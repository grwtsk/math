# schurMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fa43d249595f33af00beb03acd9d2f86f5805abaf2a9ec99c40c93feecbc43d",
  "kind": "def",
  "lexical_name": "schurMatrix",
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
  "slug": "schurmatrix--2dd4921ec1ac7ebde4b2d9f0",
  "source": {
    "blob": "fb912699b30bf6d9d0f7435247a4870ed689f9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dd4921ec1ac7ebde4b2d9f0d80c382b018dedbabba65f0b31f34fb4af8f88b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fa43d249595f33af00beb03acd9d2f86f5805abaf2a9ec99c40c93feecbc43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def schurMatrix (D : MatrixBlockRealization G) : Matrix κ κ ℝ :=
  D.autonomousMatrix -
    D.crossMatrix.transpose * D.inverseProvenanceMatrix * D.crossMatrix

/-- The matrix correction term agrees exactly with the provenance-energy term
used by the previously formalized coordinate Schur residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb912699b30bf6d9d0f7435247a4870ed689f9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
