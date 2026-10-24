# singleObjApplyIso_inv_single_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1774c6a3-e274-60d1-1ea6-1b488c315a1d",
  "kind": "lemma",
  "lexical_name": "singleObjApplyIso_inv_single_map",
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
  "slug": "singleobjapplyiso-inv-single-map--7b767b06e63af452e5fe7b59",
  "source": {
    "blob": "96a27024d9b3e30a814c452ae75ad672aa7f1f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantf502058f3a452e2f54c2c3d42947f60d01ecb488122493fa17eae39dd20b63d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b767b06e63af452e5fe7b5997e482c98313f5cfa6ac79fa4ef32fca47bb2b05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantf502058f3a452e2f54c2c3d42947f60d01ecb488122493fa17eae39dd20b63d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1774c6a3-e274-60d1-1ea6-1b488c315a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singleObjApplyIso_inv_single_map (j : J) {X Y : C} (f : X ⟶ Y) :
    (singleObjApplyIso j X).inv ≫ (single j).map f j = f ≫ (singleObjApplyIso j Y).inv := by
  apply singleObjApplyIsoOfEq_inv_single_map

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantf502058f3a452e2f54c2c3d42947f60d01ecb488122493fa17eae39dd20b63d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantf502058f3a452e2f54c2c3d42947f60d01ecb488122493fa17eae39dd20b63d1.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a27024d9b3e30a814c452ae75ad672aa7f1f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
