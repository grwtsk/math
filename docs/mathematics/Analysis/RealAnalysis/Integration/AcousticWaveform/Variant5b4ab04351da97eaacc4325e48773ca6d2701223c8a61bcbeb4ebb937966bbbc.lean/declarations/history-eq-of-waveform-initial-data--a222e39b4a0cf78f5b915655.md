# history_eq_of_waveform_initial_data

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560c867a-c410-9c18-17b5-064bd944d075",
  "kind": "theorem",
  "lexical_name": "history_eq_of_waveform_initial_data",
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
  "slug": "history-eq-of-waveform-initial-data--a222e39b4a0cf78f5b915655",
  "source": {
    "blob": "1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a222e39b4a0cf78f5b91565548a2704bdeda76733d789cfba4cf7c10198c6942",
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

Occurrence: `result:560c867a-c410-9c18-17b5-064bd944d075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem history_eq_of_waveform_initial_data (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) (firstRegular : ContDiff ℝ 2 first)
    (secondRegular : ContDiff ℝ 2 second) (initialTime : ℝ)
    (sameWaveform : volumePressure density distance first = volumePressure density distance second)
    (sameInitial : first initialTime = second initialTime)
    (sameSlope : deriv first initialTime = deriv second initialTime) : first = second := by
  funext time
  rw [history_reconstruction_from_pressure density distance densityPositive distancePositive
    first firstRegular initialTime time,
    history_reconstruction_from_pressure density distance densityPositive distancePositive
      second secondRegular initialTime time, sameInitial, sameSlope, sameWaveform]

/-- Retardation is a bijective time translation, so it preserves full-waveform equality exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
