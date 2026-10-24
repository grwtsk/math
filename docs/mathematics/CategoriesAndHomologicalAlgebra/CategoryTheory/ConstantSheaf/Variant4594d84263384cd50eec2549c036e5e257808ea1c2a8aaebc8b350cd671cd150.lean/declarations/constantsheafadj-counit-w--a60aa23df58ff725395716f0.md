# constantSheafAdj_counit_w

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85575dd6-e6fc-e691-7818-0e328b726fe2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaa1678f-32dd-3291-61af-9246764a8a0f",
  "kind": "lemma",
  "lexical_name": "constantSheafAdj_counit_w",
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
  "slug": "constantsheafadj-counit-w--a60aa23df58ff725395716f0",
  "source": {
    "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60aa23df58ff725395716f0a456f108120a42422f1497c7a5d65f6345739ca7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaa1678f-32dd-3291-61af-9246764a8a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma constantSheafAdj_counit_w {T : C} (hT : IsTerminal T) :
    ((constantCommuteCompose J U).hom.app (F.val.obj ⟨T⟩)) ≫
      ((constantSheafAdj J B hT).counit.app ((sheafCompose J U).obj F)) =
        ((sheafCompose J U).map ((constantSheafAdj J D hT).counit.app F)) := by
  apply Sheaf.hom_ext
  rw [instCategorySheaf_comp_val, constantCommuteCompose_hom_app_val, assoc, Iso.inv_comp_eq]
  apply sheafify_hom_ext _ _ _ ((sheafCompose J U).obj F).cond
  ext
  simp? says simp only [comp_obj, const_obj_obj, sheafCompose_obj_val, id_obj,
      constantSheafAdj_counit_app, instCategorySheaf_comp_val,
      sheafificationAdjunction_counit_app_val, sheafifyMap_sheafifyLift, comp_id,
      toSheafify_sheafifyLift, NatTrans.comp_app, constComp_hom_app,
      constantPresheafAdj_counit_app_app, Functor.comp_map, id_comp, flip_obj_obj,
      sheafToPresheaf_obj, map_comp, sheafCompose_map_val, sheafComposeIso_hom_fac_assoc,
      whiskerRight_app]
  simp [← map_comp, ← NatTrans.comp_app]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3e71146f34e78917b7d66b56abaf7ac866071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
