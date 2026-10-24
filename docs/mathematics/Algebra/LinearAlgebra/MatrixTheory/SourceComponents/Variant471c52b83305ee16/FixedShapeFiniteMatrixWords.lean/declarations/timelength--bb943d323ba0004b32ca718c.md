# timeLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4113a956e82f1b19b0bbb1fca78fd0cddb381e26441e81aede74d1c480ce77e",
  "kind": "def",
  "lexical_name": "timeLength",
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
  "slug": "timelength--bb943d323ba0004b32ca718c",
  "source": {
    "blob": "3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb943d323ba0004b32ca718c27e89df612b6c9bf1d1ce14dc1e3d7b40dd4bb0c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4113a956e82f1b19b0bbb1fca78fd0cddb381e26441e81aede74d1c480ce77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def timeLength (s : BinaryMatrixStream) : Nat :=
  s.k

/-- Frame at finite time index. Same data as `get`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
