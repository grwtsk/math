# colimitLimitToLimitColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4be7bf6357e865ec212554cbbe6063c27405ab3c04afe7f811f2ce318756a4bd",
  "kind": "def",
  "lexical_name": "colimitLimitToLimitColimit",
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
  "slug": "colimitlimittolimitcolimit--1901676161c926aaf4573923",
  "source": {
    "blob": "3c3e33608ca706847cce494238443a764838ce1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1901676161c926aaf4573923f5f08b5c24d5dd47b1005d05d277e78e926fb9f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4be7bf6357e865ec212554cbbe6063c27405ab3c04afe7f811f2ce318756a4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitLimitToLimitColimit :
    colimit (curry.obj (Prod.swap K J ⋙ F) ⋙ lim) ⟶ limit (curry.obj F ⋙ colim) :=
  limit.lift (curry.obj F ⋙ colim)
    { pt := _
      π :=
        { app := fun j =>
            colimit.desc (curry.obj (Prod.swap K J ⋙ F) ⋙ lim)
              { pt := _
                ι :=
                  { app := fun k =>
                      limit.π ((curry.obj (Prod.swap K J ⋙ F)).obj k) j ≫
                        colimit.ι ((curry.obj F).obj j) k
                    naturality := by
                      intro k k' f
                      simp only [Functor.comp_obj, lim_obj, colimit.cocone_x,
                        Functor.const_obj_obj, Functor.comp_map, lim_map,
                        curry_obj_obj_obj, Prod.swap_obj, limMap_π_assoc, curry_obj_map_app,
                        Prod.swap_map, Functor.const_obj_map, Category.comp_id]
                      rw [map_id_left_eq_curry_map, colimit.w] } }
          naturality := by
            intro j j' f
            dsimp
            ext k
            simp only [Functor.comp_obj, lim_obj, Category.id_comp, colimit.ι_desc,
              colimit.ι_desc_assoc, Category.assoc, ι_colimMap,
              curry_obj_obj_obj, curry_obj_map_app]
            rw [map_id_right_eq_curry_swap_map, limit.w_assoc] } }
#align category_theory.limits.colimit_limit_to_limit_colimit CategoryTheory.Limits.colimitLimitToLimitColimit

/-- Since `colimit_limit_to_limit_colimit` is a morphism from a colimit to a limit,
this lemma characterises it.
-/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3e33608ca706847cce494238443a764838ce1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
