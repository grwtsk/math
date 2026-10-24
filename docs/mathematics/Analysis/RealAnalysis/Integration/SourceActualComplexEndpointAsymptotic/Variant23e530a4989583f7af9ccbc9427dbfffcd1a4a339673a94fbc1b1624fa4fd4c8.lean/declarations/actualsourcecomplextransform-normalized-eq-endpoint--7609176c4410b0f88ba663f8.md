# actualSourceComplexTransform_normalized_eq_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f0d4576-7127-3b98-9f27-b67dd2a63bce",
  "kind": "theorem",
  "lexical_name": "actualSourceComplexTransform_normalized_eq_endpoint",
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
  "slug": "actualsourcecomplextransform-normalized-eq-endpoint--7609176c4410b0f88ba663f8",
  "source": {
    "blob": "6aeb8c7527379784817ad3acc21c737e74f4397f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7609176c4410b0f88ba663f8ccb4fb3bdea675f3101bad77ec1a5f92113d7a8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0d4576-7127-3b98-9f27-b67dd2a63bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceComplexTransform_normalized_eq_endpoint {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) :
    ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
      Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z =
        ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u := by
  rw [actualComplexEndpoint_integral_eq_interval hA]
  let k : ℝ := A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)
  have hk : k ≠ 0 := by
    dsimp [k]
    have hp : 0 < A := by linarith
    have hZ := source_normalization_pos A hA
    positivity
  have ht : actualSourceComplexTransform A z =
      ∫ u in 0..(2 * A), (normalizedTest explicitSecondDerivative A (A - u) : ℂ) *
        Complex.exp (z * ((A - u : ℝ) : ℂ)) := by
    have hh := intervalIntegral.integral_comp_sub_left
      (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ))) (a := (0 : ℝ)) (b := 2 * A) A
    have hab : A - 2 * A = -A := by ring
    simpa only [hab, sub_zero, actualSourceComplexTransform] using hh.symm
  rw [ht, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro u hu
  dsimp only
  rw [uIcc_of_le (show (0 : ℝ) ≤ 2 * A by linarith)] at hu
  rw [normalizedTest_endpoint A u hA hu.1 hu.2]
  change ((k : ℂ) * Complex.exp (-z * (A : ℂ))) *
      (((endpointPolynomial A u / k : ℝ) : ℂ) *
        Complex.exp (z * ((A - u : ℝ) : ℂ))) = _
  rw [Complex.ofReal_div, Complex.ofReal_sub]
  have hex : Complex.exp (-z * (A : ℂ)) * Complex.exp (z * ((A : ℂ) - (u : ℂ))) =
      Complex.exp (-z * (u : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  calc
    _ = ((k : ℂ) * ((endpointPolynomial A u : ℂ) / (k : ℂ))) *
        (Complex.exp (-z * (A : ℂ)) * Complex.exp (z * ((A : ℂ) - (u : ℂ)))) := by ring
    _ = _ := by rw [hex]; field_simp [Complex.ofReal_ne_zero.mpr hk]

/-- The actual source transform has a genuine positive-half-plane endpoint limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aeb8c7527379784817ad3acc21c737e74f4397f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
