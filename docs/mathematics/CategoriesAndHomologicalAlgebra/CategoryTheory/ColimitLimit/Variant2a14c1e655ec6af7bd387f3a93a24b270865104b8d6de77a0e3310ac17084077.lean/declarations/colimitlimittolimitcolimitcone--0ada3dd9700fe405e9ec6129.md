# colimitLimitToLimitColimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6a7c66d6779bb0ee3ad9b4fab070adb6b2ed74ad0452cbf4c2ac63c8d075a1b",
  "kind": "def",
  "lexical_name": "colimitLimitToLimitColimitCone",
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
  "slug": "colimitlimittolimitcolimitcone--0ada3dd9700fe405e9ec6129",
  "source": {
    "blob": "bbc7ee561b3c557032d4e477502df0fbb670a753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant2a14c1e655ec6af7bd387f3a93a24b270865104b8d6de77a0e3310ac17084077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ada3dd9700fe405e9ec61292706f3770bd9e78b7c3e33877bc0cb79099abc7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant2a14c1e655ec6af7bd387f3a93a24b270865104b8d6de77a0e3310ac17084077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6a7c66d6779bb0ee3ad9b4fab070adb6b2ed74ad0452cbf4c2ac63c8d075a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitLimitToLimitColimitCone (G : J ⥤ K ⥤ C) [HasLimit G] :
    colim.mapCone (limit.cone G) ⟶ limit.cone (G ⋙ colim) where
  hom :=
    colim.map (limitIsoSwapCompLim G).hom ≫
      colimitLimitToLimitColimit (uncurry.obj G :) ≫
        lim.map (whiskerRight (currying.unitIso.app G).inv colim)
  w j := by
    dsimp
    ext1 k
    simp only [Category.assoc, limMap_π, Functor.comp_obj, colim_obj, whiskerRight_app,
      colim_map, ι_colimMap_assoc, lim_obj, limitIsoSwapCompLim_hom_app,
      ι_colimitLimitToLimitColimit_π_assoc, curry_obj_obj_obj, Prod.swap_obj,
      uncurry_obj_obj, ι_colimMap, currying_unitIso_inv_app_app_app, Category.id_comp,
      limMap_π_assoc, Functor.flip_obj_obj, flipIsoCurrySwapUncurry_hom_app_app]
    simp [compEvaluation]

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant2a14c1e655ec6af7bd387f3a93a24b270865104b8d6de77a0e3310ac17084077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant2a14c1e655ec6af7bd387f3a93a24b270865104b8d6de77a0e3310ac17084077.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc7ee561b3c557032d4e477502df0fbb670a753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
