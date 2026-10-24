# absolute_laplace_finite_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e0305ab-a037-bd44-feb3-cd7600bfa106",
  "kind": "theorem",
  "lexical_name": "absolute_laplace_finite_tendsto",
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
  "slug": "absolute-laplace-finite-tendsto--9a6e47b6a2b897818e63350f",
  "source": {
    "blob": "4dcc4afda588d9013f4a9a47f7da3329dcd4c238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6e47b6a2b897818e63350f285ff09e63ffbea4e63fa781486e29d0153eaec8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e0305ab-a037-bd44-feb3-cd7600bfa106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem absolute_laplace_finite_tendsto {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    Tendsto (fun b => ∫ t in Real.log 7..b,
      ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) atTop
        (𝓝 (σ * ∫ t in Ioi (Real.log 7),
          actualXiAbsoluteCumulative t * Real.exp (-σ * t))) := by
  have hi := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiCumulativeLaplace_integrableOn hM hT₀ hσ haverage) tendsto_id
  have hh := (actualXiCumulativeLaplace_tendsto_zero hM hT₀ hσ haverage).add (hi.const_mul σ)
  simp only [zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
  simp only [id_eq, Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
  rw [actualXiLaplace_finite_abel hb σ, actualXiAbsoluteCumulative_at_lower, zero_mul, sub_zero]

/-- Every positive real Laplace parameter has actual source L1 under the future mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dcc4afda588d9013f4a9a47f7da3329dcd4c238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
