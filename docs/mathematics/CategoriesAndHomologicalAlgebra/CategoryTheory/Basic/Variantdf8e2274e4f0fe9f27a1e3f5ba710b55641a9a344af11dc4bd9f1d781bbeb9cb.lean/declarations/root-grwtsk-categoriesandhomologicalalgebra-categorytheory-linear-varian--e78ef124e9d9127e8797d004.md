# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantcaae7b5edaec9bec8f020e7bc5effaedd87568021ed055742acb883f5832db05.CategoryTheory.InducedCategory.homLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bfb433654fb4b863e8b232573b6f5395bca264becb24741edab90b68a450696",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantcaae7b5edaec9bec8f020e7bc5effaedd87568021ed055742acb883f5832db05.CategoryTheory.InducedCategory.homLinearEquiv",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-linear-varian--e78ef124e9d9127e8797d004",
  "source": {
    "blob": "4efc133dd4c18a2cb94c612a79916b282d686aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf8e2274e4f0fe9f27a1e3f5ba710b55641a9a344af11dc4bd9f1d781bbeb9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e78ef124e9d9127e8797d0044bc0a304027ac4240a63d574a2c9fd9eb92b8a91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf8e2274e4f0fe9f27a1e3f5ba710b55641a9a344af11dc4bd9f1d781bbeb9cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bfb433654fb4b863e8b232573b6f5395bca264becb24741edab90b68a450696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantcaae7b5edaec9bec8f020e7bc5effaedd87568021ed055742acb883f5832db05.CategoryTheory.InducedCategory.homLinearEquiv
    {X Y : InducedCategory C F} :
    (X ⟶ Y) ≃ₗ[R] (F X ⟶ F Y) where
  toAddEquiv := InducedCategory.homAddEquiv
  map_smul' := by cat_disch

end InducedCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf8e2274e4f0fe9f27a1e3f5ba710b55641a9a344af11dc4bd9f1d781bbeb9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf8e2274e4f0fe9f27a1e3f5ba710b55641a9a344af11dc4bd9f1d781bbeb9cb.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4efc133dd4c18a2cb94c612a79916b282d686aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
