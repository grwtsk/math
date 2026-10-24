# blockDiagonal'_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca0dcb9-06fe-3d9b-6ab5-786dbf37290e",
  "kind": "theorem",
  "lexical_name": "blockDiagonal'_smul",
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
  "slug": "blockdiagonal-smul--eb20348e7632d9f9cccb588d",
  "source": {
    "blob": "4c20aaa4eb734fedf4ca42a2f56189a2f3fab9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 716,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb20348e7632d9f9cccb588db12b6788a5d0aebdf67aa1da08b6f64356e7b0d6",
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

Occurrence: `result:0ca0dcb9-06fe-3d9b-6ab5-786dbf37290e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiagonal'_smul {R : Type*} [Zero α] [SMulZeroClass R α] (x : R)
    (M : ∀ i, Matrix (m' i) (n' i) α) : blockDiagonal' (x • M) = x • blockDiagonal' M := by
  ext
  simp only [blockDiagonal'_apply, Pi.smul_apply, smul_apply]
  split_ifs <;> simp

end BlockDiagonal'

section BlockDiag'

/-- Extract a block from the diagonal of a block diagonal matrix.

This is the block form of `Matrix.diag`, and the left-inverse of `Matrix.blockDiagonal'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant9c554da5537924151b99a4f62df5a9e9c59306c30d352256a435bb4765d3f0e4.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c20aaa4eb734fedf4ca42a2f56189a2f3fab9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
