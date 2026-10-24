# constantSheafAdj_counit_w

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea01d079-26f8-1505-0a83-bef5ac073da4",
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
  "slug": "constantsheafadj-counit-w--5c6ec4122d1c91c2980bb27c",
  "source": {
    "blob": "a55c6ea105e07d42750aa8f0af430eb40d76c7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6ec4122d1c91c2980bb27c5192aed3a548ad64583fb4d5ab9fba5f3db45031",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea01d079-26f8-1505-0a83-bef5ac073da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c6ea105e07d42750aa8f0af430eb40d76c7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
