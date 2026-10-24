# actualDilationRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9bbf313dd8474190ee9e1a796205982c4ebc11ab071dd29582da9ad39921a13",
  "kind": "def",
  "lexical_name": "actualDilationRealization",
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
  "slug": "actualdilationrealization--f309e9eeee305544fade8af6",
  "source": {
    "blob": "629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 168,
    "path": "GRWTSK/Analysis/Distribution/CompactProfileDilation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f309e9eeee305544fade8af6f519f71291d6c69ef25125d0b5ca8e859bb314e8",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/CompactProfileDilation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9bbf313dd8474190ee9e1a796205982c4ebc11ab071dd29582da9ad39921a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualDilationRealization
    (archimedean : ∀ A : ℝ, 1 ≤ A → Integrable
      (GRWTSK.RiemannHypothesis.SourcePairing.archimedeanIntegrand sourceSecond A)) :
    GRWTSK.RiemannHypothesis.SourcePairing.DilationRealization where
  secondDerivative := sourceSecond
  weak_second_derivative A hA := actual_weak_second_derivative (by linarith)
  zero_extension A hA x hx := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    exact sourceResidual_zero_outside (by linarith) hx
  test_integrable A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    exact (sourceResidual_continuous A).integrable_of_hasCompactSupport
      (sourceResidual_hasCompactSupport (by linarith))
  test_square_integrable A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    simpa only [sq_abs] using sourceResidual_square_integrable (by linarith : 0 < A)
  normalization A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    simpa only [sourceNormalization, sq_abs] using
      source_normalization_eq_rational (by linarith : 0 < A)
  positive_pole_integrable A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    simpa only [one_div, mul_comm, ← div_eq_mul_inv] using
      normalized_source_exponential_integrable (by linarith : 0 < A) (1 / 2)
  negative_pole_integrable A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    convert normalized_source_exponential_integrable (by linarith : 0 < A) (-1 / 2) using 1
    ext x
    congr 2
    ring
  positive_pole_zero A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact positive_pole_integral_zero (by linarith)
  negative_pole_zero A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact negative_pole_integral_zero (by linarith)
  correlation_product_integrable A hA t := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact compact_product_integrable (SourceNormalization.normalized_source_continuous A)
      (normalized_source_hasCompactSupport (by linarith))
      ((SourceNormalization.normalized_source_continuous A).comp
        (continuous_id.sub continuous_const))
  correlation_regular A hA := by
    rw [source_pairing_correlation_eq (by linarith : 0 < A)]
    exact correlation_contDiff_one (by linarith)
  archimedean_integrable := archimedean
  signed_pairing_integrable _A hA := SourceSignedIntegrability.signed_pairing_integrable hA

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceDilation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/CompactProfileDilation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/CompactProfileDilation.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
