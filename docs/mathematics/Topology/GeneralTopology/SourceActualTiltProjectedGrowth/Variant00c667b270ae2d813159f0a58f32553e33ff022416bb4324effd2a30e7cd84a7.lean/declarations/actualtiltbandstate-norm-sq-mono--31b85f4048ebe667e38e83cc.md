# actualTiltBandState_norm_sq_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ccc6ec9-6ec3-02e0-8ab3-0be513fcd905",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_norm_sq_mono",
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
  "slug": "actualtiltbandstate-norm-sq-mono--31b85f4048ebe667e38e83cc",
  "source": {
    "blob": "9579f88d3852b4636c3f87f72f2233e7675778d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31b85f4048ebe667e38e83cc1e1d35fca981020ce9d88da0719c79613172e609",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ccc6ec9-6ec3-02e0-8ab3-0be513fcd905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_norm_sq_mono {A T U : ℝ} (hA : 1 ≤ A) (hTU : T ≤ U) :
    ‖actualTiltBandState A T‖ ^ 2 ≤ ‖actualTiltBandState A U‖ ^ 2 := by
  rw [actualTiltBandState_norm_sq hA, actualTiltBandState_norm_sq hA]
  apply setIntegral_mono_set (actualTiltStandardSpectrum_norm_sq_integrable hA).integrableOn
    (Eventually.of_forall fun ξ => sq_nonneg _) ?_
  apply Eventually.of_forall
  intro ξ hξ
  exact ⟨(div_le_div_of_nonneg_right (neg_le_neg hTU) (by positivity)).trans hξ.1,
    hξ.2.trans (div_le_div_of_nonneg_right hTU (by positivity))⟩

/-- The true moving-height band carries the exponential central growth, with its norm retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9579f88d3852b4636c3f87f72f2233e7675778d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
