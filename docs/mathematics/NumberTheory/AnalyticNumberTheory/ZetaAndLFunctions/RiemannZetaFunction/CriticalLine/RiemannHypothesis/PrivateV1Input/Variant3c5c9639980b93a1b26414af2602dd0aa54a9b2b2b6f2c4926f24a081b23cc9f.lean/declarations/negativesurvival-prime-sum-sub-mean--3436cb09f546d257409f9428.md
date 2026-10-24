# negativeSurvival_prime_sum_sub_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af262541ccf6b15458d1756a6aca79e9ffdcbf68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4161c08-a65b-1269-f86a-c07b998b44a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa4f02ba-1b83-fbac-f3f2-6b9560d08b8c",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_prime_sum_sub_mean",
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
  "slug": "negativesurvival-prime-sum-sub-mean--3436cb09f546d257409f9428",
  "source": {
    "blob": "af262541ccf6b15458d1756a6aca79e9ffdcbf68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3436cb09f546d257409f9428934bc51aaedda693cca82dc1bb351aa4dc7c07a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa4f02ba-1b83-fbac-f3f2-6b9560d08b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_prime_sum_sub_mean {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2*A) (negativeSurvival A) - negativeTimeMean A = negativeErrorMean A := by
  have h := primeLogWindow_sub_integral 0 (2*A) (by norm_num) (by linarith)
    (negativeSurvival A) (negativeSurvival_contDiff hA)
  rw [window_zero_eq_sum, negativeSurvival_integral_eq_timeMean hA,
    negativeSurvival_at_upper A, negativeSurvival_signed_work hA] at h
  simpa only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    sub_zero, zero_sub, neg_neg] using h

/-- Uniformity concerns the survival replacement only, not the signed tail quadrature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af262541ccf6b15458d1756a6aca79e9ffdcbf68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
