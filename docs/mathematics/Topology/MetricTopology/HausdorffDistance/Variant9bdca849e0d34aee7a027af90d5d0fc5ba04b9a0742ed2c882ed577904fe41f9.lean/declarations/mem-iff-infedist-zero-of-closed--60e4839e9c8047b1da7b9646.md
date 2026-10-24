# mem_iff_infEDist_zero_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89edc72a5118131c9c67c870bc66510d8f158e9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d911731-d8ff-c599-8655-f1b08581d61d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7df29ee7-e98f-9561-6d0e-b2f55a0f3651",
  "kind": "theorem",
  "lexical_name": "mem_iff_infEDist_zero_of_closed",
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
  "slug": "mem-iff-infedist-zero-of-closed--60e4839e9c8047b1da7b9646",
  "source": {
    "blob": "89edc72a5118131c9c67c870bc66510d8f158e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 170,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60e4839e9c8047b1da7b964619d591baf56b839adab1e23978a4906c61a37ea9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df29ee7-e98f-9561-6d0e-b2f55a0f3651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iff_infEDist_zero_of_closed (h : IsClosed s) : x ∈ s ↔ infEDist x s = 0 := by
  rw [← mem_closure_iff_infEDist_zero, h.closure_eq]

/-- The infimum edistance of a point to a set is positive if and only if the point is not in the
closure of the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89edc72a5118131c9c67c870bc66510d8f158e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
