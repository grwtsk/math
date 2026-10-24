# comp_mem_uniformity_sets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b9e4d7c-aaab-2e48-2395-128b48b51961",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c38eb07b-234a-a511-1cc9-29e83c016806",
  "kind": "theorem",
  "lexical_name": "comp_mem_uniformity_sets",
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
  "slug": "comp-mem-uniformity-sets--8f0822b3e4ceaf872c961314",
  "source": {
    "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 316,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f0822b3e4ceaf872c9613141c1d00dd600924b564ee17ecdba1508c3d949f2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c38eb07b-234a-a511-1cc9-29e83c016806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_mem_uniformity_sets {s : SetRel α α} (hs : s ∈ 𝓤 α) : ∃ t ∈ 𝓤 α, t ○ t ⊆ s :=
  (mem_lift'_sets <| monotone_id.relComp monotone_id).mp <| comp_le_uniformity hs

/-- Relation `fun f g ↦ Tendsto (fun x ↦ (f x, g x)) l (𝓤 α)` is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f068a41cafe8605be201dd24b3843bcbba45a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
