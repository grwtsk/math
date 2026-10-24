# variation_vectorMeasure_Ioo_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b600449f-bc1b-813e-ac90-0e369244e497",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef861666-4a18-b586-b162-d1817f524c02",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_Ioo_left",
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
  "slug": "variation-vectormeasure-ioo-left--69d4257c5647ac2407172363",
  "source": {
    "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 411,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d4257c5647ac24071723637b2f7a7cf98b2d496585cfb219f1f4771ebbc2f7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef861666-4a18-b586-b162-d1817f524c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_Ioo_left
    (hf : BoundedVariationOn f univ) {a b : α} :
    hf.vectorMeasure.variation (Ioo a b) = eVariationOn f.leftLim (Ioo a b) := by
  rw [variation_vectorMeasure_Ioo_right]
  apply le_antisymm
  · have : eVariationOn f.rightLim (Ioo a b) = eVariationOn f.leftLim.rightLim (Ioo a b) := by
      apply eVariationOn.congr
      intro x hx
      have : (𝓝[>] x).NeBot := nhdsGT_neBot_of_exists_gt ⟨b, hx.2⟩
      exact (rightLim_leftLim (hf.tendsto_rightLim _)).symm
    rw [this]
    exact eVariationOn.eVariationOn_rightLim_le isOpen_Ioo
  · have : eVariationOn f.leftLim (Ioo a b) = eVariationOn f.rightLim.leftLim (Ioo a b) := by
      apply eVariationOn.congr
      intro x hx
      have : (𝓝[<] x).NeBot := nhdsLT_neBot_of_exists_lt ⟨a, hx.1⟩
      exact (leftLim_rightLim (hf.tendsto_leftLim _)).symm
    rw [this]
    exact eVariationOn.eVariationOn_leftLim_le isOpen_Ioo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c218867d84e1e39755a96ccd6d0642c52bc5181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
