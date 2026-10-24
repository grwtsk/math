# normalizedTest_derivative_endpoint_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4391bc7-aae8-8cbd-470d-9c23079c5cab",
  "kind": "theorem",
  "lexical_name": "normalizedTest_derivative_endpoint_nonpos",
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
  "slug": "normalizedtest-derivative-endpoint-nonpos--1cdaff09973a953dfa6f4c7e",
  "source": {
    "blob": "665d7d03535646164c39ebe4579068ea75c5debd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cdaff09973a953dfa6f4c7e414071863dcfc70e1f0df6f3901f0f594450dc96",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4391bc7-aae8-8cbd-470d-9c23079c5cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTest_derivative_endpoint_nonpos (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 := by
  have hA1 : 1 ≤ A := by linarith
  rw [normalized_derivative_eq_indicator A hA1,
    indicator_of_mem (show x ∈ Icc (-A) A from ⟨by linarith [hx.1], hx.2⟩),
    normalizedInteriorDerivative_factor A x hA1]
  obtain ⟨hlow, hupp, hw⟩ := endpoint_scaled_bounds A x hA hx
  have hsq : (3 / 4 : ℝ) ^ 2 ≤ (x / A) ^ 2 := by
    nlinarith [sq_nonneg (x / A - 3 / 4)]
  have hu : (x / A) ^ 2 ≤ 1 := by nlinarith
  have hb : 48 * (3 - 7 * (x / A) ^ 2) +
      2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ -81 / 2 := by nlinarith
  apply mul_nonpos_of_nonneg_of_nonpos
  · apply div_nonneg
    · exact mul_nonneg (by linarith) (by linarith)
    · positivity
  · linarith

/-- Both literal correlation integrands have the asserted endpoint signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665d7d03535646164c39ebe4579068ea75c5debd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
