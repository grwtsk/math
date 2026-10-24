# stalkSpecializes_stalkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2762f399-77c9-f69d-9057-fb03105ee1f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca5b1c29-ee69-600b-6fea-426a97d3ed31",
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
  "slug": "stalkspecializes-stalkmap--e1f2e333e1a8492a72856018",
  "source": {
    "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f2e333e1a8492a728560189002ad8149c1712b802a2386b8d050f875d59a7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca5b1c29-ee69-600b-6fea-426a97d3ed31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–245.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
