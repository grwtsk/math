# stalkSpecializes_stalkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67894823-3347-4337-011e-3e4bd8e492c1",
  "kind": "theorem",
  "lexical_name": "stalkSpecializes_stalkMap",
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
  "slug": "stalkspecializes-stalkmap--e49ed158bcd1687b58b223e4",
  "source": {
    "blob": "5e7f89ef6c7538f8d341101e0cbbd990736b14e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49ed158bcd1687b58b223e423d83a6758cb4a73383f89359faaa9cf150320e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67894823-3347-4337-011e-3e4bd8e492c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkSpecializes_stalkMap {X Y : PresheafedSpace.{_, _, v} C}
    (f : X ⟶ Y) {x y : X} (h : x ⤳ y) :
    Y.presheaf.stalkSpecializes (f.base.map_specializes h) ≫ stalkMap f x =
      stalkMap f y ≫ X.presheaf.stalkSpecializes h := by
  -- Porting note : the original one liner `dsimp [stalkMap]; simp [stalkMap]` doesn't work,
  -- I had to uglify this
  dsimp [stalkSpecializes, stalkMap, stalkFunctor, stalkPushforward]
  -- We can't use `ext` here due to https://github.com/leanprover/std4/pull/159
  refine colimit.hom_ext fun j => ?_
  induction j with | h j => ?_
  dsimp
  simp only [colimit.ι_desc_assoc, comp_obj, op_obj, unop_op, ι_colimMap_assoc, colimit.map_desc,
    OpenNhds.inclusion_obj, pushforwardObj_obj, whiskerLeft_app, OpenNhds.map_obj, whiskerRight_app,
    NatTrans.id_app, map_id, colimit.ι_pre, id_comp, assoc, colimit.pre_desc]
  erw [colimit.ι_desc]
  dsimp
  erw [X.presheaf.map_id, id_comp]
  rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.stalk_map.stalk_specializes_stalk_map AlgebraicGeometry.PresheafedSpace.stalkMap.stalkSpecializes_stalkMap

end stalkMap

end AlgebraicGeometry.PresheafedSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e7f89ef6c7538f8d341101e0cbbd990736b14e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
