# comparison_self_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56520c61-bd2b-5219-6514-8de3ac570087",
  "kind": "theorem",
  "lexical_name": "comparison_self_zero",
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
  "slug": "comparison-self-zero--f37a9fcb832259d3a9bb0f5b",
  "source": {
    "blob": "b50bfcd4453f14d6915f9e3953e0bbcc1cd41e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37a9fcb832259d3a9bb0f5b3bbad75a3cb0dd4a43111af9423ff53771c2f291",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56520c61-bd2b-5219-6514-8de3ac570087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_self_zero (M : PaddedBinaryLogicMatrix rows cols) :
    compare M M = zeroComparison rows cols := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b50bfcd4453f14d6915f9e3953e0bbcc1cd41e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
