# exists_ball_forall_le_norm_circleMap_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b44350e2-dd21-b612-ff62-88a2701499de",
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
  "slug": "exists-ball-forall-le-norm-circlemap-sub--98eff7f578bd0e20134b72d4",
  "source": {
    "blob": "2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98eff7f578bd0e20134b72d4e0ba32816ad4fb4f8cd36fb4f72c7e61a80be59a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b44350e2-dd21-b612-ff62-88a2701499de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
