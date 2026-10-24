# actualMertensResidual_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8930d0f-a82d-eb56-a902-6ed4543dd280",
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
  "slug": "actualmertensresidual-scaled-tendsto-zero--6d306ac1727e7a6c3255ea58",
  "source": {
    "blob": "4110c5e72da6bcb2af67a3a2036d4ffc01fd765c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d306ac1727e7a6c3255ea58324cc0ee85807d10c70c33157ad214fedf0099ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8930d0f-a82d-eb56-a902-6ed4543dd280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMertensResidual_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) * mertensResidual A)
      atTop (𝓝 0) := by
  have hscale : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A)) atTop (𝓝 0) := by
    convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℕ) 1 (by norm_num) using 1
    funext A
    rw [Real.rpow_natCast]
    simp
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4110c5e72da6bcb2af67a3a2036d4ffc01fd765c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
