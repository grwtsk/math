# pentagon_bimod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaa499ddb2c04449dc0d3b8fc3147b399b4427a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 952,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88ad658f-e6ef-97a7-c9b8-fcaa2c5e1dd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4648f19-372c-a22d-3cda-748aa3cc909e",
  "kind": "theorem",
  "lexical_name": "pentagon_bimod",
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
  "slug": "pentagon-bimod--32ce5388628ce921df2609ae",
  "source": {
    "blob": "eaa499ddb2c04449dc0d3b8fc3147b399b4427a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 952,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ce5388628ce921df2609ae7298ae988350df5573d56d657046c911d9b294a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4648f19-372c-a22d-3cda-748aa3cc909e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 952–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pentagon_bimod {V W X Y Z : Mon C} (M : Bimod V W) (N : Bimod W X) (P : Bimod X Y)
    (Q : Bimod Y Z) :
    whiskerRight (associatorBimod M N P).hom Q ≫
      (associatorBimod M (N.tensorBimod P) Q).hom ≫
        whiskerLeft M (associatorBimod N P Q).hom =
      (associatorBimod (M.tensorBimod N) P Q).hom ≫
        (associatorBimod M N (P.tensorBimod Q)).hom := by
  dsimp [associatorBimod]
  ext
  apply coequalizer.hom_ext
  dsimp
  dsimp only [AssociatorBimod.hom]
  slice_lhs 1 2 => rw [ι_colimMap, parallelPairHom_app_one]
  slice_lhs 2 3 => rw [coequalizer.π_desc]
  slice_rhs 1 2 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.homAux]
  refine (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 ?_
  dsimp
  slice_lhs 1 2 => rw [← comp_whiskerRight, coequalizer.π_desc]
  slice_rhs 1 3 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_rhs 3 4 => rw [coequalizer.π_desc]
  refine (cancel_epi ((tensorRight _ ⋙ tensorRight _).map (coequalizer.π _ _))).1 ?_
  dsimp
  slice_lhs 1 2 =>
    rw [← comp_whiskerRight, π_tensor_id_preserves_coequalizer_inv_desc, comp_whiskerRight,
      comp_whiskerRight]
  slice_lhs 3 5 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  dsimp only [TensorBimod.X]
  slice_lhs 2 3 => rw [associator_naturality_middle]
  slice_lhs 5 6 => rw [ι_colimMap, parallelPairHom_app_one]
  slice_lhs 4 5 => rw [← whiskerLeft_comp, coequalizer.π_desc]
  slice_lhs 3 4 =>
    rw [← whiskerLeft_comp, π_tensor_id_preserves_coequalizer_inv_desc,
      whiskerLeft_comp, whiskerLeft_comp]
  slice_rhs 1 2 => rw [associator_naturality_left]
  slice_rhs 2 3 => rw [← whisker_exchange]
  slice_rhs 3 5 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_rhs 2 3 => rw [associator_naturality_right]
  monoidal

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean#L952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa499ddb2c04449dc0d3b8fc3147b399b4427a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
