# actualTiltBandState_moving_norm_sq_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8cd0046-234f-fd10-6cad-1d0efd8f636d",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_moving_norm_sq_tendsto_atTop",
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
  "slug": "actualtiltbandstate-moving-norm-sq-tendsto-attop--8392e2658331623f5a22ad36",
  "source": {
    "blob": "52f12ef135c0cb10ecaf427a08a45b15fbb78c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variante89aa2cac7b10e898b1b054ca30dec8ed738de8d975502959a315ce106fcd37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8392e2658331623f5a22ad36e613d5d0e8d426b2e6e6f2d9d955ff3dfcf0339b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variante89aa2cac7b10e898b1b054ca30dec8ed738de8d975502959a315ce106fcd37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8cd0046-234f-fd10-6cad-1d0efd8f636d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_moving_norm_sq_tendsto_atTop :
    Tendsto (fun A : ℝ => ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2)
      atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hk : 0 < actualCentralFrequencyConstant / actualRightLineMass (3 / 2) :=
    div_pos actualCentralFrequencyConstant_pos right_mass_pos
  have hh : Tendsto (fun A : ℝ =>
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10) atTop atTop := by
    convert ht.const_mul_atTop hk using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualTiltBandState_moving_norm_sq_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variante89aa2cac7b10e898b1b054ca30dec8ed738de8d975502959a315ce106fcd37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variante89aa2cac7b10e898b1b054ca30dec8ed738de8d975502959a315ce106fcd37c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52f12ef135c0cb10ecaf427a08a45b15fbb78c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
