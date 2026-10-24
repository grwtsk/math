# actual_derivative_low_sector_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a573c5b3124540403615ccf5f6412f78d0d2d4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2770b73-eddf-f39b-eabd-3586d63d89ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a12c4d-aadc-b93a-6592-42d86f9d49e7",
  "kind": "theorem",
  "lexical_name": "actual_derivative_low_sector_abs_le",
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
  "slug": "actual-derivative-low-sector-abs-le--a083d79ac97496c760130977",
  "source": {
    "blob": "a573c5b3124540403615ccf5f6412f78d0d2d4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 405,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a083d79ac97496c76013097710220686edbc0289ce7b932faa70ec42b1802c7b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a12c4d-aadc-b93a-6592-42d86f9d49e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_derivative_low_sector_abs_le {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| ≤
      2 * errorBudget * (162826 / (7623 * A ^ 2)) := by
  have hp : 0 < A := by linarith
  exact restricted_actual_low_sector_abs_le _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp) S
    (162826 / (7623 * A ^ 2)) (by positivity)
    (fun t u => by
      simpa only [sub_eq_add_neg, restrictedDerivativePairing] using
        restrictedDerivativePairing_abs_le_coefficient hA S (-t) (Real.log u))

/-- This actual two-sector density is integrable before restricted sums are combined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a573c5b3124540403615ccf5f6412f78d0d2d4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
