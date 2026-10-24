# actualXiCumulativeLaplace_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9863472f-49cb-47ca-5209-8005704354b0",
  "kind": "theorem",
  "lexical_name": "actualXiCumulativeLaplace_tendsto_zero",
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
  "slug": "actualxicumulativelaplace-tendsto-zero--3d9899669bdea1275ef0a9fa",
  "source": {
    "blob": "0bc5e533f5a1ff977155d7bd719a850701ff14cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d9899669bdea1275ef0a9faea6bb6975287091b2dbc0949b237b1403517f61d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9863472f-49cb-47ca-5209-8005704354b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiCumulativeLaplace_tendsto_zero {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    Tendsto (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun t : ℝ => M * t * Real.exp (-σ * t)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Real.rpow_one, mul_assoc, mul_zero] using
      (Real.tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 1 σ hσ).const_mul M
  apply squeeze_zero' _ _ he
  · filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    exact mul_nonneg (actualXiAbsoluteCumulative_nonneg ht) (Real.exp_pos _).le
  · filter_upwards [eventually_ge_atTop T₀] with t ht
    exact mul_le_mul_of_nonneg_right (haverage t ht) (Real.exp_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc5e533f5a1ff977155d7bd719a850701ff14cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
