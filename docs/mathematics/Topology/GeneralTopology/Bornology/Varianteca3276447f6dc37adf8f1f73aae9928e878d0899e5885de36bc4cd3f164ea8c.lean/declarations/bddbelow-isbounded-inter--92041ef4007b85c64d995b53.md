# BddBelow.isBounded_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93afbf73aa4aeeb1f598a47e6b90515c427db624",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/eca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98a1c55c-6601-719f-8ebb-28427743d629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73c87c27-bb10-3904-3cdf-4965806b536f",
  "kind": "lemma",
  "lexical_name": "BddBelow.isBounded_inter",
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
  "slug": "bddbelow-isbounded-inter--92041ef4007b85c64d995b53",
  "source": {
    "blob": "93afbf73aa4aeeb1f598a47e6b90515c427db624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92041ef4007b85c64d995b53c65dce3d14fb48c278859f9e5816a1549eef1c46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c87c27-bb10-3904-3cdf-4965806b536f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BddBelow.isBounded_inter (hs : BddBelow s) (ht : BddAbove t) : IsBounded (s ∩ t) :=
  (hs.mono inter_subset_left).isBounded <| ht.mono inter_subset_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93afbf73aa4aeeb1f598a47e6b90515c427db624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
