# closed_range_toBcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b3b022-0d3a-c44e-01e5-4fdabcc4e1a3",
  "kind": "theorem",
  "lexical_name": "closed_range_toBcf",
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
  "slug": "closed-range-tobcf--07d6afdfc59631e69f134e13",
  "source": {
    "blob": "6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07d6afdfc59631e69f134e133b7ec88956de4fac62951672d6e213d84ae0830f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b3b022-0d3a-c44e-01e5-4fdabcc4e1a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_range_toBcf : IsClosed (range (toBcf : C₀(α, β) → α →ᵇ β)) := by
  refine' isClosed_iff_clusterPt.mpr fun f hf => _
  rw [clusterPt_principal_iff] at hf
  have : Tendsto f (cocompact α) (𝓝 0) := by
    refine' Metric.tendsto_nhds.mpr fun ε hε => _
    obtain ⟨_, hg, g, rfl⟩ := hf (ball f (ε / 2)) (ball_mem_nhds f <| half_pos hε)
    refine' (Metric.tendsto_nhds.mp (zero_at_infty g) (ε / 2) (half_pos hε)).mp
      (eventually_of_forall fun x hx => _)
    calc
      dist (f x) 0 ≤ dist (g.toBcf x) (f x) + dist (g x) 0 := dist_triangle_left _ _ _
      _ < dist g.toBcf f + ε / 2 := (add_lt_add_of_le_of_lt (dist_coe_le_dist x) hx)
      _ < ε := by simpa [add_halves ε] using add_lt_add_right (mem_ball.1 hg) (ε / 2)
  exact ⟨⟨f.toContinuousMap, this⟩, rfl⟩
#align zero_at_infty_continuous_map.closed_range_to_bcf ZeroAtInftyContinuousMap.closed_range_toBcf

/-- Continuous functions vanishing at infinity taking values in a complete space form a
complete space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
