# image_coev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:544e4796-2b66-2d37-25b8-c4cd16a5c4ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7951ee9f-5fa5-8eb9-4fff-89e7d376fd99",
  "kind": "theorem",
  "lexical_name": "image_coev",
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
  "slug": "image-coev--e5beb1d36dbf23ad429b9e8d",
  "source": {
    "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5beb1d36dbf23ad429b9e8d2ec8ee6472f3ab206e3eeaa325ec4b8a4676a040",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7951ee9f-5fa5-8eb9-4fff-89e7d376fd99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_coev {y : β} (s : Set α) : coev α β y '' s = ({y} : Set β) ×ˢ s := by
  aesop
#align continuous_map.image_coev ContinuousMap.image_coev

-- The coevaluation map β → C(α, β × α) is continuous (always).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15503c9e88d9b8ae31b570bd697c92899c165c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
