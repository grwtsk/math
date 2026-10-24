# coconePointSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:876b4119630fbdc8eaf14d027b0dfc1f6cd20d4df9daf9fb088267af2e14c4d4",
  "kind": "def",
  "lexical_name": "coconePointSMul",
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
  "slug": "coconepointsmul--f8227e5ed7b98d4162de74e6",
  "source": {
    "blob": "d7dcd75a5fdf4d9f305c3f37cf30aeb23edb5fa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8227e5ed7b98d4162de74e6f8140c4547572bf31ff8ca67c6151a9124c90419",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:876b4119630fbdc8eaf14d027b0dfc1f6cd20d4df9daf9fb088267af2e14c4d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconePointSMul :
    R →+* End (colimit (F ⋙ forget₂ _ AddCommGrp)) where
  toFun r := colimMap
    { app := fun j => (F.obj j).smul r
      naturality := fun _ _ _ => smul_naturality _ _ }
  map_zero' := colimit.hom_ext (by simp)
  map_one' := colimit.hom_ext (by simp)
  map_add' r s := colimit.hom_ext (fun j => by
    simp only [Functor.comp_obj, forget₂_obj, map_add, ι_colimMap]
    rw [Preadditive.add_comp, Preadditive.comp_add]
    simp only [ι_colimMap, Functor.comp_obj, forget₂_obj])
  map_mul' r s := colimit.hom_ext (fun j => by simp)

/-- The cocone for `F` constructed from the colimit of
`(F ⋙ forget₂ (ModuleCat R) AddCommGrp)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7dcd75a5fdf4d9f305c3f37cf30aeb23edb5fa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
