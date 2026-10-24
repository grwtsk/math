# compensatedAbelDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06ffecee-520d-b217-5c0d-5fdd7c0671eb",
  "kind": "theorem",
  "lexical_name": "compensatedAbelDensity_intervalIntegrable",
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
  "slug": "compensatedabeldensity-intervalintegrable--41752e63711a0ec1d3023dd5",
  "source": {
    "blob": "b8c9f99a1c30e0fee0fa4a8fcb1cf3fd3c3d818c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 379,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41752e63711a0ec1d3023dd5476cc09706a5c6cafd4299f75612c1afe433ba06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06ffecee-520d-b217-5c0d-5fdd7c0671eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedAbelDensity_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun s => compensatedPrefix (Real.exp s) *
      Real.exp (-s / 2) * kapitzaKernel A s) volume 0 (2 * A) := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  apply (compensatedPrefix_mul_deriv_intervalIntegrable (2 * A) (by linarith) F hf).neg.congr
  intro s _
  change -(compensatedPrefix (Real.exp s) * deriv F s) = _
  rw [hd]
  ring

/-- A common moving spatial window commutes with every literal translation atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c9f99a1c30e0fee0fa4a8fcb1cf3fd3c3d818c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
