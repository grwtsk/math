# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1e4a2b-f5de-1884-f3c7-636e255af3c7",
  "kind": "theorem",
  "lexical_name": "comp",
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
  "slug": "comp--3ffafce9cccc19c1df51831a",
  "source": {
    "blob": "5e7f89ef6c7538f8d341101e0cbbd990736b14e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ffafce9cccc19c1df51831a30ce847ed52bda23830aad215dad29faab3dd410",
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

Occurrence: `result:6b1e4a2b-f5de-1884-f3c7-636e255af3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp {X Y Z : PresheafedSpace.{_, _, v} C} (α : X ⟶ Y) (β : Y ⟶ Z) (x : X) :
    stalkMap (α ≫ β) x =
      (stalkMap β (α.base x) : Z.stalk (β.base (α.base x)) ⟶ Y.stalk (α.base x)) ≫
        (stalkMap α x : Y.stalk (α.base x) ⟶ X.stalk x) := by
  dsimp [stalkMap, stalkFunctor, stalkPushforward]
  -- We can't use `ext` here due to https://github.com/leanprover/std4/pull/159
  refine colimit.hom_ext fun U => ?_
  induction U with | h U => ?_
  cases U
  simp only [whiskeringLeft_obj_obj, comp_obj, op_obj, unop_op, OpenNhds.inclusion_obj,
    ι_colimMap_assoc, pushforwardObj_obj, Opens.map_comp_obj, whiskerLeft_app, comp_c_app,
    OpenNhds.map_obj, whiskerRight_app, NatTrans.id_app, map_id, colimit.ι_pre, id_comp, assoc,
    colimit.ι_pre_assoc]
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.stalk_map.comp AlgebraicGeometry.PresheafedSpace.stalkMap.comp

/-- If `α = β` and `x = x'`, we would like to say that `stalk_map α x = stalk_map β x'`.
Unfortunately, this equality is not well-formed, as their types are not _definitionally_ the same.
To get a proper congruence lemma, we therefore have to introduce these `eq_to_hom` arrows on
either side of the equality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e7f89ef6c7538f8d341101e0cbbd990736b14e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
