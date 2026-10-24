# exists_continuous_real_forall_closedEBall_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fac796cd9becb3d3d6cdb01721b988d9f69c05a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:492d5482-7885-3d5f-b922-76cb3d530c4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:161f5ae2-0026-7989-0eab-b1ad24a0f5bb",
  "kind": "theorem",
  "lexical_name": "exists_continuous_real_forall_closedEBall_subset",
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
  "slug": "exists-continuous-real-forall-closedeball-subset--5ebb4c54c7d1d58436731a89",
  "source": {
    "blob": "0fac796cd9becb3d3d6cdb01721b988d9f69c05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ebb4c54c7d1d58436731a896c2436fac552bb07f793f82c0032073fb545da50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:161f5ae2-0026-7989-0eab-b1ad24a0f5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_real_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ), (∀ x, 0 < δ x) ∧
      ∀ (i), ∀ x ∈ K i, closedEBall x (ENNReal.ofReal <| δ x) ⊆ U i := by
  simpa only [mem_inter_iff, forall_and, mem_preimage, mem_iInter, @forall_comm ι X] using!
    exists_continuous_forall_mem_convex_of_local_const exists_forall_closedEBall_subset_aux₂
      (exists_forall_closedEBall_subset_aux₁ hK hU hKU hfin)

/-- Let `X` be an extended metric space. Let `K : ι → Set X` be a locally finite family of closed
sets, let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there
exists a positive continuous function `δ : C(X, ℝ≥0)` such that for any `i` and `x ∈ K i`,
we have `Metric.closedEBall x (δ x) ⊆ U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fac796cd9becb3d3d6cdb01721b988d9f69c05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
