# actual_adjusted_inner_eq_mean_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1da8cdd-2968-f7c2-c99b-1bfca0026a1a",
  "kind": "theorem",
  "lexical_name": "actual_adjusted_inner_eq_mean_periodic",
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
  "slug": "actual-adjusted-inner-eq-mean-periodic--094f824b9b7f1c8ebcf0e6e4",
  "source": {
    "blob": "9f5068f22db4f9d87613c98a76906597e6744dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094f824b9b7f1c8ebcf0e6e49e53f100eab532dca549512b2c4ce2b20b591cb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1da8cdd-2968-f7c2-c99b-1bfca0026a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adjusted_inner_eq_mean_periodic {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      actualPeriodicAdjustedColumnBoundary A t -
        actualCenteredPrefixPeriodMean (vaughanCutoff A) *
          (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
            actualTwistedTimeDensity A t s) - actualPeriodicColumnAbelRow A t := by
  obtain ⟨hl, hc⟩ := column_orders hA
  have h := actual_column_covariant_abel hA hl hc (actualTwistedTimeDensity A t)
    (twisted_contDiff (by linarith : 0 < A) t)
  simp_rw [actualTwistedTimeDensity_column_deriv (by linarith : 0 < A)] at h
  rw [adjusted_inner_eq_original_hom hA t]
  rw [actual_prefix_T_eq_mean_add_abel_row hA t] at h
  unfold actualPeriodicAdjustedColumnBoundary actualCriticalAdjustedColumnPrimitive
  rw [actualAdjointColumnPrimitive_at_upper]
  nlinarith

/-- The full source interior is the same combined signed density, with no termwise deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5068f22db4f9d87613c98a76906597e6744dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
