# liftCover_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74549297-ecd8-2626-582a-d1f2c1e452a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:298bd2de-310a-d131-f6eb-e1b0a5ef29d8",
  "kind": "theorem",
  "lexical_name": "liftCover_coe",
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
  "slug": "liftcover-coe--c71a2e37e8a4bd67bc479531",
  "source": {
    "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c71a2e37e8a4bd67bc479531647e61368e855395a89b7f9af17c7338c2bda9cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298bd2de-310a-d131-f6eb-e1b0a5ef29d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftCover_coe {i : ι} (x : S i) : liftCover S φ hφ hS x = φ i x := by
  rw [liftCover, coe_mk, Set.liftCover_coe _]
#align continuous_map.lift_cover_coe ContinuousMap.liftCover_coe

-- @[simp] -- Porting note: the simpNF linter complained
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5fba1b99da404407efb85573bf4a3f2eafa102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
