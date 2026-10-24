# transGen_wcovBy_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e95ee1379c20d60503ab4563e3c04342a4d274e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1099,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:badec8dd-86ba-ea53-97d8-67c6030c4f34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5188dbd1-0398-8e3d-b2d9-5d0eaa701be3",
  "kind": "lemma",
  "lexical_name": "transGen_wcovBy_of_le",
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
  "slug": "transgen-wcovby-of-le--0b690b1c0987c5459a2daa1d",
  "source": {
    "blob": "e95ee1379c20d60503ab4563e3c04342a4d274e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1122,
    "line": 1099,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b690b1c0987c5459a2daa1d66484ba735c7100b932f0e7faf8af929d6482469",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5188dbd1-0398-8e3d-b2d9-5d0eaa701be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1099–1122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transGen_wcovBy_of_le [Preorder α] [LocallyFiniteOrder α] {x y : α} (hxy : x ≤ y) :
    TransGen (· ⩿ ·) x y := by
  -- We proceed by well-founded induction on the cardinality of `Icc x y`.
  -- It's impossible for the cardinality to be zero since `x ≤ y`
  have : #(Ico x y) < #(Icc x y) := card_lt_card <|
    ⟨Ico_subset_Icc_self, not_subset.mpr ⟨y, ⟨right_mem_Icc.mpr hxy, right_notMem_Ico⟩⟩⟩
  by_cases hxy' : y ≤ x
  -- If `y ≤ x`, then `x ⩿ y`
  · exact .single <| wcovBy_of_le_of_le hxy hxy'
  /- and if `¬ y ≤ x`, then `x < y`, not because it is a linear order, but because `x ≤ y`
  already. In that case, since `z` is maximal in `Ico x y`, then `z ⩿ y` and we can use the
  induction hypothesis to show that `Relation.TransGen (· ⩿ ·) x z`. -/
  · obtain ⟨z, hxz, hz⟩ :=
      (Set.finite_Ico x y).exists_le_maximal <| Set.left_mem_Ico.2 <| hxy.lt_of_not_le hxy'
    have z_card := calc
      #(Icc x z) ≤ #(Ico x y) := card_le_card <| Icc_subset_Ico_right hz.1.2
      _          < #(Icc x y) := this
    have h₁ := transGen_wcovBy_of_le hz.1.1
    have h₂ : z ⩿ y :=
      ⟨hz.1.2.le, fun c hzc hcy ↦ hzc.not_le <| hz.2 ⟨hz.1.1.trans hzc.le, hcy⟩ hzc.le⟩
    exact .tail h₁ h₂
termination_by #(Icc x y)

/-- In a locally finite preorder, `≤` is the transitive closure of `⩿`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean#L1099).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95ee1379c20d60503ab4563e3c04342a4d274e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
