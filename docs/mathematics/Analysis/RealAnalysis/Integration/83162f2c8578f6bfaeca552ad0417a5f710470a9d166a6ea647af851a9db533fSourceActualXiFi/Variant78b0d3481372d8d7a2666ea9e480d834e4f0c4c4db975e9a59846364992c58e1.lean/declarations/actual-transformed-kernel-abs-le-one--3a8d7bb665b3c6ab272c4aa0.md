# actual_transformed_kernel_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92fa0b44-42d0-c570-e290-c73c314cc86b",
  "kind": "theorem",
  "lexical_name": "actual_transformed_kernel_abs_le_one",
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
  "slug": "actual-transformed-kernel-abs-le-one--3a8d7bb665b3c6ab272c4aa0",
  "source": {
    "blob": "dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a8d7bb665b3c6ab272c4aa0254d457ba65b5120b6ea61218f45c476ee45aac9",
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

Occurrence: `result:92fa0b44-42d0-c570-e290-c73c314cc86b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_kernel_abs_le_one (A y : ℝ) (hA : 40 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| ≤ 1 := by
  have hA1 : 1 ≤ A := by linarith
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 (Real.log y)
  have hc := actual_correlation_abs_le_one A (Real.log y) hA1
  have hdb : 5 / A ≤ (1 / 8 : ℝ) :=
    (div_le_iff₀ (by linarith : 0 < A)).mpr (by linarith)
  have hb : |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| ≤
        |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y)| +
          |sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| := by
    simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y)) 0
      (sourceCorrelation explicitSecondDerivative A (Real.log y) / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  linarith

/-- No sign of Xi is assumed on the finite front. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
