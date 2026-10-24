# six_ordered_minors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b6ed244311f32520360b63f0795ded473b03cc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd818c2e-7a62-4ab0-4ad8-ac08d1a267a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e0e7a6f-49e8-ef38-1766-7cc808df629f",
  "kind": "theorem",
  "lexical_name": "six_ordered_minors",
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
  "slug": "six-ordered-minors--aa810bce8cd1127abe4505ec",
  "source": {
    "blob": "9b6ed244311f32520360b63f0795ded473b03cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 12,
    "path": "GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa810bce8cd1127abe4505ec35983d451cd73d42535fa012804ba9d07df82d48",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0e7a6f-49e8-ef38-1766-7cc808df629f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem six_ordered_minors :
    (A.submatrix id ![0, 1]).det = 1 ∧
    (A.submatrix id ![0, 2]).det = 1 ∧
    (A.submatrix id ![0, 3]).det = 1 ∧
    (A.submatrix id ![1, 2]).det = 1 ∧
    (A.submatrix id ![1, 3]).det = 2 ∧
    (A.submatrix id ![2, 3]).det = 1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix, Matrix.cons_val_two, Matrix.cons_val_three]

-- Swapping the selected column order changes the sign.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b6ed244311f32520360b63f0795ded473b03cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
