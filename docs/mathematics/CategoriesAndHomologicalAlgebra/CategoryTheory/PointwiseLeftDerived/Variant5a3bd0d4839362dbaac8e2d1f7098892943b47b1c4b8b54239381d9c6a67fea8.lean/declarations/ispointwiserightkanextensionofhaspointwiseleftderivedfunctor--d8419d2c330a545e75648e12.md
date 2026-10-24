# isPointwiseRightKanExtensionOfHasPointwiseLeftDerivedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9402264620a936fea6a35460e9c891c9c3efd2659d8084c73bd81c75113d62bc",
  "kind": "def",
  "lexical_name": "isPointwiseRightKanExtensionOfHasPointwiseLeftDerivedFunctor",
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
  "slug": "ispointwiserightkanextensionofhaspointwiseleftderivedfunctor--d8419d2c330a545e75648e12",
  "source": {
    "blob": "08673cdcdece7747cb60acd5a172c8e9aed7e7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8419d2c330a545e75648e12800fdfe62ca47e97b5c697e5b38e32a7d14ad9b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9402264620a936fea6a35460e9c891c9c3efd2659d8084c73bd81c75113d62bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPointwiseRightKanExtensionOfHasPointwiseLeftDerivedFunctor
     [L.IsLocalization W] [F'.IsLeftDerivedFunctor α W] :
    (RightExtension.mk _ α).IsPointwiseRightKanExtension :=
  have := hasPointwiseRightKanExtension_of_hasPointwiseLeftDerivedFunctor F L
  have := IsLeftDerivedFunctor.isRightKanExtension F' α W
  isPointwiseRightKanExtensionOfIsRightKanExtension F' α

end

section

variable {F L}

set_option backward.defeqAttrib.useBackward true in
/-- If `L : C ⥤ D` is a localization functor for `W` and `e : F ≅ L ⋙ G` is an isomorphism,
then `e.inv` makes `G` a pointwise right Kan extension of `F` along `L` at `L.obj Y`
for any `Y : C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08673cdcdece7747cb60acd5a172c8e9aed7e7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
