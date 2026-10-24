# criticalPrimeTest_sub_one_eq_phase_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "868808fe6f62fd45e11d290a1d053bb60aceaa8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20061536-5aa7-3150-debf-9bf95a11f359",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37d31ec6-a597-9eb5-9e4d-0c23192b12dd",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_sub_one_eq_phase_prefix",
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
  "slug": "criticalprimetest-sub-one-eq-phase-prefix--1235c4073fe7c281ceda7e8c",
  "source": {
    "blob": "868808fe6f62fd45e11d290a1d053bb60aceaa8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1235c4073fe7c281ceda7e8cc782983fcb6bd396a7e1f1e9ee1179fdcb2d086f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d31ec6-a597-9eb5-9e4d-0c23192b12dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_sub_one_eq_phase_prefix {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    criticalPrimeTest A u - 1 =
      (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) := by
  have hp : 0 < A := by linarith
  rw [← intervalIntegral.integral_sub
    ((positiveSlope_continuous hp).intervalIntegrable _ _)
    ((negativeSlope_continuous hp).intervalIntegrable _ _)]
  simp_rw [slope_difference]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t))
    ((criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable _ _),
    criticalPrimeTest_at_zero A hA]

/-- Restricting the nonnegative positive phase to an initial subinterval loses no mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `868808fe6f62fd45e11d290a1d053bb60aceaa8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
