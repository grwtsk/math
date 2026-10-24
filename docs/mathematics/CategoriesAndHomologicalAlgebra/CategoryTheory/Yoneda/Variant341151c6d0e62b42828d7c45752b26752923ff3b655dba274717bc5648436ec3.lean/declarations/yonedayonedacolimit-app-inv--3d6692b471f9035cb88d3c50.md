# yonedaYonedaColimit_app_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:089f6e4b-c69e-522e-cd0b-e05210c64fe0",
  "kind": "theorem",
  "lexical_name": "yonedaYonedaColimit_app_inv",
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
  "slug": "yonedayonedacolimit-app-inv--3d6692b471f9035cb88d3c50",
  "source": {
    "blob": "dd87c732c1e125586a912f0260065b7068810c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant341151c6d0e62b42828d7c45752b26752923ff3b655dba274717bc5648436ec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6692b471f9035cb88d3c506a121de41d5e2e73e6a8fb509164a9df0e321a72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant341151c6d0e62b42828d7c45752b26752923ff3b655dba274717bc5648436ec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:089f6e4b-c69e-522e-cd0b-e05210c64fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem yonedaYonedaColimit_app_inv {X : C} : ((yonedaYonedaColimit F).app (op X)).inv =
    (colimitObjIsoColimitCompEvaluation _ _).hom ≫
      (colimit.post F (coyoneda.obj (op (yoneda.obj X)))) := by
  dsimp [yonedaYonedaColimit]
  simp only [Category.assoc, Iso.cancel_iso_hom_left]
  apply colimit.hom_ext
  intro j
  rw [HasColimit.ι_isoOfNatIso_hom_assoc, ι_colimMap_assoc]
  change _ = colimit.ι (F ⋙ coyoneda.obj (op (yoneda.obj X))) j ≫
    colimit.post F (coyoneda.obj (op (yoneda.obj X)))
  rw [colimit.ι_post]
  simp only [← CategoryTheory.Functor.assoc, comp_evaluation]
  rw [ι_preservesColimitIso_inv_assoc]
  simp only [← comp_evaluation, comp_obj, evaluation_obj_obj, yoneda_obj_obj, uliftFunctor_obj,
    whiskerLeft_app, uliftFunctor_map, Functor.comp_map, evaluation_obj_map, yoneda_map_app]
  ext η Y f
  dsimp [largeCurriedYonedaLemma, yonedaOpCompYonedaObj, yonedaEquiv]
  simp only [← comp_apply, Category.assoc]
  simp [← NatTrans.naturality_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant341151c6d0e62b42828d7c45752b26752923ff3b655dba274717bc5648436ec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant341151c6d0e62b42828d7c45752b26752923ff3b655dba274717bc5648436ec3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd87c732c1e125586a912f0260065b7068810c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
