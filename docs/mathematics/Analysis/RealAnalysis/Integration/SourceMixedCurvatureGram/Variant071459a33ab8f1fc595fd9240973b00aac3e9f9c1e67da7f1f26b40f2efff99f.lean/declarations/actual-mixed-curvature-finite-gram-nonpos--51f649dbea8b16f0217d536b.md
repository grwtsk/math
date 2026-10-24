# actual_mixed_curvature_finite_gram_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "920b06c4bc947dbe5ac6ccb55a03169f4628a123",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0226d29-a5c8-f6ff-6d97-bdb05dc4862a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f74e135c-7da3-1c12-5ee5-9273e274445b",
  "kind": "theorem",
  "lexical_name": "actual_mixed_curvature_finite_gram_nonpos",
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
  "slug": "actual-mixed-curvature-finite-gram-nonpos--51f649dbea8b16f0217d536b",
  "source": {
    "blob": "920b06c4bc947dbe5ac6ccb55a03169f4628a123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f649dbea8b16f0217d536b3107eb8214fa1b6a55d13e7020e4ca52b59721f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74e135c-7da3-1c12-5ee5-9273e274445b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_curvature_finite_gram_nonpos
    {ι : Type*} (s : Finset ι) (c x : ι → ℝ) {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - x j) -
        sourceCorrelation explicitSecondDerivative A (x i - x j) / 4)) ≤ 0 := by
  rw [actual_mixed_curvature_finite_gram_eq_neg_squares s c x hA]
  have hd : 0 ≤ ∫ v : ℝ,
      (∑ i ∈ s, c i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) ^ 2 :=
    integral_nonneg (fun v => sq_nonneg _)
  have hp : 0 ≤ ∫ v : ℝ,
      (∑ i ∈ s, c i * normalizedTest explicitSecondDerivative A (v + x i)) ^ 2 :=
    integral_nonneg (fun v => sq_nonneg _)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureGram
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `920b06c4bc947dbe5ac6ccb55a03169f4628a123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
