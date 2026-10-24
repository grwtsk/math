# perfect_iff_eq_derivedSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c63ceacb3acdc0d79f7efaad41a350f4fc5d4d8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b26e029f-6206-fb31-4813-c3a7f3076be7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c569db2-81ab-48a7-d308-27474d9b232f",
  "kind": "lemma",
  "lexical_name": "perfect_iff_eq_derivedSet",
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
  "slug": "perfect-iff-eq-derivedset--b7b49c86f190fdb7e21e8363",
  "source": {
    "blob": "c63ceacb3acdc0d79f7efaad41a350f4fc5d4d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b49c86f190fdb7e21e836338a478abfdf9dd034aa11157dd80b2926d5e826e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c569db2-81ab-48a7-d308-27474d9b232f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma perfect_iff_eq_derivedSet {U : Set X} : Perfect U ↔ U = derivedSet U := by
  rw [perfect_def, isClosed_iff_derivedSet_subset, preperfect_iff_subset_derivedSet,
    ← subset_antisymm_iff, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c63ceacb3acdc0d79f7efaad41a350f4fc5d4d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
