# volumePressure_eq_iff_second_derivative_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbc9b7e1-7b15-295c-ec5c-ba72defd5e83",
  "kind": "theorem",
  "lexical_name": "volumePressure_eq_iff_second_derivative_eq",
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
  "slug": "volumepressure-eq-iff-second-derivative-eq--c561dd9e934ca3b7726a4d07",
  "source": {
    "blob": "1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c561dd9e934ca3b7726a4d07e1c92b5eb7806b42cf65d7bb6140c02246e397c7",
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

Occurrence: `result:dbc9b7e1-7b15-295c-ec5c-ba72defd5e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volumePressure_eq_iff_second_derivative_eq (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) :
    volumePressure density distance first = volumePressure density distance second ↔
      deriv (deriv first) = deriv (deriv second) := by
  constructor
  · intro equal
    funext time
    exact mul_left_cancel₀ (pressure_coefficient_ne_zero density distance
      densityPositive distancePositive) (congrFun equal time)
  · intro equal
    funext time
    simp only [volumePressure, equal]

/-- Full-line C² histories have the same waveform exactly when their difference is affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
