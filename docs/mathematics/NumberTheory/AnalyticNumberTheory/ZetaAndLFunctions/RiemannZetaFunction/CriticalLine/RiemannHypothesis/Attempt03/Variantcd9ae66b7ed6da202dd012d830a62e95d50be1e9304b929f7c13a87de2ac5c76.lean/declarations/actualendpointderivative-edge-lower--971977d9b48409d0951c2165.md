# actualEndpointDerivative_edge_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76576141-28e3-6348-1d16-46706ac6a3b7",
  "kind": "theorem",
  "lexical_name": "actualEndpointDerivative_edge_lower",
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
  "slug": "actualendpointderivative-edge-lower--971977d9b48409d0951c2165",
  "source": {
    "blob": "f1919933e274056fd1a411be3ac4f5cecbb3c8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971977d9b48409d0951c2165695a430acf891439dbdbf291d3fee6365ec17f3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76576141-28e3-6348-1d16-46706ac6a3b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEndpointDerivative_edge_lower {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    200 * r ≤ endpointDerivativePolynomial A r := by
  obtain ⟨hq0, hq1⟩ := edge_coordinate_bounds hA hr hr1
  have hp : 0 < A := by linarith
  have hs0 : 9 / 10 ≤ 1 - r / A := by linarith
  have hs1 : 1 - r / A ≤ 1 := by linarith
  have hv0 : 19 / 10 ≤ 2 - r / A := by linarith
  have hv1 : 2 - r / A ≤ 2 := by linarith
  have hs2 : 81 / 100 ≤ (1 - r / A) ^ 2 := by nlinarith
  have hv4 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hr2 : r ^ 2 ≤ r := by nlinarith
  have hg0 : 0 ≤ r ^ 2 * (2 - r / A) ^ 2 := by positivity
  have hg4 : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 * r ^ 2 := by nlinarith
  have hbr : 36 ≤ 8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4 := by nlinarith
  have hvs0 : 171 / 100 ≤ (2 - r / A) * (1 - r / A) := by
    nlinarith [mul_le_mul hv0 hs0 (by norm_num : (0 : ℝ) ≤ 9 / 10)
      (by linarith : 0 ≤ 2 - r / A)]
  have hvs2 : (2 - r / A) * (1 - r / A) ≤ 2 := by
    nlinarith [mul_le_mul hv1 hs1 (by linarith : 0 ≤ 1 - r / A)
      (by norm_num : (0 : ℝ) ≤ 2)]
  have hfirst : (171 / 100 : ℝ) * 36 ≤ (2 - r / A) * (1 - r / A) *
      (8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4) :=
    mul_le_mul hvs0 hbr (by norm_num) (by positivity)
  have hfirst2 := mul_le_mul_of_nonneg_left hfirst (show 0 ≤ 4 * r by positivity)
  have hdiv : 112 * (1 - r / A) / A ≤ 2 := by
    apply (div_le_iff₀ hp).2
    nlinarith
  have hrvs : r * (2 - r / A) * (1 - r / A) ≤ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hvs2 hr]
  have hl : -4 ≤ -112 * (1 - r / A) / A -
      r * (2 - r / A) * (1 - r / A) := by
    rw [show -112 * (1 - r / A) / A = -(112 * (1 - r / A) / A) by ring]
    linarith
  have hlast := mul_le_mul_of_nonneg_left hl hg0
  unfold endpointDerivativePolynomial
  nlinarith

/-- Both actual source jets give a strictly negative critical numerator away from the seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1919933e274056fd1a411be3ac4f5cecbb3c8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
