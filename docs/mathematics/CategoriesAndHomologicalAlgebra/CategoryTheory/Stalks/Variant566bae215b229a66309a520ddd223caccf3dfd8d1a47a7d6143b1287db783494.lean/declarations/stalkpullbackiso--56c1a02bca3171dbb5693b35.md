# stalkPullbackIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f080ab1abe1d5f51d508fcc6ba4dd68f2b7262a60cc5ac662b815620b52ac14",
  "kind": "def",
  "lexical_name": "stalkPullbackIso",
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
  "slug": "stalkpullbackiso--56c1a02bca3171dbb5693b35",
  "source": {
    "blob": "0ec33ddcff63ecf8702fa7553958511a1dd4d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 341,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56c1a02bca3171dbb5693b3576b3e174908083ad1c9f3d7fa36000528125ab6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f080ab1abe1d5f51d508fcc6ba4dd68f2b7262a60cc5ac662b815620b52ac14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stalkPullbackIso (f : X ⟶ Y) (F : Y.Presheaf C) (x : X) :
    F.stalk (f x) ≅ ((pullback C f).obj F).stalk x where
  hom := stalkPullbackHom _ _ _ _
  inv := stalkPullbackInv _ _ _ _
  hom_inv_id := by
    ext U hU
    dsimp
    rw [germ_stalkPullbackHom_assoc, germ_stalkPullbackInv, Category.comp_id,
      pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk]
  inv_hom_id := by
    ext V hV
    dsimp
    rw [germ_stalkPullbackInv_assoc, Category.comp_id, germToPullbackStalk_stalkPullbackHom]

end stalkPullback

section stalkSpecializes

variable {C}

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- If `x` specializes to `y`, then there is a natural map `F.stalk y ⟶ F.stalk x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec33ddcff63ecf8702fa7553958511a1dd4d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
