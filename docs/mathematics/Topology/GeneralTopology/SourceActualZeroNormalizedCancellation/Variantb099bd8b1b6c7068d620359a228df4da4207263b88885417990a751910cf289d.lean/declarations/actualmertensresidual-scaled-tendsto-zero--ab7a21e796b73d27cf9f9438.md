# actualMertensResidual_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c0a6038-d8f7-6f4c-35d0-bcd75241d9e2",
  "kind": "theorem",
  "lexical_name": "actualMertensResidual_scaled_tendsto_zero",
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
  "slug": "actualmertensresidual-scaled-tendsto-zero--ab7a21e796b73d27cf9f9438",
  "source": {
    "blob": "ffe97b0854fc0f49e4fbf522d9e0813a541d1005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variantb099bd8b1b6c7068d620359a228df4da4207263b88885417990a751910cf289d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7a21e796b73d27cf9f9438e6c5e9cf734db47bb2bd6e6d890fdef2f0d19241",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variantb099bd8b1b6c7068d620359a228df4da4207263b88885417990a751910cf289d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c0a6038-d8f7-6f4c-35d0-bcd75241d9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMertensResidual_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) * mertensResidual A)
      atTop (𝓝 0) := by
  have hscale : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A)) atTop (𝓝 0) := by
    simpa only [← Nat.cast_ofNat, Real.rpow_natCast, neg_one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 9 1 (by norm_num)
  have harch := hscale.mul actual_archimedean_tendsto_zero_frequency
  have hq := (Complex.continuous_re.tendsto 0).comp
    actualSourceQuadraticValue_scaled_tendsto_zero
  have hqreal : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) *
      sourceQuadraticValue explicitSecondDerivative A) atTop (𝓝 0) := by
    simpa only [Function.comp_def, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re] using hq
  have hh : Tendsto (fun A : ℝ => (A ^ 9 * Real.exp (-A) *
      archimedeanValue explicitSecondDerivative A - A ^ 9 * Real.exp (-A) *
        sourceQuadraticValue explicitSecondDerivative A) / 2) atTop (𝓝 0) := by
    simpa only [zero_mul, sub_zero, zero_div] using (harch.sub hqreal).div_const 2
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [sourceQuadraticValue,
    EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroNormalizedCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variantb099bd8b1b6c7068d620359a228df4da4207263b88885417990a751910cf289d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variantb099bd8b1b6c7068d620359a228df4da4207263b88885417990a751910cf289d.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe97b0854fc0f49e4fbf522d9e0813a541d1005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
