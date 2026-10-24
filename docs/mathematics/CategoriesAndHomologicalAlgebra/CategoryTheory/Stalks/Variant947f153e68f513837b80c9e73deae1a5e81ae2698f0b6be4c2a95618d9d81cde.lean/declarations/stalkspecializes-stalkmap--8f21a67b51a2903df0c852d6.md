# stalkSpecializes_stalkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df63671d-cd37-2169-3320-535398587858",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3e1632a-cbcf-7c62-d20f-e074b071f130",
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
  "slug": "stalkspecializes-stalkmap--8f21a67b51a2903df0c852d6",
  "source": {
    "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f21a67b51a2903df0c852d616bb51deeef7514b02c770828f6b6387fd95cdec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e1632a-cbcf-7c62-d20f-e074b071f130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkSpecializes_stalkMap {X Y : PresheafedSpace.{_, _, v} C}
    (f : X ⟶ Y) {x y : X} (h : x ⤳ y) :
    Y.presheaf.stalkSpecializes (f.base.hom.map_specializes h) ≫ f.stalkMap x =
      f.stalkMap y ≫ X.presheaf.stalkSpecializes h := by
  -- Porting note: the original one liner `dsimp [stalkMap]; simp [stalkMap]` doesn't work,
  -- I had to uglify this
  dsimp [stalkSpecializes, Hom.stalkMap, stalkFunctor, stalkPushforward]
  -- We can't use `ext` here due to https://github.com/leanprover/std4/pull/159
  refine colimit.hom_ext fun j => ?_
  induction j with | op j => ?_
  dsimp
  simp only [colimit.ι_desc_assoc, ι_colimMap_assoc, whiskerLeft_app,
    whiskerRight_app, NatTrans.id_app, map_id, colimit.ι_pre, id_comp, assoc,
    colimit.pre_desc, colimit.map_desc, colimit.ι_desc, Cocones.precompose_obj_ι,
    Cocone.whisker_ι, NatTrans.comp_app]
  erw [X.presheaf.map_id, id_comp]
  rfl

end stalkMap

end AlgebraicGeometry.PresheafedSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d463861180d35e98e6fa296364ceba8ddd98fedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
