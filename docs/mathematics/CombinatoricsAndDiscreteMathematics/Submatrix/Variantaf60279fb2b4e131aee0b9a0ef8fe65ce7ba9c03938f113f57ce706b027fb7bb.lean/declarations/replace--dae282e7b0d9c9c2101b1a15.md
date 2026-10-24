# replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57d51ed69959040e8f180e9b2f6497d65755b6fdfd28554ae636512d8cf9110e",
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
  "slug": "replace--dae282e7b0d9c9c2101b1a15",
  "source": {
    "blob": "f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dae282e7b0d9c9c2101b1a1597012db7d7ee2f132ddb2b62db64e0fd2d9c8d37",
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

Occurrence: `declaration:57d51ed69959040e8f180e9b2f6497d65755b6fdfd28554ae636512d8cf9110e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replace (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) :
    SubmatrixSurgery A L where
  replacement := replacement
  result := BitMatrix.implantSubmatrix A L replacement
  result_spec := rfl
  extract_result := BitMatrix.extractSubmatrix_implantSubmatrix A L replacement
  outside_unchanged := BitMatrix.implantSubmatrix_outside A L replacement

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
