# actualAdjustedInterior_eq_half_near_mean_sub_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba8a7e39-b08b-76f1-4995-7cd2317f0e38",
  "kind": "theorem",
  "lexical_name": "actualAdjustedInterior_eq_half_near_mean_sub_far",
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
  "slug": "actualadjustedinterior-eq-half-near-mean-sub-far--5524cfee1e1aa5aedf4d8fdd",
  "source": {
    "blob": "5f0a6b5fd47cf532594eb3529f9bd985931bed3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variant8c0430f59755dfa1f78e1415f3aa81b10a407bf4de2406e5f31108352d0b7a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5524cfee1e1aa5aedf4d8fdd21bc3b84252c069f646f12ba02473ca525fee18c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variant8c0430f59755dfa1f78e1415f3aa81b10a407bf4de2406e5f31108352d0b7a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba8a7e39-b08b-76f1-4995-7cd2317f0e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjustedInterior_eq_half_near_mean_sub_far {A : ℝ} (hA : 25600 ≤ A) :
    actualCriticalAdjustedInterior A =
      actualHalfNearMeanInterior A - actualFarPeriodicWork A (Real.exp (A / 2)) := by
  have hg := actualHalfExponentialPeriodicCutoff_strong_orders hA
  have hl : (vaughanCutoff A : ℝ) ≤ Real.exp (A / 2) := by
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp
    linarith [hg.1]
  have hF := actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    hl hg.2 (time_order hA)
  have hN := actualHalfNearPeriodicWork_intervalIntegrable hA
  have hB := actualIntegratedMeanResolvedBoundary_intervalIntegrable hA
  rw [actual_adjusted_interior_eq_full_physical (by linarith : 1 ≤ A)]
  have he : (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualFullPhysicalPeriodicInteriorDensity A t) =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualMeanResolvedColumnBoundary A t -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            (Real.exp (A / 2))
              ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    unfold actualFullPhysicalPeriodicInteriorDensity actualMeanResolvedColumnBoundary
    rw [actualTwistedTimeDensity_integral_eq_mean_traces (by linarith : 0 < A),
      actualFullPhysicalPeriodicRow_eq_half_near_add_far hA]
    ring
  rw [he, intervalIntegral.integral_sub (hB.sub hN) hF, intervalIntegral.integral_sub hB hN]
  rfl

/-- Identical original compensation terms cancel only against their literal copies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variant8c0430f59755dfa1f78e1415f3aa81b10a407bf4de2406e5f31108352d0b7a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variant8c0430f59755dfa1f78e1415f3aa81b10a407bf4de2406e5f31108352d0b7a56.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0a6b5fd47cf532594eb3529f9bd985931bed3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
