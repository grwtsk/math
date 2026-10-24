# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65398d24b29c362e6bf4a00802bf2ea8b286fdd8f20058eae17f3b85f8b1916f",
  "kind": "instance",
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
  "slug": "instance--74da905a1ea99a4147eb476b",
  "source": {
    "blob": "5f014fd043b0e0d789d8704da7ff939007681810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conv/Variant5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74da905a1ea99a4147eb476b79e21cf165a8f2310219e5bdfb26a88a2ccb97ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conv/Variant5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65398d24b29c362e6bf4a00802bf2ea8b286fdd8f20058eae17f3b85f8b1916f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Monoid (Conv M N) where
  one_mul f := by simp [one_eq, mul_eq, ← whisker_exchange_assoc]
  mul_one f := by simp [one_eq, mul_eq, ← whisker_exchange_assoc]
  mul_assoc f g h := by
    simp only [mul_eq]
    simp only [comp_whiskerRight, whisker_assoc, Category.assoc,
      MonoidalCategory.whiskerLeft_comp]
    slice_lhs 7 8 =>
      rw [← whisker_exchange]
    slice_rhs 2 3 =>
      rw [← whisker_exchange]
    slice_rhs 1 2 =>
      rw [M.comul_assoc]
    slice_rhs 3 4 =>
      rw [← associator_naturality_left]
    slice_lhs 6 7 =>
      rw [← associator_inv_naturality_right]
    slice_lhs 8 9 =>
      rw [N.mul_assoc]
    simp

end Conv

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conv/Variant5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conv/Variant5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f014fd043b0e0d789d8704da7ff939007681810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
