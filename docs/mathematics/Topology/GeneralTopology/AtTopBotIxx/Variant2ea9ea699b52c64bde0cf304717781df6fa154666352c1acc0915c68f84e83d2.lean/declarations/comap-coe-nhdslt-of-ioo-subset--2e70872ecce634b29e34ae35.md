# comap_coe_nhdsLT_of_Ioo_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62384a0d7de2eb41a8470cecb2a385ac0a4adec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:171ac931-6bba-5a69-d66a-1f7ff1ddab22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ed8c2b-90f8-8dd6-7097-a2f8ec01ae4a",
  "kind": "theorem",
  "lexical_name": "comap_coe_nhdsLT_of_Ioo_subset",
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
  "slug": "comap-coe-nhdslt-of-ioo-subset--2e70872ecce634b29e34ae35",
  "source": {
    "blob": "62384a0d7de2eb41a8470cecb2a385ac0a4adec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e70872ecce634b29e34ae35afc47c9cc40c565c11c4c430a4ff603310956bc4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ed8c2b-90f8-8dd6-7097-a2f8ec01ae4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_coe_nhdsLT_of_Ioo_subset (hsb : s ⊆ Iio b) (hs : s.Nonempty → ∃ a < b, Ioo a b ⊆ s)
    (hb : IsSuccPrelimit b := by exact .of_dense _) :
    comap ((↑) : s → X) (𝓝[<] b) = atTop := by
  rw [comap_coe_nhdsLT_eq_atTop_iff]
  refine ⟨hsb, fun hsne a ha ↦ ?_⟩
  rcases hs hsne with ⟨c, hcb, hcs⟩
  rcases hb.nonempty_Ioo_of_lt (max_lt ha hcb) with ⟨x, hacx, hxb⟩
  rw [max_lt_iff] at hacx
  exact ⟨x, hcs ⟨hacx.2, hxb⟩, hacx.1, hxb⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62384a0d7de2eb41a8470cecb2a385ac0a4adec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
