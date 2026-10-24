# actualUpperColumn_time_factor_eq_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c7f4d78-d18a-1ade-08fd-bb9680ad962a",
  "kind": "theorem",
  "lexical_name": "actualUpperColumn_time_factor_eq_support",
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
  "slug": "actualuppercolumn-time-factor-eq-support--53a5726ee8f1d7b2b8db701b",
  "source": {
    "blob": "0798d45a5059cb88c8781776d3fcb41036891551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a5726ee8f1d7b2b8db701bf76cb1628333c26d564a451808a56aeea8fa0b46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c7f4d78-d18a-1ade-08fd-bb9680ad962a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperColumn_time_factor_eq_support {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A)) =
      ∫ t in actualTimeLower A..(2 * A - actualColumnUpper A),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A) := by
  obtain ⟨hl, hb⟩ := upper_column_time_orders hA
  have hc : 2 * A - actualColumnUpper A ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le (hl.trans hb)]
    exact ⟨hl, hb⟩
  obtain ⟨hi1, hi2⟩ := (IntervalIntegrable.trans_iff hc).mp
    (trace_intervalIntegrable hA (actualColumnUpper A))
  have hz : (∫ t in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A)) = 0 := by
    calc
      _ = ∫ _ in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have hLt : 2 * A - actualColumnUpper A ≤ t := by
          simpa only [min_eq_left hb] using ht.1
        rw [actualTwistedTimeDensity_upperColumn_zero hA hLt, mul_zero]
      _ = 0 := by simp
  have he := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [hz, add_zero] at he
  exact he.symm

/-- Actual bounded P and source edge jets give a normalized upper trace budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0798d45a5059cb88c8781776d3fcb41036891551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
