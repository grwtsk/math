# abs_coreGrowingShiftAnchor_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fbefe45-e91d-c39a-eeaa-1e380330c87e",
  "kind": "theorem",
  "lexical_name": "abs_coreGrowingShiftAnchor_le",
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
  "slug": "abs-coregrowingshiftanchor-le--fe284d9efe839b7db4e1e9d5",
  "source": {
    "blob": "594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe284d9efe839b7db4e1e9d541902088308e50ea7f8cb44bea0d4b9355ca492b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fbefe45-e91d-c39a-eeaa-1e380330c87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_coreGrowingShiftAnchor_le
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftAnchor j t| ≤
      (logarithmicShiftThreshold j : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  have hHN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hcum :=
    abs_cumulativeHarmonicShiftCorrelation_le_coreEnvelope
      henv hcore hHN
  have hcoefNonneg :=
    harmonicShiftFirstDifference_nonneg_all
      j t (logarithmicShiftThreshold j - 1)
  have hcoef :=
    harmonicShiftFirstDifference_le_leftScale_inv_sq
      j t (logarithmicShiftThreshold j - 1)
  unfold coreGrowingShiftAnchor
  rw [abs_mul, abs_of_nonneg hcoefNonneg]
  calc
    |cumulativeHarmonicShiftCorrelation
        j t (logarithmicShiftThreshold j)| *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) ≤
      ((logarithmicShiftThreshold j : ℝ) * U) *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) := by
      exact mul_le_mul_of_nonneg_right hcum hcoefNonneg
    _ ≤ ((logarithmicShiftThreshold j : ℝ) * U) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      apply mul_le_mul_of_nonneg_left hcoef
      exact mul_nonneg (by positivity) henv.1
    _ = _ := by ring

/-- The first-difference tail pays one reciprocal-square coefficient per
retained shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
