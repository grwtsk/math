# actual_joint_grid_work_accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34e5470c-3d14-fa06-3ff0-df5b95a4a7db",
  "kind": "theorem",
  "lexical_name": "actual_joint_grid_work_accuracy",
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
  "slug": "actual-joint-grid-work-accuracy--3d41757a53407e868937a21e",
  "source": {
    "blob": "65c6873bb46d96b9b32aceec0a01e75fb462595c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 133,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d41757a53407e868937a21e048ddfbf68b0db1f656159a3ea33530f7dec1a8d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34e5470c-3d14-fa06-3ff0-df5b95a4a7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_grid_work_accuracy {A η : ℝ} {n : ℕ} (hA : 1≤A) (hη : 0<η)
    (hn : curvatureResolutionCount A η≤n) :
    |sampledCurvatureWork A (leftGridSample A n)-criticalRemovedPairedWork A|≤η := by
  have hp : 0<n := (curvatureResolutionCount_pos A η).trans_le hn
  have hnr : (0:ℝ)<n := by exact_mod_cast hp
  have hc : (⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊:ℝ)≤n := by
    exact_mod_cast (by unfold curvatureResolutionCount at hn;omega :
      ⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊≤n)
  have hb := (Nat.le_ceil (((2200:ℝ)*A^2*Real.exp A)/η)).trans hc
  have hb2 := (div_le_iff₀ hη).mp hb
  apply (actual_grid_work_error hA hp).trans
  apply (div_le_iff₀ hnr).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c6873bb46d96b9b32aceec0a01e75fb462595c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
