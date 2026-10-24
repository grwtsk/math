# actualUpperPeriodMeanTimeFactor_eq_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81aefb46-6166-90ac-8bf9-b52290aab350",
  "kind": "theorem",
  "lexical_name": "actualUpperPeriodMeanTimeFactor_eq_support",
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
  "slug": "actualupperperiodmeantimefactor-eq-support--6d9054d66b991ec48e4f354a",
  "source": {
    "blob": "8d3cf244290ea93c64d01b130421e0d29331f0cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d9054d66b991ec48e4f354aa674ecb943862da1ff869aad9b75934e7690f57f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81aefb46-6166-90ac-8bf9-b52290aab350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperPeriodMeanTimeFactor_eq_support {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) =
      ∫ t in actualTimeLower A..(2 * A - actualColumnUpper A),
        actualAdjointTimePrimitive A 0 t *
          actualRetainedMeanSourcePrimitive A t (actualColumnUpper A) := by
  obtain ⟨hl, hb⟩ := upper_time_orders hA
  have hm : 2 * A - actualColumnUpper A ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le (hl.trans hb)]
    exact ⟨hl, hb⟩
  obtain ⟨hi1, hi2⟩ := (IntervalIntegrable.trans_iff hm).mp (time_factor_intervalIntegrable hA)
  have hz : (∫ t in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) = 0 := by
    calc
      _ = ∫ _ in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
          (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have ht0 : 2 * A - actualColumnUpper A ≤ t := by
          simpa only [min_eq_left hb] using ht.1
        rw [actualRetainedMeanSourcePrimitive_zero_right hA (by linarith), mul_zero]
      _ = 0 := by simp
  have he := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [hz, add_zero] at he
  exact he.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3cf244290ea93c64d01b130421e0d29331f0cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
