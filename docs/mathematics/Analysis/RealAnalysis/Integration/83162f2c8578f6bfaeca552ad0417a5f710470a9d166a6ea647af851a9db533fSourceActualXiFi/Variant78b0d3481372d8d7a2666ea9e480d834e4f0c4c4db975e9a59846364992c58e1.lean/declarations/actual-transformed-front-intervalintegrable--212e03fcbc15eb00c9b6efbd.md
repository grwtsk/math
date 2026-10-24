# actual_transformed_front_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d2ed215-db00-2910-7a04-dc159a2a5e7a",
  "kind": "theorem",
  "lexical_name": "actual_transformed_front_intervalIntegrable",
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
  "slug": "actual-transformed-front-intervalintegrable--212e03fcbc15eb00c9b6efbd",
  "source": {
    "blob": "dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:212e03fcbc15eb00c9b6efbde0908550decc16bf504c5a1162ef2ce3b5e3b06b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d2ed215-db00-2910-7a04-dc159a2a5e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_front_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 (13 / 2) := by
  have hp : 0 < A := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hw : ContinuousOn (fun y : ℝ =>
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
          y ^ (3 / 2 : ℝ)) (Icc 2 (13 / 2)) := by
    intro y hy
    have hypos : 0 < y := by linarith [hy.1]
    exact ((hd.continuousAt.comp (Real.continuousAt_log hypos.ne')).sub
      ((hc.continuousAt.comp (Real.continuousAt_log hypos.ne')).div_const 2) |>.div
        (continuousAt_id.rpow_const (Or.inl hypos.ne'))
        (Real.rpow_pos_of_pos hypos _).ne').continuousWithinAt
  have hi := SourceActualPsiInverseSquare.shiftedActualChebyshev_mul_intervalIntegrable
    (13 / 2) (by norm_num) _ hw
  change IntervalIntegrable (fun y => shiftedActualChebyshev y *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
        y ^ (3 / 2 : ℝ)) volume 2 (13 / 2)
  simpa only [mul_div_assoc] using hi

/-- The finite front contributes at worst its explicit fixed length-times-height budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
