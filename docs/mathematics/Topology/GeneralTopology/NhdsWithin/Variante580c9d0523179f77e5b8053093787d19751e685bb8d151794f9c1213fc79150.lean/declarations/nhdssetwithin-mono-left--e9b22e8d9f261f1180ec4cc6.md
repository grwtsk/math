# nhdsSetWithin_mono_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc09a0ae9903f2419cc4f63415f10d94dafea47e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9685317-3cb7-8db7-a125-5e434b76fcb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27e1cb1e-23f2-150d-410b-752571bcb952",
  "kind": "lemma",
  "lexical_name": "nhdsSetWithin_mono_left",
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
  "slug": "nhdssetwithin-mono-left--e9b22e8d9f261f1180ec4cc6",
  "source": {
    "blob": "bc09a0ae9903f2419cc4f63415f10d94dafea47e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 551,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b22e8d9f261f1180ec4cc6d5bb337f489f588acb12933b897f24fc8c593ace",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27e1cb1e-23f2-150d-410b-752571bcb952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nhdsSetWithin_mono_left {s s' t : Set α} (h : s ⊆ s') : 𝓝ˢ[t] s ≤ 𝓝ˢ[t] s' :=
  inf_le_inf_right _ <| nhdsSet_mono h

@[gcongr, mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc09a0ae9903f2419cc4f63415f10d94dafea47e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
