# blockDiag'_blockDiagonal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd01d3b0-9507-652b-7b19-d72c5098d9dd",
  "kind": "theorem",
  "lexical_name": "blockDiag'_blockDiagonal'",
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
  "slug": "blockdiag-blockdiagonal--70b3880dda9d9825f63eb9b3",
  "source": {
    "blob": "4c20aaa4eb734fedf4ca42a2f56189a2f3fab9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 771,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70b3880dda9d9825f63eb9b3f0afde580c4c4e8bed95c25fea42c20d381d6c91",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd01d3b0-9507-652b-7b19-d72c5098d9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiag'_blockDiagonal' [DecidableEq o] (M : ∀ i, Matrix (m' i) (n' i) α) :
    blockDiag' (blockDiagonal' M) = M :=
  funext fun _ => ext fun _ _ => blockDiagonal'_apply_eq M _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c20aaa4eb734fedf4ca42a2f56189a2f3fab9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
