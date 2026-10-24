# hom_left_act_hom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62685dcafaa40dd6970145392bd6328c0c8861b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c58fe6bb-45a8-0ac9-981c-3280bce82043",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70f94c4c-ba8f-081f-7e13-92cdf852c6f9",
  "kind": "theorem",
  "lexical_name": "hom_left_act_hom'",
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
  "slug": "hom-left-act-hom--6eb69e2361bda8579d21ff83",
  "source": {
    "blob": "62685dcafaa40dd6970145392bd6328c0c8861b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 511,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb69e2361bda8579d21ff837a9321d779f74f16454398630dbfad653c560c42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f94c4c-ba8f-081f-7e13-92cdf852c6f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hom_left_act_hom' :
    ((P.tensorBimod Q).tensorBimod L).actLeft ≫ hom P Q L =
      (𝟙 R.X ⊗ hom P Q L) ≫ (P.tensorBimod (Q.tensorBimod L)).actLeft := by
  dsimp; dsimp [hom, homAux]
  refine' (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 _
  rw [tensorLeft_map]
  slice_lhs 1 2 => rw [TensorBimod.id_tensor_π_actLeft]
  slice_lhs 3 4 => rw [coequalizer.π_desc]
  slice_rhs 1 2 => rw [← id_tensor_comp, coequalizer.π_desc, id_tensor_comp]
  refine' (cancel_epi ((tensorRight _ ⋙ tensorLeft _).map (coequalizer.π _ _))).1 _
  dsimp; dsimp [TensorBimod.X]
  slice_lhs 1 2 => rw [associator_inv_naturality]
  slice_lhs 2 3 =>
    rw [← comp_tensor_id, TensorBimod.id_tensor_π_actLeft, comp_tensor_id, comp_tensor_id]
  slice_lhs 4 6 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_lhs 3 4 => rw [associator_naturality]
  slice_lhs 4 5 => rw [MonoidalCategory.tensor_id, tensor_id_comp_id_tensor]
  slice_rhs 1 3 =>
    rw [← id_tensor_comp, ← id_tensor_comp, π_tensor_id_preserves_coequalizer_inv_desc,
      id_tensor_comp, id_tensor_comp]
  slice_rhs 3 4 => erw [TensorBimod.id_tensor_π_actLeft P (Q.tensorBimod L)]
  slice_rhs 2 3 => erw [associator_inv_naturality]
  slice_rhs 3 4 => erw [MonoidalCategory.tensor_id, id_tensor_comp_tensor_id]
  coherence
set_option linter.uppercaseLean3 false in
#align Bimod.associator_Bimod.hom_left_act_hom' Bimod.AssociatorBimod.hom_left_act_hom'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62685dcafaa40dd6970145392bd6328c0c8861b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
