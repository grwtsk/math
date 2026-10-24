# no_uniform_translation_gram_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d459e178-aed5-555c-f007-f64428c4e693",
  "kind": "theorem",
  "lexical_name": "no_uniform_translation_gram_certificate",
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
  "slug": "no-uniform-translation-gram-certificate--beaa44f43a77f62fe55d9066",
  "source": {
    "blob": "da50cbfb125db6c9f86e123cee339a1a6303d1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe/Variant062d89514c47340470996d63a2a4d9a3a4e3f18b89ca493ba45ba9fe8b8dccfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beaa44f43a77f62fe55d9066b1e2f7f337d830f8857d377efe105d761d86556b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe/Variant062d89514c47340470996d63a2a4d9a3a4e3f18b89ca493ba45ba9fe8b8dccfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d459e178-aed5-555c-f007-f64428c4e693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_translation_gram_certificate :
    ¬ ∃ (K : ℝ) (μ : ℝ → Measure ℝ) (E : ℝ → Hilbert → ℝ),
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        -K * ‖f‖ ^ 2 ≤ E A f) ∧
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        fullQuadraticForm A f = translationGramForm (μ A) f + E A f) := by
  rintro ⟨K, μ, E, hE, he⟩
  obtain ⟨A, hA, f, hnorm, hdom, hneg⟩ :=
    FullQuadraticObstruction.full_form_unit_values_unbounded_below (-K)
  have hc := hE A hA f hdom
  rw [hnorm] at hc
  have hp := translation_gram_form_nonneg (μ A) f
  rw [he A hA f hdom] at hneg
  nlinarith

end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe/Variant062d89514c47340470996d63a2a4d9a3a4e3f18b89ca493ba45ba9fe8b8dccfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe/Variant062d89514c47340470996d63a2a4d9a3a4e3f18b89ca493ba45ba9fe8b8dccfd.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da50cbfb125db6c9f86e123cee339a1a6303d1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
