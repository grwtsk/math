# closed_sum_eq_neg_cumulative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25e63eb-eccf-d1ff-cdf9-d8bbeba4eced",
  "kind": "theorem",
  "lexical_name": "closed_sum_eq_neg_cumulative_integral",
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
  "slug": "closed-sum-eq-neg-cumulative-integral--df08c050f94dd153d6cc7f8c",
  "source": {
    "blob": "d4baaeba6a7832014a8f3688cdd243bec4217fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df08c050f94dd153d6cc7f8cf614d36d7c25cb32a6aa549c3d605ec4990cb128",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25e63eb-eccf-d1ff-cdf9-d8bbeba4eced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_sum_eq_neg_cumulative_integral (a : ℕ → ℝ) (w : ℝ → ℝ) (X : ℝ)
    (ha : a 0 = 0)
    (hd : ∀ t ∈ Set.Icc 1 X, DifferentiableAt ℝ w t)
    (hi : MeasureTheory.IntegrableOn (deriv w) (Set.Icc 1 X)) (hend : w X = 0) :
    (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, a n * w n) =
      -(∫ x in Set.Ioc 1 X, (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, a n) * deriv w x) := by
  have h := sum_mul_eq_sub_integral_mul₀ a ha X hd hi
  rw [hend, zero_mul, zero_sub] at h
  simpa only [mul_comm] using h


end FormalResearch.RiemannHypothesis.SignedPrefixTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4baaeba6a7832014a8f3688cdd243bec4217fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
