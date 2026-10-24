# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8da69e2e9473414b673794b9e76e85a2643bb4db3e7a0b1c5288911208b3132d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--357f90e200fca9a997ec6d63",
  "source": {
    "blob": "9b6ed244311f32520360b63f0795ded473b03cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 22,
    "path": "GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:357f90e200fca9a997ec6d63fad08bdf5a204d57d1f852578efd82a4cf500c9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8da69e2e9473414b673794b9e76e85a2643bb4db3e7a0b1c5288911208b3132d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (A.submatrix id ![1, 0]).det = -1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix]

#print six_ordered_minors
#print axioms six_ordered_minors
#check Matrix.det_fin_two
#check Matrix.det_fin_two_of
#check Matrix.submatrix
#check Matrix.cons_val_two
#check Matrix.cons_val_three
#check Matrix.det_permute

end CompilerProbe
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b6ed244311f32520360b63f0795ded473b03cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
