# actual_first_prime_correlation_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c687b01e-981d-c990-207d-dd639b7f8d1e",
  "kind": "theorem",
  "lexical_name": "actual_first_prime_correlation_lower",
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
  "slug": "actual-first-prime-correlation-lower--2dfc651a6143c724f8d1e299",
  "source": {
    "blob": "8f12ab6d9ed604f9bbf17bc7450780a6c472b99b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantad343adf73e65cca3c00f869f4272a40a6ebedaaf70b3e876caefb5e952a5573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dfc651a6143c724f8d1e299646c5eb8419c473f34fc993093208330a46dade5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantad343adf73e65cca3c00f869f4272a40a6ebedaaf70b3e876caefb5e952a5573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c687b01e-981d-c990-207d-dd639b7f8d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_prime_correlation_lower (Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A) :
    1 - 5 * Real.log 2 ^ 2 / (2 * Q ^ 2) ≤
      sourceCorrelation explicitSecondDerivative A (Real.log 2) := by
  have hC := actual_correlation_zero_taylor_bound A (Real.log 2) (hQ.trans hA)
  have hAA : Q ^ 2 ≤ A ^ 2 := by nlinarith
  have hq : 0 < Q ^ 2 := by have : 0 < Q := by linarith; positivity
  have ha : 0 < A ^ 2 := by have : 0 < A := by linarith; positivity
  have hn : 0 ≤ 5 * Real.log (2 : ℝ) ^ 2 := by positivity
  have hd : 5 * Real.log 2 ^ 2 / (2 * A ^ 2) ≤
      5 * Real.log 2 ^ 2 / (2 * Q ^ 2) :=
    div_le_div_of_nonneg_left hn (by positivity) (by nlinarith)
  have hsame : 5 / A ^ 2 * Real.log (2 : ℝ) ^ 2 / 2 =
      5 * Real.log 2 ^ 2 / (2 * A ^ 2) := by ring
  rw [hsame] at hC
  linarith [(abs_le.mp hC).1]

/-- Keep the favorable gamma trace instead of discarding its fixed positive part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantad343adf73e65cca3c00f869f4272a40a6ebedaaf70b3e876caefb5e952a5573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantad343adf73e65cca3c00f869f4272a40a6ebedaaf70b3e876caefb5e952a5573.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f12ab6d9ed604f9bbf17bc7450780a6c472b99b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
