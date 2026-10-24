# mem_segment_sub_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1ba737891cea6a9645ebdd562f93d707888b72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57903a359725fc34286aae7dfefe084995ef07ddf357fd10b18f192cc528f730.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d358262-2cf0-2ef1-2d3a-e67ee72e99c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:791d9d58-fce2-4efe-6c84-e73a661bc2a8",
  "kind": "theorem",
  "lexical_name": "mem_segment_sub_add",
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
  "slug": "mem-segment-sub-add--6eb520ea9a150f3721c63b6c",
  "source": {
    "blob": "5e1ba737891cea6a9645ebdd562f93d707888b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 339,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant57903a359725fc34286aae7dfefe084995ef07ddf357fd10b18f192cc528f730.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb520ea9a150f3721c63b6cd00fa314be392b0930ef628aae7b01eda60252e1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Segment/Variant57903a359725fc34286aae7dfefe084995ef07ddf357fd10b18f192cc528f730.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791d9d58-fce2-4efe-6c84-e73a661bc2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_segment_sub_add [Invertible (2 : 𝕜)] (x y : E) : x ∈ [x - y -[𝕜] x + y] := by
  convert @midpoint_mem_segment 𝕜 _ _ _ _ _ _ _
  rw [midpoint_sub_add]
#align mem_segment_sub_add mem_segment_sub_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Segment/Variant57903a359725fc34286aae7dfefe084995ef07ddf357fd10b18f192cc528f730.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant57903a359725fc34286aae7dfefe084995ef07ddf357fd10b18f192cc528f730.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1ba737891cea6a9645ebdd562f93d707888b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
