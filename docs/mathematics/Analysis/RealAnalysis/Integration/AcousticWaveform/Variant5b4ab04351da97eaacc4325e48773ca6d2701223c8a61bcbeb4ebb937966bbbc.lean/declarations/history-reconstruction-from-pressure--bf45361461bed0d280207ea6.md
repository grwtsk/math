# history_reconstruction_from_pressure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ee2ebe5-bdb8-d102-52a1-a063ae93ee48",
  "kind": "theorem",
  "lexical_name": "history_reconstruction_from_pressure",
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
  "slug": "history-reconstruction-from-pressure--bf45361461bed0d280207ea6",
  "source": {
    "blob": "1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf45361461bed0d280207ea6cbf99d99eb5680ecd6a539128d8d99e36e6b785d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee2ebe5-bdb8-d102-52a1-a063ae93ee48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem history_reconstruction_from_pressure (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ) :
    history time = history initialTime + (time - initialTime) * deriv history initialTime +
      (4 * Real.pi * distance / density) *
        ∫ τ in initialTime..time, (time - τ) * volumePressure density distance history τ := by
  rw [history_reconstruction history regular initialTime time]
  congr 1
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro τ _
  unfold volumePressure
  field_simp [densityPositive.ne', distancePositive.ne']

/-- Zero initial slope removes the slope term; initial volume remains necessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
