# rawCorrelation_2_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df05755a-04c5-cae4-1a3a-90df43217fcb",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_2_2",
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
  "slug": "rawcorrelation-2-2--e2b65ef3daa9e7c71496b145",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b65ef3daa9e7c71496b145244fbc309e59b4bd7fc3f771023a09ed4160ad36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df05755a-04c5-cae4-1a3a-90df43217fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_2_2 (h : ℝ) :
    rawCorrelation 1 1 h = (2 / 5) + -1 * h + (1 / 2) * h^3 + (-3 / 40) * h^5 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 1 (y-h)) =
      (fun y => (1 / 4) + (-3 / 4) * h^2 +
        ((3 / 2) * h) * y^1 +
        ((-3 / 2) + (9 / 4) * h^2) * y^2 +
        ((-9 / 2) * h) * y^3 +
        ((9 / 4)) * y^4) := by
    funext y
    simp only [mode_two]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/4 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
