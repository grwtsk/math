# isSeqCompact_of_isBounded_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93d4ab1ea8faadc8f0f5c374d77f3ebd87236185",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b2bf461-c4c7-88e9-5f3e-9d70f4f4e8b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd1eac26-1849-7ef0-0fbd-5920e4d5891c",
  "kind": "theorem",
  "lexical_name": "isSeqCompact_of_isBounded_of_isClosed",
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
  "slug": "isseqcompact-of-isbounded-of-isclosed--b22f62c14f55f3762e992434",
  "source": {
    "blob": "93d4ab1ea8faadc8f0f5c374d77f3ebd87236185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22f62c14f55f3762e992434ed743db250073b3c2ccbf6d2004aac3d3246321d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1eac26-1849-7ef0-0fbd-5920e4d5891c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeqCompact_of_isBounded_of_isClosed {s : Set (WeakDual 𝕜 E)}
    (hb : IsBounded s) (hc : IsClosed s) :
    IsSeqCompact s := by
  have b_isCompact' : CompactSpace s :=
    isCompact_iff_compactSpace.mp <| isCompact_of_bounded_of_closed hb hc
  have b_isMetrizable : TopologicalSpace.MetrizableSpace s :=
    metrizable_of_isCompact 𝕜 E s <| isCompact_of_bounded_of_closed hb hc
  have seq_cont_phi : SeqContinuous (fun φ : s ↦ (φ : WeakDual 𝕜 E)) :=
    continuous_iff_seqContinuous.mp continuous_subtype_val
  simpa using IsSeqCompact.range seq_cont_phi

/-- The **Sequential Banach-Alaoglu theorem**: the polar set of a neighborhood `s` of the origin in
a separable normed space `V` is a sequentially compact subset of `WeakDual 𝕜 V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d4ab1ea8faadc8f0f5c374d77f3ebd87236185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
