# hausdorffEDist_triangle

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
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a90db35-396b-776d-c054-1c9137d2a668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95b906bd-e385-ecb9-f695-06653e3d4a1a",
  "kind": "theorem",
  "lexical_name": "hausdorffEDist_triangle",
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
  "slug": "hausdorffedist-triangle--913bf1cef2224a20774578a3",
  "source": {
    "blob": "89edc72a5118131c9c67c870bc66510d8f158e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 346,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:913bf1cef2224a20774578a3868c6d6b90f7c19419128f12b7f67c7b47858b4e",
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

Occurrence: `result:95b906bd-e385-ecb9-f695-06653e3d4a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffEDist_triangle : hausdorffEDist s u ≤ hausdorffEDist s t + hausdorffEDist t u := by
  rw [hausdorffEDist_def]
  simp only [sup_le_iff, iSup_le_iff]
  constructor
  · change ∀ x ∈ s, infEDist x u ≤ hausdorffEDist s t + hausdorffEDist t u
    exact fun x xs =>
      calc
        infEDist x u ≤ infEDist x t + hausdorffEDist t u :=
          infEDist_le_infEDist_add_hausdorffEDist
        _ ≤ hausdorffEDist s t + hausdorffEDist t u := by grw [infEDist_le_hausdorffEDist_of_mem xs]
  · change ∀ x ∈ u, infEDist x s ≤ hausdorffEDist s t + hausdorffEDist t u
    exact fun x xu =>
      calc
        infEDist x s ≤ infEDist x t + hausdorffEDist t s :=
          infEDist_le_infEDist_add_hausdorffEDist
        _ ≤ hausdorffEDist u t + hausdorffEDist t s := by grw [infEDist_le_hausdorffEDist_of_mem xu]
        _ = hausdorffEDist s t + hausdorffEDist t u := by simp [hausdorffEDist_comm, add_comm]

/-- Two sets are at zero Hausdorff edistance if and only if they have the same closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89edc72a5118131c9c67c870bc66510d8f158e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
