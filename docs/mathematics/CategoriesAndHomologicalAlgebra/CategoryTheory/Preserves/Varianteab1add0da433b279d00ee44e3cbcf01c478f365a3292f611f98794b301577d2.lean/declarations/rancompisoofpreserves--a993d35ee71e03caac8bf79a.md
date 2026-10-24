# ranCompIsoOfPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a44b0cfc2e3222531ff8380f68f626451636a9767aa6e0c44de267ea29c7a5ea",
  "kind": "def",
  "lexical_name": "ranCompIsoOfPreserves",
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
  "slug": "rancompisoofpreserves--a993d35ee71e03caac8bf79a",
  "source": {
    "blob": "6c304ff82ac77168c1211a5364d8cc6affba306f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 540,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a993d35ee71e03caac8bf79ab05ce15078ccb3e6b50dbdd57e09448840cd03de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a44b0cfc2e3222531ff8380f68f626451636a9767aa6e0c44de267ea29c7a5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ranCompIsoOfPreserves [G.PreservesRightKanExtensions L]
    [∀ F : A ⥤ B, HasRightKanExtension L F] [∀ F : A ⥤ D, HasRightKanExtension L F] :
    L.ran ⋙ (whiskeringRight _ _ _).obj G ≅ (whiskeringRight _ _ _).obj G ⋙ L.ran :=
  NatIso.ofComponents (fun F ↦ rightKanExtensionCompIsoOfPreserves _ _ _)
    (fun {F F'} η ↦ by
      apply hom_ext_of_isRightKanExtension
        (L.rightKanExtension <| F' ⋙ G)
        (L.rightKanExtensionCounit <| F' ⋙ G)
      dsimp [ran]
      ext
      simp only [comp_obj, Category.assoc, rightKanExtensionCompIsoOfPreserves_hom_fac,
        NatTrans.comp_app, whiskerLeft_app, whiskerRight_app, associator_inv_app, Category.id_comp,
        liftOfIsRightKanExtension_fac, rightKanExtensionCompIsoOfPreserves_hom_fac_assoc,
        ← G.map_comp]
      simp)

end RightKanExtension

end

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c304ff82ac77168c1211a5364d8cc6affba306f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
