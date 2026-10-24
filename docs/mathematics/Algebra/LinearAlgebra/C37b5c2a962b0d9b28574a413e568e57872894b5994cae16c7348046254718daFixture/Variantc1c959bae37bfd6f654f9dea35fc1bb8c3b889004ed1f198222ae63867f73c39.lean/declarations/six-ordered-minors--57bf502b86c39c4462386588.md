# six_ordered_minors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b89c892e-16df-924c-afda-1a1701fc9929",
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
  "slug": "six-ordered-minors--57bf502b86c39c4462386588",
  "source": {
    "blob": "bc01d88fbc73aaf839d086350862c775d34e790b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 20,
    "path": "GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc1c959bae37bfd6f654f9dea35fc1bb8c3b889004ed1f198222ae63867f73c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bf502b86c39c446238658837225444959b153e4660b4eaa21207667ab1b9c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc1c959bae37bfd6f654f9dea35fc1bb8c3b889004ed1f198222ae63867f73c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b89c892e-16df-924c-afda-1a1701fc9929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–29.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc1c959bae37bfd6f654f9dea35fc1bb8c3b889004ed1f198222ae63867f73c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc1c959bae37bfd6f654f9dea35fc1bb8c3b889004ed1f198222ae63867f73c39.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc01d88fbc73aaf839d086350862c775d34e790b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
