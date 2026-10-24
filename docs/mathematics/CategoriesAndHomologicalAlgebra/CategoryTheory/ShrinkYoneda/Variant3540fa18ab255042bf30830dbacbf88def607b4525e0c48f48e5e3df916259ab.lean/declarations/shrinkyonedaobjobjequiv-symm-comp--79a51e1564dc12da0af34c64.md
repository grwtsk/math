# shrinkYonedaObjObjEquiv_symm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5ecf21dd4bf8ff1a63aced746ba65187aa4d822",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9868a22b-2194-97a6-62a7-b036c4fb986c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeeafcf7-d4d3-88bf-986a-358ffa95c32c",
  "kind": "lemma",
  "lexical_name": "shrinkYonedaObjObjEquiv_symm_comp",
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
  "slug": "shrinkyonedaobjobjequiv-symm-comp--79a51e1564dc12da0af34c64",
  "source": {
    "blob": "d5ecf21dd4bf8ff1a63aced746ba65187aa4d822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a51e1564dc12da0af34c647f941701a2da9850f6d953308976a1a11784f305",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeeafcf7-d4d3-88bf-986a-358ffa95c32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shrinkYonedaObjObjEquiv_symm_comp {X Y Y' : C} (g : Y' ⟶ Y) (f : Y ⟶ X) :
    shrinkYonedaObjObjEquiv.symm (g ≫ f) =
    (shrinkYoneda.obj _).map g.op (shrinkYonedaObjObjEquiv.symm f) :=
  (shrinkYoneda_obj_map_shrinkYonedaObjObjEquiv_symm g.op f).symm

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ecf21dd4bf8ff1a63aced746ba65187aa4d822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
