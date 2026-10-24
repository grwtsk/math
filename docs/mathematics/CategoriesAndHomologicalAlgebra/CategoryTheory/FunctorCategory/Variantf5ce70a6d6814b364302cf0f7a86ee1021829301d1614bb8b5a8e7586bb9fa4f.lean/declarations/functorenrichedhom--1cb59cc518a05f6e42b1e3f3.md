# functorEnrichedHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31e191bd6d9df40bf434472d0cbda7b25bd24557b6832f6f224a92df302852b3",
  "kind": "def",
  "lexical_name": "functorEnrichedHom",
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
  "slug": "functorenrichedhom--1cb59cc518a05f6e42b1e3f3",
  "source": {
    "blob": "964746b1888763c4112af60a841300762aca73ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cb59cc518a05f6e42b1e3f31456ddbe58a31ed7b866fff9f17c9f8b16dbcd28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31e191bd6d9df40bf434472d0cbda7b25bd24557b6832f6f224a92df302852b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorEnrichedHom : J ⥤ V where
  obj j := enrichedHom V (Under.forget j ⋙ F₁) (Under.forget j ⋙ F₂)
  map f := precompEnrichedHom' V (Under.map f) (Iso.refl _) (Iso.refl _)
  map_id X := by
    ext j
    -- this was produced by `simp?`
    simp only [diagram_obj_obj, Functor.comp_obj, Under.forget_obj, end_.lift_π,
      Under.map_obj_right, Iso.refl_inv, NatTrans.id_app, eHomWhiskerRight_id, Iso.refl_hom,
      eHomWhiskerLeft_id, comp_id, id_comp]
    congr 1
    simp [Under.map, Comma.mapLeft]
    rfl
  map_comp f g := by
    ext j
    -- this was produced by `simp?`
    simp only [diagram_obj_obj, Functor.comp_obj, Under.forget_obj, end_.lift_π,
      Under.map_obj_right, Iso.refl_inv, NatTrans.id_app, eHomWhiskerRight_id, Iso.refl_hom,
      eHomWhiskerLeft_id, comp_id, assoc]
    congr 1
    simp [Under.map, Comma.mapLeft]

variable [HasEnrichedHom V F₁ F₂]

/-- The (limit) cone expressing that the limit of `functorEnrichedHom V F₁ F₂`
is `enrichedHom V F₁ F₂`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964746b1888763c4112af60a841300762aca73ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
