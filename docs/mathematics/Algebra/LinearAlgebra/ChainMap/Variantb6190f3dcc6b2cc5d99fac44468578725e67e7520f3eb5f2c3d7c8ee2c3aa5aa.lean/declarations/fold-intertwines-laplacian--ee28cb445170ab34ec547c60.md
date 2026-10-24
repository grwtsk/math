# fold_intertwines_laplacian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f628550516d87677a596e11163c354d78cfa344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7695d49-97cc-6217-3759-02fa32ac4eba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b56b38c3-eba4-b79f-bc58-67cd90fd0d0e",
  "kind": "theorem",
  "lexical_name": "fold_intertwines_laplacian",
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
  "slug": "fold-intertwines-laplacian--ee28cb445170ab34ec547c60",
  "source": {
    "blob": "1f628550516d87677a596e11163c354d78cfa344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee28cb445170ab34ec547c60beebbca0190635541de93601f804b501f0b69eb3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b56b38c3-eba4-b79f-bc58-67cd90fd0d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_intertwines_laplacian (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.laplacian =
      terrain.complex.laplacian * fold.operator := by
  rw [← terrain.complex.hodgeDirac_square]
  calc
    fold.operator * (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) =
        (fold.operator * terrain.complex.hodgeDirac) *
          terrain.complex.hodgeDirac := by simp [mul_assoc]
    _ = (terrain.complex.hodgeDirac * fold.operator) *
          terrain.complex.hodgeDirac := by rw [fold.fold_intertwines_hodgeDirac]
    _ = terrain.complex.hodgeDirac *
        (fold.operator * terrain.complex.hodgeDirac) := by simp [mul_assoc]
    _ = terrain.complex.hodgeDirac *
        (terrain.complex.hodgeDirac * fold.operator) := by
          rw [fold.fold_intertwines_hodgeDirac]
    _ = (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) *
        fold.operator := by simp [mul_assoc]

/-- Fold unitarity is exact matrix unitarity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f628550516d87677a596e11163c354d78cfa344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
