# actualCenteredPrimePhaseBulk_le_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:937e9e8b-d810-4d35-d93a-ed414c56ecc5",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimePhaseBulk_le_support",
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
  "slug": "actualcenteredprimephasebulk-le-support--62b7d1419b8a7f205701b8cd",
  "source": {
    "blob": "8871d1c4e6fb2ab6646f6d8f374d612411f99a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b7d1419b8a7f205701b8cda171fe3c2767cdf623d346e633107cfd1b4d2d37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:937e9e8b-d810-4d35-d93a-ed414c56ecc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimePhaseBulk_le_support (A c T : ℝ) (hT : 0 ≤ T) :
    actualCenteredPrimePhaseBulk A c T ≤
      (actualClosedPrimeLogMass A c / (2 * Real.pi)) * ∫ t in -T..T,
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) := by
  have hs := slope_continuous A
  have hp := potential_continuous A
  have hq : Continuous (actualClosedPrimeCosineDeficit A c) := by
    unfold actualClosedPrimeCosineDeficit
    fun_prop
  have hsi : Continuous (actualClosedPrimeSineComponent A c) := by
    unfold actualClosedPrimeSineComponent
    fun_prop
  have hi1 : IntervalIntegrable (fun t : ℝ =>
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
          actualClosedPrimeSineComponent A c t -
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
          actualClosedPrimeCosineDeficit A c t) volume (-T) T :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun t : ℝ => actualClosedPrimeLogMass A c *
      (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re)) volume (-T) T :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  unfold actualCenteredPrimePhaseBulk
  calc
    _ ≤ (1 / (2 * Real.pi)) * ∫ t in -T..T, actualClosedPrimeLogMass A c *
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) :=
      mul_le_mul_of_nonneg_left
        (intervalIntegral.integral_mono_on (by linarith : -T ≤ T) hi1 hi2
          (fun t _ => actualCenteredPrimePhase_density_le A c t)) (by positivity)
    _ = _ := by rw [intervalIntegral.integral_const_mul]; ring

/-- Exact real slope FTC with both true frequency endpoints, at every real T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8871d1c4e6fb2ab6646f6d8f374d612411f99a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
