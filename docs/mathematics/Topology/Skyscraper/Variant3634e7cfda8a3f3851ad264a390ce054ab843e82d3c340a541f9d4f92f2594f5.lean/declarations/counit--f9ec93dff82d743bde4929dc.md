# counit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:181303dead34cd9cefa7c9dd6ed94e09df27228c98e544f175fa659f3c9f3c26",
  "kind": "def",
  "lexical_name": "counit",
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
  "slug": "counit--f9ec93dff82d743bde4929dc",
  "source": {
    "blob": "9751ba8cc7927557270048d163af7eb64d03e005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 350,
    "path": "GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9ec93dff82d743bde4929dc368cd61ce7daaedf5c71f2e7c47acce81a4c56d1",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:181303dead34cd9cefa7c9dd6ed94e09df27228c98e544f175fa659f3c9f3c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def counit :
    skyscraperPresheafFunctor p₀ ⋙ (Presheaf.stalkFunctor C p₀ : Presheaf C X ⥤ C) ⟶ 𝟭 C where
  app c := (skyscraperPresheafStalkOfSpecializes p₀ c specializes_rfl).hom
  naturality x y f := colimit.hom_ext fun U => by
    erw [← Category.assoc, colimit.ι_map, colimit.isoColimitCocone_ι_hom_assoc,
      skyscraperPresheafCoconeOfSpecializes_ι_app (h := specializes_rfl), Category.assoc,
      colimit.ι_desc, whiskeringLeft_obj_map, whiskerLeft_app, SkyscraperPresheafFunctor.map'_app,
      dif_pos U.unop.2, skyscraperPresheafCoconeOfSpecializes_ι_app (h := specializes_rfl),
      comp_eqToHom_iff, Category.assoc, eqToHom_comp_iff, ← Category.assoc, eqToHom_trans,
      eqToHom_refl, Category.id_comp, comp_eqToHom_iff, Category.assoc, eqToHom_trans, eqToHom_refl,
      Category.comp_id, CategoryTheory.Functor.id_map]
#align stalk_skyscraper_presheaf_adjunction_auxs.counit StalkSkyscraperPresheafAdjunctionAuxs.counit

end StalkSkyscraperPresheafAdjunctionAuxs

section

open StalkSkyscraperPresheafAdjunctionAuxs

/-- `skyscraper_presheaf_functor` is the right adjoint of `presheaf.stalk_functor`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9751ba8cc7927557270048d163af7eb64d03e005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
