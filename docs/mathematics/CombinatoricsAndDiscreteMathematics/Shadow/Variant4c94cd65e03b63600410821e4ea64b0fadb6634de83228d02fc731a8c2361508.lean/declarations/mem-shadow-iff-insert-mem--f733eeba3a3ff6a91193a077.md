# mem_shadow_iff_insert_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7739d157ae3d7453ba03ed395f3c8e8be1e69cb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e005f92-9189-7930-e4f5-5557f383d194",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cfd6c0f-5f35-c524-bc5e-440bade43df3",
  "kind": "lemma",
  "lexical_name": "mem_shadow_iff_insert_mem",
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
  "slug": "mem-shadow-iff-insert-mem--f733eeba3a3ff6a91193a077",
  "source": {
    "blob": "7739d157ae3d7453ba03ed395f3c8e8be1e69cb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f733eeba3a3ff6a91193a077dc714a2a1c381df4d91f5f5e1b3c86b242bc44cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cfd6c0f-5f35-c524-bc5e-440bade43df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_shadow_iff_insert_mem : t ∈ ∂ 𝒜 ↔ ∃ a ∉ t, insert a t ∈ 𝒜 := by
  simp_rw [mem_shadow_iff_exists_sdiff, ← covBy_iff_card_sdiff_eq_one, covBy_iff_exists_insert]
  aesop

/-- `s ∈ ∂ 𝒜` iff `s` is exactly one element less than something from `𝒜`.

See also `Finset.mem_shadow_iff_exists_sdiff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7739d157ae3d7453ba03ed395f3c8e8be1e69cb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
