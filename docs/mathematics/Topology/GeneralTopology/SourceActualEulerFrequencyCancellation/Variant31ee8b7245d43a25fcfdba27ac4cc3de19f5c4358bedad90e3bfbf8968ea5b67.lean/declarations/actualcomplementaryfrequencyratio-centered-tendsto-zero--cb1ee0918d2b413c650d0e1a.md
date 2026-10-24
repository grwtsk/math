# actualComplementaryFrequencyRatio_centered_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bda4163-7603-3c4f-329c-52211906be0f",
  "kind": "theorem",
  "lexical_name": "actualComplementaryFrequencyRatio_centered_tendsto_zero",
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
  "slug": "actualcomplementaryfrequencyratio-centered-tendsto-zero--cb1ee0918d2b413c650d0e1a",
  "source": {
    "blob": "f7d02e97b38e3fdd2732712ec9a5a776fdba01ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb1ee0918d2b413c650d0e1ad07acc0be208e77d8144318dba233a0fa30458f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bda4163-7603-3c4f-329c-52211906be0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementaryFrequencyRatio_centered_tendsto_zero :
    Tendsto (fun A : ℝ => actualComplementaryFrequencyMass A /
      actualCentralFrequencyMass A + 1) atTop (𝓝 0) := by
  have hn1 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
  have hn2 := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1).comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have ht : Tendsto (fun A : ℝ =>
      (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant) *
        A * Real.exp (-A) +
      ((actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
        actualCentralFrequencyConstant) * A * Real.exp (-2 * A)) atTop (𝓝 0) := by
    have hh := (hn1.const_mul
      (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant)).add
      (hn2.const_mul ((actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
        actualCentralFrequencyConstant / 2))
    simpa only [pow_one, mul_zero, add_zero] using hh.congr (fun A => by dsimp; ring)
  apply squeeze_zero_norm' _ ht
  filter_upwards [actualComplementaryFrequencyRatio_eventually_abs_le] with A hA
  simpa only [Real.norm_eq_abs] using hA

/-- The complete signed frequency complement divided by the central mass tends to minus one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d02e97b38e3fdd2732712ec9a5a776fdba01ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
