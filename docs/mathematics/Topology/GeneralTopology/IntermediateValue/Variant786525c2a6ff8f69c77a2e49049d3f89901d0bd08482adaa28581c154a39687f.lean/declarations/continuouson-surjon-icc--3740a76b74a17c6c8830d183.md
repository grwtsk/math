# ContinuousOn.surjOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec58c516e95199231596874e646f4157df3bc781",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 706,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:933b9c8d-1310-3ba9-f02f-580e16de60a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7563c68d-64a6-0dd2-84fd-be3fccef8b8c",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.surjOn_Icc",
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
  "slug": "continuouson-surjon-icc--3740a76b74a17c6c8830d183",
  "source": {
    "blob": "ec58c516e95199231596874e646f4157df3bc781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 706,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3740a76b74a17c6c8830d1833ab4fdc6321e011513f5d75e1e643427e82634f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7563c68d-64a6-0dd2-84fd-be3fccef8b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.surjOn_Icc {s : Set α} [hs : OrdConnected s] {f : α → δ}
    (hf : ContinuousOn f s) {a b : α} (ha : a ∈ s) (hb : b ∈ s) : SurjOn f s (Icc (f a) (f b)) :=
  hs.isPreconnected.intermediate_value ha hb hf

/-- **Intermediate value theorem**: if `f` is continuous on an order-connected set `s` and `a`,
`b` are two points of this set, then `f` sends `s` to a superset of `[f a, f b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec58c516e95199231596874e646f4157df3bc781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
