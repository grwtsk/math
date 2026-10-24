# isClosed_range_toBCF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7c3c23a-3d93-be8b-9fd7-726c02202d05",
  "kind": "theorem",
  "lexical_name": "isClosed_range_toBCF",
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
  "slug": "isclosed-range-tobcf--1a79186b02091aadc4a9d1fc",
  "source": {
    "blob": "4089472c158381f8a1b8843a0e92e9c6eab50f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a79186b02091aadc4a9d1fc7f6a4a40e7a8641d2b64a75562f6aefa881fc4f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7c3c23a-3d93-be8b-9fd7-726c02202d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_range_toBCF : IsClosed (range (toBCF : C₀(α, β) → α →ᵇ β)) := by
  refine isClosed_iff_clusterPt.mpr fun f hf => ?_
  rw [clusterPt_principal_iff] at hf
  have : Tendsto f (cocompact α) (𝓝 0) := by
    refine Metric.tendsto_nhds.mpr fun ε hε => ?_
    obtain ⟨_, hg, g, rfl⟩ := hf (ball f (ε / 2)) (ball_mem_nhds f <| half_pos hε)
    refine (Metric.tendsto_nhds.mp (zero_at_infty g) (ε / 2) (half_pos hε)).mp
      (Eventually.of_forall fun x hx => ?_)
    calc
      dist (f x) 0 ≤ dist (g.toBCF x) (f x) + dist (g x) 0 := dist_triangle_left _ _ _
      _ < dist g.toBCF f + ε / 2 := add_lt_add_of_le_of_lt (dist_coe_le_dist x) hx
      _ ≤ ε := by grw [mem_ball.1 hg, add_halves ε]
  exact ⟨⟨f.toContinuousMap, this⟩, rfl⟩


/-- Continuous functions vanishing at infinity taking values in a complete space form a
complete space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4089472c158381f8a1b8843a0e92e9c6eab50f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
