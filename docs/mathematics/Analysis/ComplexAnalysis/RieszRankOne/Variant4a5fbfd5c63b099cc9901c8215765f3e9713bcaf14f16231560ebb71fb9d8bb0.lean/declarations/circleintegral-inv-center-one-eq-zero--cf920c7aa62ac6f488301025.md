# circleIntegral_inv_center_one_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12614421-fbf3-2a0a-c8b1-a694b2b98b7d",
  "kind": "theorem",
  "lexical_name": "circleIntegral_inv_center_one_eq_zero",
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
  "slug": "circleintegral-inv-center-one-eq-zero--cf920c7aa62ac6f488301025",
  "source": {
    "blob": "a336dd5980d3457802f4e4ad090ac48dccbe38f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf920c7aa62ac6f488301025ae479cc27a14c26b3fb2c0d5bcf411b47d945781",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12614421-fbf3-2a0a-c8b1-a694b2b98b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_inv_center_one_eq_zero {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    (∮ z in C((1 : ℂ), r), z⁻¹) = 0 := by
  have hnz : ∀ z ∈ Metric.closedBall (1 : ℂ) r, z ≠ 0 := by
    intro z hz hz0
    subst z
    have h1r : (1 : ℝ) ≤ r := by simpa using hz
    exact (not_le_of_gt hr1) h1r
  have hc : ContinuousOn (fun z : ℂ ↦ z⁻¹) (Metric.closedBall (1 : ℂ) r) :=
    continuousOn_id.inv₀ hnz
  have hd : ∀ z ∈ Metric.ball (1 : ℂ) r \ (∅ : Set ℂ),
      DifferentiableAt ℂ (fun z : ℂ ↦ z⁻¹) z := by
    intro z hz
    exact differentiableAt_inv (hnz z (Metric.ball_subset_closedBall hz.1))
  exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
    hr.le Set.countable_empty hc hd

@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a336dd5980d3457802f4e4ad090ac48dccbe38f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
