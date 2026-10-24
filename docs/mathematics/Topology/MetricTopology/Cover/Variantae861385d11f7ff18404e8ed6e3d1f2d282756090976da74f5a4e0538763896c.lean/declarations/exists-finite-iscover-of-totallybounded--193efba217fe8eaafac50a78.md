# exists_finite_isCover_of_totallyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be44fde9-48b4-d254-579e-c55088a1f3e2",
  "kind": "lemma",
  "lexical_name": "exists_finite_isCover_of_totallyBounded",
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
  "slug": "exists-finite-iscover-of-totallybounded--193efba217fe8eaafac50a78",
  "source": {
    "blob": "d58a3e02907c76b9b983ee95f9031a4a410cd704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193efba217fe8eaafac50a780a0851c3a890ab0668d13b7ce06558c3ff49a11b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be44fde9-48b4-d254-579e-c55088a1f3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_isCover_of_totallyBounded (hε : ε ≠ 0) (hs : TotallyBounded s) :
    ∃ N ⊆ s, N.Finite ∧ IsCover ε s N := by
  rw [EMetric.totallyBounded_iff'] at hs
  obtain ⟨N, hNA, hN_finite, hN⟩ := hs ε (by positivity)
  simp only [isCover_iff_subset_iUnion_closedEBall]
  refine ⟨N, by simpa, by simpa, ?_⟩
  · refine hN.trans fun x hx ↦ ?_
    simp only [Set.mem_iUnion, Metric.mem_eball, exists_prop, Metric.mem_closedEBall] at hx ⊢
    obtain ⟨y, hyN, hy⟩ := hx
    exact ⟨y, hyN, hy.le⟩

/-- A relatively compact set admits a finite cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58a3e02907c76b9b983ee95f9031a4a410cd704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
