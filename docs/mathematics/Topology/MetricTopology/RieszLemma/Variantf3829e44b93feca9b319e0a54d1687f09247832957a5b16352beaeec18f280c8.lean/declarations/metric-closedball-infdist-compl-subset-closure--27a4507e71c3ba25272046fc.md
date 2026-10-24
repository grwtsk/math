# Metric.closedBall_infDist_compl_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fc30104864f2136bd22911ddbb0e41fa8153eaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d10a953d-b113-0bbc-9602-25ff43417c85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1783e81-0ba8-9c1a-4a90-78d90e284324",
  "kind": "theorem",
  "lexical_name": "Metric.closedBall_infDist_compl_subset_closure",
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
  "slug": "metric-closedball-infdist-compl-subset-closure--27a4507e71c3ba25272046fc",
  "source": {
    "blob": "1fc30104864f2136bd22911ddbb0e41fa8153eaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a4507e71c3ba25272046fcb5e510cf3a7a3c41d8f1ca0b587cee8b81431cb1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1783e81-0ba8-9c1a-4a90-78d90e284324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.closedBall_infDist_compl_subset_closure {x : F} {s : Set F} (hx : x ∈ s) :
    closedBall x (infDist x sᶜ) ⊆ closure s := by
  rcases eq_or_ne (infDist x sᶜ) 0 with h₀ | h₀
  · rw [h₀, closedBall_zero']
    exact closure_mono (singleton_subset_iff.2 hx)
  · rw [← closure_ball x h₀]
    exact closure_mono ball_infDist_compl_subset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc30104864f2136bd22911ddbb0e41fa8153eaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
