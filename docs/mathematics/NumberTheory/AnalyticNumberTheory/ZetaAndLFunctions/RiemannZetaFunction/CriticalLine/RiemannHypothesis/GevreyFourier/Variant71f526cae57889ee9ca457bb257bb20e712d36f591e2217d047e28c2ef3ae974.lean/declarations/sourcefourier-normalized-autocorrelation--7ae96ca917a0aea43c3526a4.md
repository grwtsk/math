# sourceFourier_normalized_autocorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0d6e72b-5de9-fad0-20c4-097f328abb44",
  "kind": "theorem",
  "lexical_name": "sourceFourier_normalized_autocorrelation",
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
  "slug": "sourcefourier-normalized-autocorrelation--7ae96ca917a0aea43c3526a4",
  "source": {
    "blob": "e60b58ec32f081f6839e794783f586d990365ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae96ca917a0aea43c3526a44443f55e72e445f564723ada2e368fe49498973c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d6e72b-5de9-fad0-20c4-097f328abb44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_normalized_autocorrelation {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (fun u ↦ ∫ x : ℝ,
      normalizedOperator h A x * normalizedOperator h A (x - u)) ξ =
      ((A / normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (sourceFourier h (A * ξ)) : ℝ) := by
  rw [sourceFourier_autocorrelation (normalizedOperator_integrable hc hs hA).1,
    normSq_sourceFourier_normalizedOperator hc hs hA]

/-- The named real autocorrelation retains the exact dilation and normalization factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60b58ec32f081f6839e794783f586d990365ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
