# CoreHomEquivUnitCounit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f766e052318fcbfbefc5eab26c9021c258e5b78c8a6ca3b539e31b8b00b55e25",
  "kind": "structure",
  "lexical_name": "CoreHomEquivUnitCounit",
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
  "slug": "corehomequivunitcounit--2301511e02d452f8b6ce60bb",
  "source": {
    "blob": "6bf07d806588471a5794fd565c6768734a4efe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 342,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2301511e02d452f8b6ce60bb30da1c159f34659607e7c794affd1ff4f71bc36f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f766e052318fcbfbefc5eab26c9021c258e5b78c8a6ca3b539e31b8b00b55e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoreHomEquivUnitCounit (F : C ⥤ D) (G : D ⥤ C) where
  /-- The equivalence between `Hom (F X) Y` and `Hom X (G Y)` coming from an adjunction -/
  homEquiv : ∀ X Y, (F.obj X ⟶ Y) ≃ (X ⟶ G.obj Y)
  /-- The unit of an adjunction -/
  unit : 𝟭 C ⟶ F ⋙ G
  /-- The counit of an adjunction -/
  counit : G ⋙ F ⟶ 𝟭 D
  /-- The relationship between the unit and hom set equivalence of an adjunction -/
  homEquiv_unit : ∀ {X Y f}, (homEquiv X Y) f = unit.app X ≫ G.map f := by cat_disch
  /-- The relationship between the counit and hom set equivalence of an adjunction -/
  homEquiv_counit : ∀ {X Y g}, (homEquiv X Y).symm g = F.map g ≫ counit.app Y := by cat_disch

/-- This is an auxiliary data structure useful for constructing adjunctions.
See `Adjunction.mkOfHomEquiv`.
This structure won't typically be used anywhere else.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf07d806588471a5794fd565c6768734a4efe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
