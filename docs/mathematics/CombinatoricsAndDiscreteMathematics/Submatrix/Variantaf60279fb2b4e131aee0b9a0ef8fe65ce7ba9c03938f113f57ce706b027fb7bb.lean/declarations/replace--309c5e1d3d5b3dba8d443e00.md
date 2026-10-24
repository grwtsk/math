# replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:034c6de6c847731a41f1db1226c28955390602b4485913685d00d4068ad4b97d",
  "kind": "def",
  "lexical_name": "replace",
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
  "slug": "replace--309c5e1d3d5b3dba8d443e00",
  "source": {
    "blob": "f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:309c5e1d3d5b3dba8d443e00b56fb5a5b06267f9229067cad8613a5b6c050a60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:034c6de6c847731a41f1db1226c28955390602b4485913685d00d4068ad4b97d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replace
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    BitMatrix.Surgery.ArrayBackedRefinement A L where
  replacement := replacement
  result := BitMatrix.ArrayBacked.implantSubmatrix A L replacement
  declarative := BitMatrix.Surgery.SubmatrixSurgery.replace
    A.toMatrix L replacement.toMatrix
  replacement_refines := rfl
  result_refines := by
    simp [BitMatrix.Surgery.SubmatrixSurgery.replace_result]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
