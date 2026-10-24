# ghDist_eq_hausdorffDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fbf9527-c6c4-0de4-a156-d9656e86fa77",
  "kind": "theorem",
  "lexical_name": "ghDist_eq_hausdorffDist",
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
  "slug": "ghdist-eq-hausdorffdist--f66ac5f93782a975905fe982",
  "source": {
    "blob": "b37c224e2b9f34b621e69661c2dab552b520bc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 407,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66ac5f93782a975905fe982f1494e04c02fb01709cad6d1fc8b951b72e6983e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fbf9527-c6c4-0de4-a156-d9656e86fa77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ghDist_eq_hausdorffDist (X : Type u) [MetricSpace X] [CompactSpace X] [Nonempty X]
    (Y : Type v) [MetricSpace Y] [CompactSpace Y] [Nonempty Y] :
    ∃ Φ : X → ℓ_infty_ℝ,
      ∃ Ψ : Y → ℓ_infty_ℝ,
        Isometry Φ ∧ Isometry Ψ ∧ ghDist X Y = hausdorffDist (range Φ) (range Ψ) := by
  let F := kuratowskiEmbedding (OptimalGHCoupling X Y)
  let Φ := F ∘ optimalGHInjl X Y
  let Ψ := F ∘ optimalGHInjr X Y
  refine' ⟨Φ, Ψ, _, _, _⟩
  · exact (kuratowskiEmbedding.isometry _).comp (isometry_optimalGHInjl X Y)
  · exact (kuratowskiEmbedding.isometry _).comp (isometry_optimalGHInjr X Y)
  · rw [← image_univ, ← image_univ, image_comp F, image_univ, image_comp F (optimalGHInjr X Y),
      image_univ, ← hausdorffDist_optimal]
    exact (hausdorffDist_image (kuratowskiEmbedding.isometry _)).symm
#align Gromov_Hausdorff.GH_dist_eq_Hausdorff_dist GromovHausdorff.ghDist_eq_hausdorffDist

set_option maxHeartbeats 300000 in
/-- The Gromov-Hausdorff distance defines a genuine distance on the Gromov-Hausdorff space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37c224e2b9f34b621e69661c2dab552b520bc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
