# logb_neg_iff_of_base_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fa49c5f0347a97268dd1205172667adfa498455",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b594c57-4cb0-35c1-d209-a0cb750a3d6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:772a03ba-045b-e27f-1a07-5e58e47ceb4e",
  "kind": "theorem",
  "lexical_name": "logb_neg_iff_of_base_lt_one",
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
  "slug": "logb-neg-iff-of-base-lt-one--259eecad33157d51cf446728",
  "source": {
    "blob": "6fa49c5f0347a97268dd1205172667adfa498455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259eecad33157d51cf44672898e9c2a40aa13419434591a824ef22832c27ca80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:772a03ba-045b-e27f-1a07-5e58e47ceb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logb_neg_iff_of_base_lt_one (h : 0 < x) : logb b x < 0 ↔ 1 < x := by
  rw [← @logb_one b, logb_lt_logb_iff_of_base_lt_one b_pos b_lt_one h zero_lt_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa49c5f0347a97268dd1205172667adfa498455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
