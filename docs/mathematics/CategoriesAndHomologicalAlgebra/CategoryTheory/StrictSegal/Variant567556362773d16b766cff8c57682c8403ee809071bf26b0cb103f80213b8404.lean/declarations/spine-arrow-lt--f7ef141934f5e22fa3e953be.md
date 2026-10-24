# spine_δ_arrow_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:413afd21-9dac-b2fd-e26a-c85c95845a4f",
  "kind": "lemma",
  "lexical_name": "spine_δ_arrow_lt",
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
  "slug": "spine-arrow-lt--f7ef141934f5e22fa3e953be",
  "source": {
    "blob": "648ecad381769f42f29ee7f912e2ed5c8ea8511c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ef141934f5e22fa3e953be91c10b92e62a5e990c9ef1f6e9a61484b32c338d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:413afd21-9dac-b2fd-e26a-c85c95845a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_arrow_lt (hij : i.succ.castSucc < j) :
    (X.spine m _ (X.map (tr (δ j)).op
      (sx.spineToSimplex (m + 1) _ f))).arrow i = f.arrow i.castSucc := by
  rw [spine_arrow, ← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
    mkOfSucc_δ_lt hij, spineToSimplex_arrow]

/-- If we take the path along the spine of the `j`th face of a `spineToSimplex`,
an arrow `i` with `i + 1 > j` can be identified with arrow `i + 1` in the
original path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ecad381769f42f29ee7f912e2ed5c8ea8511c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
