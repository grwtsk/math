# complex_actual_full_correlation_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bb75381-2b68-f8f2-395c-240b91fd86e4",
  "kind": "theorem",
  "lexical_name": "complex_actual_full_correlation_moment",
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
  "slug": "complex-actual-full-correlation-moment--bdd9be46cf5fa55a9f97fe62",
  "source": {
    "blob": "a3980bfbddd947169b13e7ec987ec3316f1614cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd9be46cf5fa55a9f97fe626d60e2e56d837f2754c547052ada66f23d41ad21",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb75381-2b68-f8f2-395c-240b91fd86e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_actual_full_correlation_moment {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t : ℝ, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) = complexTestMoment A z ^ 2 := by
  simp_rw [complex_weighted_actual_correlation_convolution]
  rw [integral_convolution (ContinuousLinearMap.lsmul ℂ ℂ)
    (complex_weighted_normalized_source_integrable hA z) (complex_reflected_source_integrable hA z)]
  change (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) *
    (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ)) = _
  have href : (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ)) = complexTestMoment A (-z) := by
    have h := integral_neg_eq_self
      (fun x : ℝ ↦ Complex.exp ((-z) * (x : ℂ)) * (v A x : ℂ)) volume
    simpa only [complexTestMoment, Complex.ofReal_neg, neg_mul_neg] using h
  rw [href, complex_actual_source_moment_even hA]
  change complexTestMoment A z * complexTestMoment A z = _
  rw [pow_two]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexCorrelationMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3980bfbddd947169b13e7ec987ec3316f1614cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
