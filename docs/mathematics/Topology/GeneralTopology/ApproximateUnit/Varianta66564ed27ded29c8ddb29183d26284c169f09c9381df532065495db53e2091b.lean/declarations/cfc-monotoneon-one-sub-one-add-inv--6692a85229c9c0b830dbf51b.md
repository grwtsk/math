# CFC.monotoneOn_one_sub_one_add_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ade8c6ef-39fe-c5e0-8198-8e0b4ed5e10c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76168e58-1350-9c1f-44e4-70984ab8c854",
  "kind": "lemma",
  "lexical_name": "CFC.monotoneOn_one_sub_one_add_inv",
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
  "slug": "cfc-monotoneon-one-sub-one-add-inv--6692a85229c9c0b830dbf51b",
  "source": {
    "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6692a85229c9c0b830dbf51b5cc19614e1fcffd33d09c8461ad6fce63f10a15a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76168e58-1350-9c1f-44e4-70984ab8c854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.monotoneOn_one_sub_one_add_inv :
    MonotoneOn (cfcₙ (fun x : ℝ≥0 ↦ 1 - (1 + x)⁻¹)) (Set.Ici (0 : A)) := by
  intro a ha b hb hab
  simp only [Set.mem_Ici] at ha hb
  rw [← inr_le_iff .., nnreal_cfcₙ_eq_cfc_inr a _, nnreal_cfcₙ_eq_cfc_inr b _]
  rw [← inr_le_iff a b (.of_nonneg ha) (.of_nonneg hb)] at hab
  rw [← inr_nonneg_iff] at ha hb
  have h_cfc_one_sub (c : A⁺¹) (hc : 0 ≤ c := by cfc_tac) :
      cfc (fun x : ℝ≥0 ↦ 1 - (1 + x)⁻¹) c = 1 - cfc (·⁻¹ : ℝ≥0 → ℝ≥0) (1 + c) := by
    rw [cfc_tsub _ _ _ (fun x _ ↦ by simp) (hg := by fun_prop (disch := intro _ _; positivity)),
      cfc_const_one ℝ≥0 c, cfc_comp' (·⁻¹) (1 + ·) c ?_, cfc_add .., cfc_const_one ℝ≥0 c,
      cfc_id' ℝ≥0 c]
    exact continuousOn_id.inv₀ (Set.forall_mem_image.mpr fun x _ ↦ by dsimp only [id]; positivity)
  rw [h_cfc_one_sub (a : A⁺¹), h_cfc_one_sub (b : A⁺¹)]
  gcongr
  rw [← CFC.rpow_neg_one_eq_cfc_inv, ← CFC.rpow_neg_one_eq_cfc_inv]
  exact rpow_neg_one_le_rpow_neg_one (add_nonneg zero_le_one ha) (by gcongr) <|
    isUnit_of_le isUnit_one zero_le_one <| le_add_of_nonneg_right ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d874507c98db41ac7cc14f01676e2d6a52fdee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
