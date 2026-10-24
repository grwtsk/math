# yonedaYonedaColimit_app_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be78f89e-ef6c-0178-7a4c-50afd4e75648",
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
  "slug": "yonedayonedacolimit-app-inv--2c0c734421a95d1c6c16909b",
  "source": {
    "blob": "c87b00c4bbcc2607fdbae7bc792a9bbf5a614c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0c734421a95d1c6c16909b9f1ef70559b222a607fc8fa4c4164037def6b78e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be78f89e-ef6c-0178-7a4c-50afd4e75648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem yonedaYonedaColimit_app_inv {X : C} : ((yonedaYonedaColimit F).app (op X)).inv =
    (colimitObjIsoColimitCompEvaluation _ _).hom ≫
      (colimit.post F (coyoneda.obj (op (yoneda.obj X)))) := by
  dsimp [yonedaYonedaColimit]
  simp only [Category.id_comp, Iso.cancel_iso_hom_left]
  apply colimit.hom_ext
  intro j
  rw [colimit.ι_post, ι_colimMap_assoc]
  simp only [← CategoryTheory.Functor.assoc, comp_evaluation]
  rw [ι_preservesColimitIso_inv_assoc, ← Functor.map_comp_assoc]
  simp only [← comp_evaluation]
  rw [colimitObjIsoColimitCompEvaluation_ι_inv, whiskerLeft_app]
  ext η Y f
  simp [largeCurriedYonedaLemma, yonedaOpCompYonedaObj, FunctorToTypes.colimit.map_ι_apply,
    map_yonedaEquiv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c87b00c4bbcc2607fdbae7bc792a9bbf5a614c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
