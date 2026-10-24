# tag_biUnionTagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f27201c4aaac73501bda93fa4ff61f3180da3a15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27bae19b-baf3-0e32-8935-37afba7bbacf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a6554b8-dfd2-19d8-f2af-63f4a019c414",
  "kind": "theorem",
  "lexical_name": "tag_biUnionTagged",
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
  "slug": "tag-biuniontagged--8d4563ac37ffdd38d54cacf6",
  "source": {
    "blob": "f27201c4aaac73501bda93fa4ff61f3180da3a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d4563ac37ffdd38d54cacf65f2aa3089d2a0dbabb16d2230d4876cd18b29ca4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6554b8-dfd2-19d8-f2af-63f4a019c414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tag_biUnionTagged (π : Prepartition I) {πi : ∀ J, TaggedPrepartition J} (hJ : J ∈ π) {J'}
    (hJ' : J' ∈ πi J) : (π.biUnionTagged πi).tag J' = (πi J).tag J' := by
  rw [← π.biUnionIndex_of_mem (πi := fun J => (πi J).toPrepartition) hJ hJ']
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f27201c4aaac73501bda93fa4ff61f3180da3a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
