# actual_archimedean_upper_by_derivative_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f69ca87-8542-8fe4-4cef-99ed246c76ca",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_upper_by_derivative_energy",
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
  "slug": "actual-archimedean-upper-by-derivative-energy--effafed014d2218be5c03f94",
  "source": {
    "blob": "a3b80497be8e67c4ed4d267d1dcc50d9ac23a67f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:effafed014d2218be5c03f94cfc30b65bdf658842d6b60812a13e53a8977cd11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f69ca87-8542-8fe4-4cef-99ed246c76ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_upper_by_derivative_energy {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have hmajor := ((actual_fourier_square_integrable A hA).const_mul
      (archimedeanMultiplier 0)).add
    ((actual_source_second_moment_integrable hA).const_mul 18)
  have h := integral_mono (AdmissionSource.archimedean_integrability A hA) hmajor
    (fun ξ => show archimedeanIntegrand explicitSecondDerivative A ξ ≤
      archimedeanMultiplier 0 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) +
      18 * (ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) from by
      dsimp only [archimedeanIntegrand]
      have hb := mul_le_mul_of_nonneg_right (actual_multiplier_quadratic_upper ξ)
        (Complex.normSq_nonneg (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
      nlinarith)
  simp only [Pi.add_apply] at h
  rw [integral_add ((actual_fourier_square_integrable A hA).const_mul _)
      ((actual_source_second_moment_integrable hA).const_mul _),
    integral_const_mul, integral_const_mul, actual_source_fourier_mass A hA,
    actual_source_second_moment hA] at h
  unfold archimedeanValue
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * Real.pi)).mpr
  nlinarith

/-- All real scales A≥1 have the explicit original archimedean upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b80497be8e67c4ed4d267d1dcc50d9ac23a67f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
