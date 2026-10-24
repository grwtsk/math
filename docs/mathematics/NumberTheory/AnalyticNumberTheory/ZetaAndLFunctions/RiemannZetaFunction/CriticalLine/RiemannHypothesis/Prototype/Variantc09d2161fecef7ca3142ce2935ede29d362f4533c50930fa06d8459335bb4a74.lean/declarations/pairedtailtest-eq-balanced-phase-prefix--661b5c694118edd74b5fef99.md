# pairedTailTest_eq_balanced_phase_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f05e3750647691d9b3d57460027923905bf7c90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff7fe2da-0923-4493-5b02-87f6adb89e64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec36e2cd-0be2-9d12-46aa-2469e7415145",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_eq_balanced_phase_prefix",
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
  "slug": "pairedtailtest-eq-balanced-phase-prefix--661b5c694118edd74b5fef99",
  "source": {
    "blob": "5f05e3750647691d9b3d57460027923905bf7c90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661b5c694118edd74b5fef997247a5cd1e9167c96acf439641a88f40e34d1cad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec36e2cd-0be2-9d12-46aa-2469e7415145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_eq_balanced_phase_prefix {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Icc 0 (2 * A)) :
    pairedTailTest A u =
      (positiveMass A / negativeMass A) * (∫ t in 0..u, negativeSlope A t) -
        (∫ t in 0..u, positiveSlope A t) := by
  have hA0 : 0 < A := by linarith
  have hp := (positiveSlope_continuous hA0).intervalIntegrable 0 u
  have hn := (negativeSlope_continuous hA0).intervalIntegrable 0 u
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hu.1
    (pairedTailTest_continuous hA).continuousOn
    (fun t _ => pairedTailTest_hasDerivAt hA t)
    (hp.neg.add (hn.const_mul (positiveMass A / negativeMass A)))
  rw [intervalIntegral.integral_add hp.neg
      (hn.const_mul (positiveMass A / negativeMass A)),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul,
    pairedTailTest_at_zero hA, sub_zero] at h
  linarith

/-- Positive total drift forces an actual interior real point of positive sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f05e3750647691d9b3d57460027923905bf7c90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
