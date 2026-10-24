# actualCenteredPrimePhaseBulk_le_support_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d46d3e7-63f0-e8a4-18a9-3d72de7496a2",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimePhaseBulk_le_support_endpoints",
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
  "slug": "actualcenteredprimephasebulk-le-support-endpoints--1bcc3bdc459e74713fa2bef4",
  "source": {
    "blob": "b1da8ad7b7b0317317970d03a2828ece2588f580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantda753b0d6e24e054cad4bf50721c041628cb4ed203de524736644c83c400d6ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bcc3bdc459e74713fa2bef4700d0a423d1cb75c50a7f41a39eaf70d1b8ce79c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantda753b0d6e24e054cad4bf50721c041628cb4ed203de524736644c83c400d6ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d46d3e7-63f0-e8a4-18a9-3d72de7496a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimePhaseBulk_le_support_endpoints
    (A c T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualCenteredPrimePhaseBulk A c T ≤
      (actualClosedPrimeLogMass A c / (2 * Real.pi)) *
        ((∫ t in -T..T, ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖) -
          ((actualInitialPrimeMellin A ((c : ℂ)+(T : ℂ)*I)).im -
            (actualInitialPrimeMellin A ((c : ℂ)+(-T : ℂ)*I)).im)) := by
  have hs := slope_continuous A
  have hl : Continuous (fun t : ℝ => (c : ℂ)+(t : ℂ)*I) := by fun_prop
  have hi1 : IntervalIntegrable (fun t : ℝ =>
      ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖) volume (-T) T :=
    (hs.comp hl).norm.intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun t : ℝ =>
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) volume (-T) T :=
    (Complex.continuous_re.comp (hs.comp hl)).intervalIntegrable _ _
  have h := actualCenteredPrimePhaseBulk_le_support A c T hT
  rw [intervalIntegral.integral_sub hi1 hi2,
    actualEulerMellinSlope_re_integral_eq_boundary A c T hA] at h
  exact h

end FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhaseSupport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantda753b0d6e24e054cad4bf50721c041628cb4ed203de524736644c83c400d6ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantda753b0d6e24e054cad4bf50721c041628cb4ed203de524736644c83c400d6ed.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1da8ad7b7b0317317970d03a2828ece2588f580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
