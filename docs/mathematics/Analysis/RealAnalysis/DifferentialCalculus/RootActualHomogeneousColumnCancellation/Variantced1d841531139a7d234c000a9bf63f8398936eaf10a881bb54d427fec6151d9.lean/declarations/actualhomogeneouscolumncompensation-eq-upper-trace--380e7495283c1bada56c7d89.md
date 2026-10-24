# actualHomogeneousColumnCompensation_eq_upper_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:010f2073-b620-f945-8a6a-fa9b1c77d541",
  "kind": "theorem",
  "lexical_name": "actualHomogeneousColumnCompensation_eq_upper_trace",
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
  "slug": "actualhomogeneouscolumncompensation-eq-upper-trace--380e7495283c1bada56c7d89",
  "source": {
    "blob": "7b18ab04feae20d599c2bd3a2a627692f617c0ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380e7495283c1bada56c7d89be27f296bb1523c10e6e7a7729756251a53dc1b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:010f2073-b620-f945-8a6a-fa9b1c77d541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHomogeneousColumnCompensation_eq_upper_trace {A : ℝ}
    (hA : 1 ≤ A) (coefficient : ℝ) :
    actualHomogeneousColumnCompensation A coefficient =
      coefficient * Real.exp (actualColumnUpper A / 2) *
        (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t *
            actualTwistedTimeDensity A t (actualColumnUpper A)) := by
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  have hi (t : ℝ) : (∫ s in a..c, coefficient * Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
      coefficient * (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a) := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul]
    rw [actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]
  unfold actualHomogeneousColumnCompensation
  change coefficient * Real.exp (a / 2) * _ +
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        ∫ s in a..c, coefficient * Real.exp (s / 2) *
          covariantMixedDerivative (actualLogMixedDensity A) t s) = _
  simp_rw [hi]
  have he : (fun t => actualAdjointTimePrimitive A 0 t *
      (coefficient * (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a))) =
      (fun t => coefficient * Real.exp (c / 2) *
        (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t c) -
          coefficient * Real.exp (a / 2) *
            (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t a)) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub
    ((time_trace_integrable hA c).const_mul _) ((time_trace_integrable hA a).const_mul _)]
  simp only [intervalIntegral.integral_const_mul]
  ring

/-- This actual critical sector is controlled by a genuine upper trace, not a new guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b18ab04feae20d599c2bd3a2a627692f617c0ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
