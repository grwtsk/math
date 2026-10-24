# isMIntegralCurveAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78f8184a0309abe82486fa25aa9fba7c86ddae1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7b32127-bae4-26d5-b4b2-2f3ff1b800da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8aa2649-64ad-7b0c-f386-ddf12b4a2164",
  "kind": "lemma",
  "lexical_name": "isMIntegralCurveAt_iff",
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
  "slug": "ismintegralcurveat-iff--23f936f60e942b7545d9ace6",
  "source": {
    "blob": "78f8184a0309abe82486fa25aa9fba7c86ddae1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f936f60e942b7545d9ace6694092a02be1612a2897d35e5080f9b331d480a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8aa2649-64ad-7b0c-f386-ddf12b4a2164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMIntegralCurveAt_iff :
    IsMIntegralCurveAt γ v t₀ ↔ ∃ s ∈ 𝓝 t₀, IsMIntegralCurveOn γ v s := by
  constructor
  · intro h
    rw [IsMIntegralCurveAt, Filter.eventually_iff_exists_mem] at h
    obtain ⟨s, hs, h⟩ := h
    exact ⟨s, hs, fun t ht ↦ (h t ht).hasMFDerivWithinAt⟩
  · rintro ⟨s, hs, h⟩
    rw [IsMIntegralCurveAt, Filter.eventually_iff_exists_mem]
    obtain ⟨s', h1, h2, h3⟩ := mem_nhds_iff.mp hs
    refine ⟨s', h2.mem_nhds h3, ?_⟩
    intro t ht
    apply (h t (h1 ht)).hasMFDerivAt
    rw [mem_nhds_iff]
    exact ⟨s', h1, h2, ht⟩

/-- `γ` is an integral curve for `v` at `t₀` iff `γ` is an integral curve on some interval
containing `t₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f8184a0309abe82486fa25aa9fba7c86ddae1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
