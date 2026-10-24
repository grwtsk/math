# exists_continuous_real_forall_closedBall_subset

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
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f536c146-aa77-e756-2674-1470f4c3c38b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fc731f3-eeb1-54dd-6a25-a41f4d989afe",
  "kind": "theorem",
  "lexical_name": "exists_continuous_real_forall_closedBall_subset",
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
  "slug": "exists-continuous-real-forall-closedball-subset--6e9240c8a24b685712e75674",
  "source": {
    "blob": "0fac796cd9becb3d3d6cdb01721b988d9f69c05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9240c8a24b685712e75674637a6fc3ff9ba6e3727c90c7bfc58686afe677fd",
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

Occurrence: `result:0fc731f3-eeb1-54dd-6a25-a41f4d989afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_real_forall_closedBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedBall x (δ x) ⊆ U i :=
  let ⟨δ, hδ₀, hδ⟩ := exists_continuous_nnreal_forall_closedBall_subset hK hU hKU hfin
  ⟨ContinuousMap.comp ⟨Coe.coe, NNReal.continuous_coe⟩ δ, hδ₀, hδ⟩

end Metric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fac796cd9becb3d3d6cdb01721b988d9f69c05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
