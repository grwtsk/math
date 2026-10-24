# lanPresheafExt_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:186e0766-b1b5-4c99-3e5f-f14228ecffbb",
  "kind": "lemma",
  "lexical_name": "lanPresheafExt_hom",
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
  "slug": "lanpresheafext-hom--33a6e2e35ab48e0352319d27",
  "source": {
    "blob": "844ffd497cf6c389ba7cea5cc8a1059dd49aee1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a6e2e35ab48e0352319d27b1def79d990b64294803ba33c5e4bb0426e4c4ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:186e0766-b1b5-4c99-3e5f-f14228ecffbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lanPresheafExt_hom {F G : Profinite.{u}ᵒᵖ ⥤ Type (u + 1)} (S : Profinite.{u}ᵒᵖ)
    (i : toProfinite.op ⋙ F ≅ toProfinite.op ⋙ G) : (lanPresheafExt i).hom.app S =
      colimMap (whiskerLeft (CostructuredArrow.proj toProfinite.op S) i.hom) := by
  simp only [lanPresheaf, lanPresheafExt,
    leftKanExtensionUniqueOfIso_hom, pointwiseLeftKanExtension_desc_app]
  apply colimit.hom_ext
  aesop

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844ffd497cf6c389ba7cea5cc8a1059dd49aee1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
