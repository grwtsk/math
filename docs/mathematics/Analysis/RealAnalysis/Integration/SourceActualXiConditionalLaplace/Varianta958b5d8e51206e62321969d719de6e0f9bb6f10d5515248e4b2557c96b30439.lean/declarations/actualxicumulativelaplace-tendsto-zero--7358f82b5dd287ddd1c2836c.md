# actualXiCumulativeLaplace_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:291e8b58-e173-2e28-e5eb-89829cc04172",
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
  "slug": "actualxicumulativelaplace-tendsto-zero--7358f82b5dd287ddd1c2836c",
  "source": {
    "blob": "a92e38d2073b79fcc0d7c13611a7516f172009ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7358f82b5dd287ddd1c2836cc96b28271eaace4bee2ba774944fa3698d72c739",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291e8b58-e173-2e28-e5eb-89829cc04172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiCumulativeLaplace_tendsto_zero {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    Tendsto (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun t : ℝ => M * t * Real.exp (-σ * t)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Real.rpow_one, mul_assoc, mul_zero] using
      (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 1 σ hσ).const_mul M
  apply squeeze_zero' _ _ he
  · filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    exact mul_nonneg (actualXiAbsoluteCumulative_nonneg ht) (Real.exp_pos _).le
  · filter_upwards [eventually_ge_atTop T₀] with t ht
    exact mul_le_mul_of_nonneg_right (haverage t ht) (Real.exp_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a92e38d2073b79fcc0d7c13611a7516f172009ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
