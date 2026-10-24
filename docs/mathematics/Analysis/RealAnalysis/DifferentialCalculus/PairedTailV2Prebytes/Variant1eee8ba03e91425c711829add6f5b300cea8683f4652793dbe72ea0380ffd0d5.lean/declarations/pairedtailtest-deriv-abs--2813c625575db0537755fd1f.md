# pairedTailTest_deriv_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4e00efb-3c83-5c47-825a-b67f44a71e97",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_deriv_abs",
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
  "slug": "pairedtailtest-deriv-abs--2813c625575db0537755fd1f",
  "source": {
    "blob": "b61d6f7aa73f008349468b1b3af14ac22927f84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV2Prebytes/Variant1eee8ba03e91425c711829add6f5b300cea8683f4652793dbe72ea0380ffd0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2813c625575db0537755fd1f492445ac85122d3d6c875a5261e8a10cf3c3c561",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV2Prebytes/Variant1eee8ba03e91425c711829add6f5b300cea8683f4652793dbe72ea0380ffd0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e00efb-3c83-5c47-825a-b67f44a71e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_deriv_abs {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    |deriv (pairedTailTest A) u| =
      positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u := by
  rw [pairedTailTest_deriv hA]
  by_cases h : 0 ≤ deriv (criticalPrimeTest A) u
  · simp only [positiveSlope, negativeSlope, max_eq_left h,
      max_eq_right (neg_nonpos.mpr h), mul_zero, add_zero, abs_neg, abs_of_nonneg h]
  · have hd : deriv (criticalPrimeTest A) u ≤ 0 := le_of_not_ge h
    have hr : 0 ≤ positiveMass A / negativeMass A :=
      div_nonneg (positiveMass_nonneg (show 0 < A by linarith)) (negativeMass_pos hA).le
    simp only [positiveSlope, negativeSlope, max_eq_right hd,
      max_eq_left (neg_nonneg.mpr hd), neg_zero, zero_add]
    exact abs_of_nonneg (mul_nonneg hr (neg_nonneg.mpr hd))

/-- The normalized correction removes one unit of variation; it leaves the full positive mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV2Prebytes/Variant1eee8ba03e91425c711829add6f5b300cea8683f4652793dbe72ea0380ffd0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV2Prebytes/Variant1eee8ba03e91425c711829add6f5b300cea8683f4652793dbe72ea0380ffd0d5.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61d6f7aa73f008349468b1b3af14ac22927f84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
