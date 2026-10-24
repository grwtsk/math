# natLog_le_logb

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
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d420004-6a28-a502-7c09-241af02ed0a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de21f510-54f9-6a40-1402-4649cc445f95",
  "kind": "lemma",
  "lexical_name": "natLog_le_logb",
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
  "slug": "natlog-le-logb--fa30a168ebf083e58a1ef7a1",
  "source": {
    "blob": "6fa49c5f0347a97268dd1205172667adfa498455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 412,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa30a168ebf083e58a1ef7a1a4f16ca91f4c5bbbe407523af30816220b1cb659",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de21f510-54f9-6a40-1402-4649cc445f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natLog_le_logb (a b : ℕ) : Nat.log b a ≤ Real.logb b a := by
  apply le_trans _ (Int.floor_le ((b : ℝ).logb a))
  rw [Real.floor_logb_natCast (Nat.cast_nonneg a), Int.log_natCast, Int.cast_natCast]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant869ca5ed11cfd33920d7ec7e1c4cfee3a96e8f3f2f2ad04644bb9c6d74524d10.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa49c5f0347a97268dd1205172667adfa498455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
