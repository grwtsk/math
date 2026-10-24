# NeBot.comap_of_range_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d5b34caefe431e206605ec88e4fb950a56f7dd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e5b4178-3a99-78f9-bc7b-93e4dd46121c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d76fe86-b28a-9b75-321a-bf1f6148d3be",
  "kind": "theorem",
  "lexical_name": "NeBot.comap_of_range_mem",
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
  "slug": "nebot-comap-of-range-mem--fe3869d9a1305a5f089daa60",
  "source": {
    "blob": "1d5b34caefe431e206605ec88e4fb950a56f7dd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3869d9a1305a5f089daa60682a47ed0b23d25d30944aff75950ad806bb5f70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d76fe86-b28a-9b75-321a-bf1f6148d3be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NeBot.comap_of_range_mem {f : Filter β} {m : α → β} (_ : NeBot f) (hm : range m ∈ f) :
    NeBot (comap m f) :=
  comap_neBot_iff_frequently.2 <| Eventually.frequently hm

section Sum
open Sum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5b34caefe431e206605ec88e4fb950a56f7dd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
