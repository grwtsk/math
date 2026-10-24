# actualResidual_sub_centeredPhaseBulk_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d36ed0-a2d9-b366-57f7-cf1c18d3f836",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_centeredPhaseBulk_tendsto_zero",
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
  "slug": "actualresidual-sub-centeredphasebulk-tendsto-zero--2c01ab980cbd350d839581d8",
  "source": {
    "blob": "5a19f59d450a7636301e11bf08a38c7d10b6846d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c01ab980cbd350d839581d8a93cff5962fc9f067b558ef957f00041a3191f0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d36ed0-a2d9-b366-57f7-cf1c18d3f836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_centeredPhaseBulk_tendsto_zero (c d : ℝ)
    (hd : 1 < d) (hdc : d < c) :
    Tendsto (fun A : ℝ => mertensResidual A -
      actualCenteredPrimePhaseBulk A c (actualBumpMovingHeight A c)) atTop (𝓝 0) := by
  have hp : Tendsto (fun A : ℝ => 2 * (c - d) * A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < 2 * (c - d))
  have he : Tendsto (fun A : ℝ => Real.exp (-2 * (c - d) * A)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hp using 1
    funext A
    congr 1
    ring
  have hq : Tendsto (fun A : ℝ => ((2 * c - 1) / 5) * A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < (2 * c - 1) / 5)
  have hf : Tendsto (fun A : ℝ => Real.exp (-((2 * c - 1) * A / 5))) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hq using 1
    funext A
    congr 1
    ring
  have hn : Tendsto (fun A : ℝ => actualBumpMovingTailConstant c +
      actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) +
      2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)))
      atTop (𝓝 (actualBumpMovingTailConstant c)) := by
    simpa using (tendsto_const_nhds.add
      (he.const_mul (actualClosedPrimeHeadErrorConstant c d))).add
        (hf.const_mul (2 * actualEulerLogBoundaryConstant c))
  apply squeeze_zero_norm' _ (hn.div_atTop (tendsto_pow_atTop (by norm_num : (9 : ℕ) ≠ 0)))
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs] using actualResidual_sub_centeredPhaseBulk_abs_le A c d hA hd hdc

end FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a19f59d450a7636301e11bf08a38c7d10b6846d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
