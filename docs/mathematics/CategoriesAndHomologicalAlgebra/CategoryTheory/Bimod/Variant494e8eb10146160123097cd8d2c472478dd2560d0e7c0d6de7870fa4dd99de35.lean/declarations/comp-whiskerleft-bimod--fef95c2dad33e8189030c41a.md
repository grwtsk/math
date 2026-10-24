# comp_whiskerLeft_bimod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "949892d14684160b6997a4d25437e55ed6d17dbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 774,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c55ff287-a57a-fa4b-d851-c501e3512e5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b4beba2-5a61-43e6-222b-2929499c50d8",
  "kind": "theorem",
  "lexical_name": "comp_whiskerLeft_bimod",
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
  "slug": "comp-whiskerleft-bimod--fef95c2dad33e8189030c41a",
  "source": {
    "blob": "949892d14684160b6997a4d25437e55ed6d17dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 774,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef95c2dad33e8189030c41af2e89e5ffc9d6b4518315b29e688e4e83a30666e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b4beba2-5a61-43e6-222b-2929499c50d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_whiskerLeft_bimod {W X Y Z : Mon_ C} (M : Bimod W X) (N : Bimod X Y)
    {P P' : Bimod Y Z} (f : P ⟶ P') :
    whiskerLeft (M.tensorBimod N) f =
      (associatorBimod M N P).hom ≫
        whiskerLeft M (whiskerLeft N f) ≫ (associatorBimod M N P').inv := by
  dsimp [tensorHom, tensorBimod, associatorBimod]
  ext
  apply coequalizer.hom_ext
  dsimp
  slice_lhs 1 2 => rw [ι_colimMap, parallelPairHom_app_one]
  dsimp [TensorBimod.X, AssociatorBimod.hom]
  slice_rhs 1 2 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.homAux, AssociatorBimod.inv]
  refine (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 ?_
  rw [tensorRight_map]
  slice_rhs 1 3 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_rhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
  slice_rhs 2 3 => rw [← MonoidalCategory.whiskerLeft_comp, ι_colimMap, parallelPairHom_app_one]
  slice_rhs 3 4 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.invAux]
  slice_rhs 2 2 => rw [MonoidalCategory.whiskerLeft_comp]
  slice_rhs 3 5 => rw [id_tensor_π_preserves_coequalizer_inv_desc]
  slice_rhs 2 3 => rw [associator_inv_naturality_right]
  slice_rhs 1 3 => rw [Iso.hom_inv_id_assoc]
  slice_lhs 1 2 => rw [← whisker_exchange]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `949892d14684160b6997a4d25437e55ed6d17dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
