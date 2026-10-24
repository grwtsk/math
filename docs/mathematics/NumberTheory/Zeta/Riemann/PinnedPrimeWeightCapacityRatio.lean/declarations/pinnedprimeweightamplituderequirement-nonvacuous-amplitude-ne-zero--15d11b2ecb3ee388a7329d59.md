# pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e329aa66-f1f7-cba3-ec96-8fc9d21021b0",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero",
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
  "slug": "pinnedprimeweightamplituderequirement-nonvacuous-amplitude-ne-zero--15d11b2ecb3ee388a7329d59",
  "source": {
    "blob": "1c8a6c10724828c18cf3429d0dd6d25ce415f7dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d11b2ecb3ee388a7329d59cb614f79bad1d0887c71d190c92e0e156f335778",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e329aa66-f1f7-cba3-ec96-8fc9d21021b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement X C v E) :
    pinnedPrimeWeightedAmplitude X ≠ 0 := by
  intro hzero
  have hcovered : |thetaError v| + 1 ≤ E :=
    (pinnedPrimeWeightAmplitudeRequirement_of_amplitude_eq_zero_iff
      hX hzero).1 hrequirement
  linarith

/-- A nonvacuous stage inequality at positive scale also forces a strictly
positive coefficient budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c8a6c10724828c18cf3429d0dd6d25ce415f7dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
