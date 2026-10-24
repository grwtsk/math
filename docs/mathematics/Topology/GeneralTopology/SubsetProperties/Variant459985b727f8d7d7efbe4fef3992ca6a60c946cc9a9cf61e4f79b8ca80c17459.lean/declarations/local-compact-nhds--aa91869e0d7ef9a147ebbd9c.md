# local_compact_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1095,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f464b37-ee6b-3e37-6be1-462ffce4cb8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f069f32-ed62-00b9-0231-57a79b5922c2",
  "kind": "theorem",
  "lexical_name": "local_compact_nhds",
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
  "slug": "local-compact-nhds--aa91869e0d7ef9a147ebbd9c",
  "source": {
    "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1100,
    "line": 1095,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa91869e0d7ef9a147ebbd9c55f0042dbb5aa19fd07e9c8adb079b2cbde0429d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f069f32-ed62-00b9-0231-57a79b5922c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_compact_nhds [LocallyCompactSpace α] {x : α} {n : Set α} (h : n ∈ 𝓝 x) :
    ∃ s ∈ 𝓝 x, s ⊆ n ∧ IsCompact s :=
  LocallyCompactSpace.local_compact_nhds _ _ h
#align local_compact_nhds local_compact_nhds

/-- In a locally compact space, the filters `𝓝 x` and `cocompact α` are disjoint for all `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52814ff071f39927c50c6b77ea81c348738f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
