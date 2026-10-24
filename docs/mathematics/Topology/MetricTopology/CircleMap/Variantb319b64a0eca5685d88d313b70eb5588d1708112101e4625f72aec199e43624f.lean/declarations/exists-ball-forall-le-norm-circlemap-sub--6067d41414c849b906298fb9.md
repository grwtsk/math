# exists_ball_forall_le_norm_circleMap_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7cc248196ba513afd1fc7f3190effa30b3f8a06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f48be05-e6ee-85da-81cb-4f1490b4f9a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d72323f6-958e-1068-3dff-1f252595d008",
  "kind": "theorem",
  "lexical_name": "exists_ball_forall_le_norm_circleMap_sub",
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
  "slug": "exists-ball-forall-le-norm-circlemap-sub--6067d41414c849b906298fb9",
  "source": {
    "blob": "b7cc248196ba513afd1fc7f3190effa30b3f8a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6067d41414c849b906298fb97d86f17b84ee67aaa6e56b8c8618a7db2cd2d030",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d72323f6-958e-1068-3dff-1f252595d008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ball_forall_le_norm_circleMap_sub {R : ℝ} {c w : ℂ} (hw : w ∉ sphere c |R|) :
    ∃ d > 0, ∀ x ∈ ball w d, ∀ θ : ℝ, d ≤ ‖circleMap c R θ - x‖ := by
  have hd₀ : 0 < abs (dist w c - |R|) :=
    abs_pos.2 (sub_ne_zero.2 fun h ↦ hw (mem_sphere.2 h))
  refine ⟨abs (dist w c - |R|) / 2, by positivity, fun x hx θ ↦ ?_⟩
  rw [mem_ball] at hx
  have h₁ : dist (circleMap c R θ) c = |R| := mem_sphere.1 (circleMap_mem_sphere' c R θ)
  have h₂ : abs (dist w c - |R|) ≤ dist (circleMap c R θ) w := by
    calc abs (dist w c - |R|) = |dist (circleMap c R θ) c - dist w c| := by rw [h₁, abs_sub_comm]
      _ ≤ dist (circleMap c R θ) w := abs_dist_sub_le _ _ _
  have h₃ := dist_triangle (circleMap c R θ) x w
  rw [← dist_eq_norm]
  linarith

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7cc248196ba513afd1fc7f3190effa30b3f8a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
