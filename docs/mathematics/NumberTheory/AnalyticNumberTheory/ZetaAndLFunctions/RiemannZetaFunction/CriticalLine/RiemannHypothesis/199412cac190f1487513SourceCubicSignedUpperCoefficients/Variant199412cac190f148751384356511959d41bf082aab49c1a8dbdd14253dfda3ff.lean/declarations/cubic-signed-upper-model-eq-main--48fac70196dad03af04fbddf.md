# cubic_signed_upper_model_eq_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fe2c66f51be866483a161dd8c8294cd3ba25959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68d72249-fc01-0ca4-bba9-28f5c4258439",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60d78112-db2f-a11d-3f0d-f63912db6119",
  "kind": "theorem",
  "lexical_name": "cubic_signed_upper_model_eq_main",
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
  "slug": "cubic-signed-upper-model-eq-main--48fac70196dad03af04fbddf",
  "source": {
    "blob": "1fe2c66f51be866483a161dd8c8294cd3ba25959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48fac70196dad03af04fbddf9e59cc2d645d180623fcc4b04f2ce73eebc09eac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d78112-db2f-a11d-3f0d-f63912db6119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_signed_upper_model_eq_main (A k : ℝ) :
    cubicSignedUpperModelRow A k = cubicUpperMainTerm A k := by
  let c0 := sourceCorrelation explicitSecondDerivative A (Real.log k)
  let c1 := deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)
  let c2 := deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k)
  let c3 := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k)
  have h0 := (cubicUpperCoefficientWeight_integrable 0).const_mul c0
  have h1 := (cubicUpperCoefficientWeight_integrable 1).const_mul (2 * c1 - c0 / 2)
  have h2 := (cubicUpperCoefficientWeight_integrable 2).const_mul (3 / 2 * c2 - c1 / 2)
  have h3 := (cubicUpperCoefficientWeight_integrable 3).const_mul (2 / 3 * c3 - c2 / 4)
  have h4 := (cubicUpperCoefficientWeight_integrable 4).const_mul (-c3 / 12)
  unfold cubicSignedUpperModelRow
  simp_rw [cubic_model_integrand_eq_upper_coefficients]
  have hs4 := integral_add (((h0.add h1).add h2).add h3) h4
  have hs3 := integral_add ((h0.add h1).add h2) h3
  have hs2 := integral_add (h0.add h1) h2
  have hs1 := integral_add h0 h1
  simp only [Pi.add_apply, c0, c1, c2, c3] at hs4 hs3 hs2 hs1
  rw [integral_const_mul, hs4, hs3, hs2, hs1]
  simp_rw [integral_const_mul]
  unfold cubicUpperMainTerm cubicUpperBeta0 cubicUpperBeta1 cubicUpperBeta2 cubicUpperBeta3
    cubicUpperCoefficientMoment
  ring

/-- Actual source samples equal the retained upper baseline, all signed jets and actual error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe2c66f51be866483a161dd8c8294cd3ba25959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
