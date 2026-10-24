# nonvacuous_dyadic_stage_forces_amplitude_and_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2808f19e-51ce-e890-bee6-3a44d0b3a979",
  "kind": "theorem",
  "lexical_name": "nonvacuous_dyadic_stage_forces_amplitude_and_budget",
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
  "slug": "nonvacuous-dyadic-stage-forces-amplitude-and-budget--cabbe25c6c6621b59372abca",
  "source": {
    "blob": "8305e4697a80bbbc19405e0184491faafef36718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cabbe25c6c6621b59372abca92219b7abd5aeb3a1f7265b6dd4dfbfc4aef55a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2808f19e-51ce-e890-bee6-3a44d0b3a979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonvacuous_dyadic_stage_forces_amplitude_and_budget
    (j : ℕ) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v E) :
    pinnedPrimeWeightedAmplitude (dyadicScale j) ≠ 0 ∧
      0 < C := by
  constructor
  · exact
      pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero
        (dyadicScale_pos j) hlt hrequirement
  · exact
      pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos
        (dyadicScale_pos j) hlt hrequirement

/-- Once the amplitude is nonzero, the authored ratio is exactly the least
nonnegative coefficient budget satisfying the stage inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8305e4697a80bbbc19405e0184491faafef36718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
