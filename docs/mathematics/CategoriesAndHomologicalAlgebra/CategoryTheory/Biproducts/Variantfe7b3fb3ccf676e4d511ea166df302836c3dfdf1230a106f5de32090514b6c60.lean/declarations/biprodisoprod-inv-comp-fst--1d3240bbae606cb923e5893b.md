# biprodIsoProd_inv_comp_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd257294-49b4-3e0d-1527-d32fea740b31",
  "kind": "theorem",
  "lexical_name": "biprodIsoProd_inv_comp_fst",
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
  "slug": "biprodisoprod-inv-comp-fst--1d3240bbae606cb923e5893b",
  "source": {
    "blob": "99d0b5ff61e96c3dbb3e2b497c98b9d38a9d2c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3240bbae606cb923e5893b60cb9e19e17230401f3723ec907372e547b69f09",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd257294-49b4-3e0d-1527-d32fea740b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biprodIsoProd_inv_comp_fst (G H : AddCommGroupCat.{u}) :
    (biprodIsoProd G H).inv ≫ biprod.fst = AddMonoidHom.fst G H :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk WalkingPair.left)
#align AddCommGroup.biprod_iso_prod_inv_comp_fst AddCommGroupCat.biprodIsoProd_inv_comp_fst

@[simp, elementwise]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d0b5ff61e96c3dbb3e2b497c98b9d38a9d2c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
