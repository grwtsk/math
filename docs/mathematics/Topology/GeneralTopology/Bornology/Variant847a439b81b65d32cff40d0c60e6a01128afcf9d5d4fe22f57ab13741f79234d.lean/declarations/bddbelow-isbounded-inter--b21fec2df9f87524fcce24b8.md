# BddBelow.isBounded_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0789f5caa20de55d3f19f778095d69631e4cd8d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9258804e-8577-ce1b-fa04-0a14744d1fb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2dd5ce7-f301-46e5-dc78-ec9d92bbe44b",
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
  "slug": "bddbelow-isbounded-inter--b21fec2df9f87524fcce24b8",
  "source": {
    "blob": "0789f5caa20de55d3f19f778095d69631e4cd8d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21fec2df9f87524fcce24b8e4e498b83d746fcb5e8eefb883f55a64e4a08890",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2dd5ce7-f301-46e5-dc78-ec9d92bbe44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BddBelow.isBounded_inter (hs : BddBelow s) (ht : BddAbove t) : IsBounded (s ∩ t) :=
  (hs.mono inter_subset_left).isBounded <| ht.mono inter_subset_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0789f5caa20de55d3f19f778095d69631e4cd8d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
