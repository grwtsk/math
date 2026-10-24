# MatrixSimilarity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:837d328c8ec29ef9fdfc0d642f8fdcbed011c9f47d828462b4787ed8667a77ed",
  "kind": "structure",
  "lexical_name": "MatrixSimilarity",
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
  "slug": "matrixsimilarity--2c62f8de5cf905fa4feb7020",
  "source": {
    "blob": "3a7491d99e9c0c4a82e4ad9a97b69cfb137c9fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 5,
    "path": "GRWTSK/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c62f8de5cf905fa4feb70207219437abc60661ff404fbb8eef154916045192d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:837d328c8ec29ef9fdfc0d642f8fdcbed011c9f47d828462b4787ed8667a77ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixSimilarity where
  numerator : Nat
  denominator : Nat
  denominator_pos : 0 < denominator
  bounded : numerator ≤ denominator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a7491d99e9c0c4a82e4ad9a97b69cfb137c9fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
