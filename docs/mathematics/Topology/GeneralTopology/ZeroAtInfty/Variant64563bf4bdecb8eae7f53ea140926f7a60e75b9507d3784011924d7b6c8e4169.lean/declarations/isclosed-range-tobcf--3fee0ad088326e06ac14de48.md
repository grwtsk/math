# isClosed_range_toBCF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f79b9219f4bdf77ba4f929d6bab7b66539c77b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac9d89a8-a590-d10e-0c94-029288a7e558",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ed2c9f5-bc65-161e-388b-31c9600b5357",
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
  "slug": "isclosed-range-tobcf--3fee0ad088326e06ac14de48",
  "source": {
    "blob": "6f79b9219f4bdf77ba4f929d6bab7b66539c77b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fee0ad088326e06ac14de48d9aade429de786df52a3e1b47c75b777f3899ab7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ed2c9f5-bc65-161e-388b-31c9600b5357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–444.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f79b9219f4bdf77ba4f929d6bab7b66539c77b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
