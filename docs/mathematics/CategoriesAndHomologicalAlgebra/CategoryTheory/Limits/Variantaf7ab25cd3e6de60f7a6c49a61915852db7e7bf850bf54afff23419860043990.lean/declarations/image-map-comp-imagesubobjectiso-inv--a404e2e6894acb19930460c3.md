# image_map_comp_imageSubobjectIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c23f58-a3de-208b-6b7c-3ad7c7c2346b",
  "kind": "theorem",
  "lexical_name": "image_map_comp_imageSubobjectIso_inv",
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
  "slug": "image-map-comp-imagesubobjectiso-inv--a404e2e6894acb19930460c3",
  "source": {
    "blob": "e28c3d6afa997ec5dd0b00ce9419fa5ab7237bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 473,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a404e2e6894acb19930460c34f13aa207181571085f99e637fd859d86e175f9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c23f58-a3de-208b-6b7c-3ad7c7c2346b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_map_comp_imageSubobjectIso_inv {W X Y Z : C} {f : W ⟶ X} [HasImage f] {g : Y ⟶ Z}
    [HasImage g] (sq : Arrow.mk f ⟶ Arrow.mk g) [HasImageMap sq] :
    image.map sq ≫ (imageSubobjectIso _).inv =
      (imageSubobjectIso _).inv ≫ imageSubobjectMap sq := by
  ext
  simpa using image.map_ι sq

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28c3d6afa997ec5dd0b00ce9419fa5ab7237bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
