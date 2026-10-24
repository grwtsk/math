# mertensResidual_eq_affine_nonaffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b8c232f-0e7e-5c2e-0c0d-5525c192ed77",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_affine_nonaffine",
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
  "slug": "mertensresidual-eq-affine-nonaffine--7124a108b2af0f510592b545",
  "source": {
    "blob": "89bb75c146251823c8d27edf14fa59bfd3bf160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7124a108b2af0f510592b54574c8a7d85dbfa78b80d31c1da5e73fdfa6b3b630",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b8c232f-0e7e-5c2e-0c0d-5525c192ed77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_affine_nonaffine (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (1 + criticalContinuousMoment A) + trendValue A + nonaffineWork A := by
  have hp : 0 < A := by linarith
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have hwi : IntervalIntegrable (fun s : ℝ => kapitzaWeight A s * (2 * A - s))
      volume 0 (2 * A) := by
    convert ((kapitzaWeight_continuous A hp).mul
      (by fun_prop : Continuous (fun s : ℝ => 2 * A - s))).intervalIntegrable
        (μ := volume) 0 (2 * A) using 1
    funext s
    rfl
  have hz : IntervalIntegrable (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s)
      volume 0 (2 * A) := by
    have he : (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s) =
        fun s => kapitzaWeight A s * normalizedPsiError s -
          (endpointValue A * kapitzaWeight A s +
            endpointSlope A * (kapitzaWeight A s * (2 * A - s))) := by
      funext s
      unfold nonaffineDiscrepancy affineTrend
      ring
    rw [he]
    exact (weightedPsiError_intervalIntegrable A hp).sub
      ((hw.const_mul _).add (hwi.const_mul _))
  have he : (fun s => kapitzaWeight A s * normalizedPsiError s) =
      fun s => (endpointValue A * kapitzaWeight A s +
        endpointSlope A * (kapitzaWeight A s * (2 * A - s))) +
          kapitzaWeight A s * nonaffineDiscrepancy A s := by
    funext s
    unfold nonaffineDiscrepancy affineTrend
    ring
  have hint := intervalIntegral.integral_add
    ((hw.const_mul (endpointValue A)).add (hwi.const_mul (endpointSlope A))) hz
  have hint2 := intervalIntegral.integral_add
    (hw.const_mul (endpointValue A)) (hwi.const_mul (endpointSlope A))
  rw [mertensResidual_eq_weightedPsi A hA, he, hint, hint2,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    kernelMomentZero_eq A hA]
  unfold trendValue nonaffineWork kernelMomentZero kernelMomentOne
  ring

/-- The printed rational defect uses the independently evaluated continuous source term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bb75c146251823c8d27edf14fa59bfd3bf160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
