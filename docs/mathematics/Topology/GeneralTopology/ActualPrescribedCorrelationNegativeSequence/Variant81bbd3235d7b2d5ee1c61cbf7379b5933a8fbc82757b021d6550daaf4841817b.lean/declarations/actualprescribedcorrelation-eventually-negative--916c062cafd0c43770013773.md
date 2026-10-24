# actualPrescribedCorrelation_eventually_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f865b9e6-2641-48a4-55fb-f4f3b0b89733",
  "kind": "theorem",
  "lexical_name": "actualPrescribedCorrelation_eventually_negative",
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
  "slug": "actualprescribedcorrelation-eventually-negative--916c062cafd0c43770013773",
  "source": {
    "blob": "7827410bdcfbbef3e36ff50450b3e3f2c7c55569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variant81bbd3235d7b2d5ee1c61cbf7379b5933a8fbc82757b021d6550daaf4841817b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:916c062cafd0c4377001377313c6b07eadba3f3dfe710273da228a7dcdfa303a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variant81bbd3235d7b2d5ee1c61cbf7379b5933a8fbc82757b021d6550daaf4841817b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f865b9e6-2641-48a4-55fb-f4f3b0b89733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrescribedCorrelation_eventually_negative :
    ∀ᶠ n in atTop,
      (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
        actualPrescribedComplexMode).re < 0 := by
  have hn := actualPrescribedCorrelation_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-1179648 : ℝ) < 0)
  filter_upwards [hn, actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualPrescribedScaleSequence n ^ 9 *
      sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) := by
    have hZ := source_normalization_pos (actualPrescribedScaleSequence n) hA
    have hAp : 0 < actualPrescribedScaleSequence n := by linarith
    positivity
  apply (mul_lt_mul_left hp).mp
  simpa only [mul_zero] using hn

/-- Negative real actual transform values occur at arbitrarily large genuine source scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variant81bbd3235d7b2d5ee1c61cbf7379b5933a8fbc82757b021d6550daaf4841817b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variant81bbd3235d7b2d5ee1c61cbf7379b5933a8fbc82757b021d6550daaf4841817b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7827410bdcfbbef3e36ff50450b3e3f2c7c55569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
