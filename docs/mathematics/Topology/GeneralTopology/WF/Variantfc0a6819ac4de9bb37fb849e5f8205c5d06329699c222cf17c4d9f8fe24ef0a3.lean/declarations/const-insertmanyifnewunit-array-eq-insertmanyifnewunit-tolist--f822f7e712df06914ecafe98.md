# Const.insertManyIfNewUnit_array_eq_insertManyIfNewUnit_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4639749-5203-8bef-cff1-b60a40407e5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15c143bc-0c89-c0bb-214d-2781906b40a2",
  "kind": "theorem",
  "lexical_name": "Const.insertManyIfNewUnit_array_eq_insertManyIfNewUnit_toList",
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
  "slug": "const-insertmanyifnewunit-array-eq-insertmanyifnewunit-tolist--f822f7e712df06914ecafe98",
  "source": {
    "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1166,
    "line": 1163,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f822f7e712df06914ecafe98105080996106e00ce83a1f4651d461702ce270d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c143bc-0c89-c0bb-214d-2781906b40a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1163–1166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Const.insertManyIfNewUnit_array_eq_insertManyIfNewUnit_toList [BEq α] [Hashable α] (m : Raw₀ α fun _ => Unit) (a : Array α) :
    Const.insertManyIfNewUnit m a = Const.insertManyIfNewUnit m a.toList := by
  simp only [insertManyIfNewUnit, bind_pure, ← Array.forIn_toList, forIn_pure_yield_eq_foldl, Array.foldl_toList, Id.run_pure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean#L1163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e589640be1153e2c0deac9541e0bded402d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
