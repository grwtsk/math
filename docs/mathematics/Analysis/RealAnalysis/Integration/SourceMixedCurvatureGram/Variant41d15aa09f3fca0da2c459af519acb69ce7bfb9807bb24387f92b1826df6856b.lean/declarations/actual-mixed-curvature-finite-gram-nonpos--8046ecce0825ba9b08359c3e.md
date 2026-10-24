# actual_mixed_curvature_finite_gram_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a6f7ce2-1039-6370-4191-9c3e9e5f808d",
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
  "slug": "actual-mixed-curvature-finite-gram-nonpos--8046ecce0825ba9b08359c3e",
  "source": {
    "blob": "f5474af12a264f632d37075cdcbc6fbb258debbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant41d15aa09f3fca0da2c459af519acb69ce7bfb9807bb24387f92b1826df6856b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8046ecce0825ba9b08359c3edb2a7c878d4cf78c785c008cb79f5cd18417867b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant41d15aa09f3fca0da2c459af519acb69ce7bfb9807bb24387f92b1826df6856b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6f7ce2-1039-6370-4191-9c3e9e5f808d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–159.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant41d15aa09f3fca0da2c459af519acb69ce7bfb9807bb24387f92b1826df6856b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant41d15aa09f3fca0da2c459af519acb69ce7bfb9807bb24387f92b1826df6856b.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5474af12a264f632d37075cdcbc6fbb258debbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
