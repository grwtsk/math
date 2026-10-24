# rightUnitor'_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1adb7471c009cb264f7cdc2b592a526503c72d95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef85f788-b63c-51bd-e11e-6137dba538b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6118ef29-c4be-b507-e474-4f64052f156c",
  "kind": "lemma",
  "lexical_name": "rightUnitor'_inv",
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
  "slug": "rightunitor-inv--7f9553f24c9c0a16b70f6006",
  "source": {
    "blob": "1adb7471c009cb264f7cdc2b592a526503c72d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9553f24c9c0a16b70f6006d063b8ae7cd8adbeaf0d47488ea1f60813c7f38b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6118ef29-c4be-b507-e474-4f64052f156c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightUnitor'_inv (i : I) :
    (rightUnitor' K).inv i = (ρ_ (K.X i)).inv ≫ ((K.X i) ◁ (singleObjXSelf c 0 (𝟙_ C)).inv) ≫
      ιTensorObj K (tensorUnit C c) i 0 i (add_zero i) := by
  dsimp [rightUnitor']
  rw [GradedObject.Monoidal.rightUnitor_inv_apply, assoc, assoc, Iso.cancel_iso_inv_left,
    GradedObject.Monoidal.ι_tensorHom]
  dsimp
  rw [id_tensorHom, ← MonoidalCategory.whiskerLeft_comp_assoc]
  congr 2
  rw [← cancel_epi (GradedObject.Monoidal.tensorUnit₀ (I := I)).hom, Iso.hom_inv_id_assoc]
  dsimp [tensorUnitIso]
  rw [dif_pos rfl]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adb7471c009cb264f7cdc2b592a526503c72d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
