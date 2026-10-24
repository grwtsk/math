# laplace_response_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2cf81c2-ec19-94e6-de83-3544404f39a8",
  "kind": "theorem",
  "lexical_name": "laplace_response_integral",
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
  "slug": "laplace-response-integral--703e1f5c662f5b05f95641c3",
  "source": {
    "blob": "f7b5727f170b4abc83449832084a8ceeb23f36e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 84,
    "path": "GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:703e1f5c662f5b05f95641c3e938e13a71c761ce20d515262069d4c1602ac389",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2cf81c2-ec19-94e6-de83-3544404f39a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplace_response_integral {n : ℕ} (hn : 1 ≤ n) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, laplaceResponse n z t) =
      2 * (atomInverseHalf n : ℂ) *
        Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) / z -
      2 * Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) / (z + 1 / 2) := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  have hzneg : (-z).re < 0 := by simpa using neg_neg_of_pos hz
  have hshift : (-(z + 1 / 2)).re < 0 := by
    simp only [Complex.neg_re, Complex.add_re]
    norm_num
    linarith
  have first := (integrableOn_exp_mul_complex_Ioi hzneg (Real.log (n : ℝ))).const_mul
    (2 * (atomInverseHalf n : ℂ))
  have second := (integrableOn_exp_mul_complex_Ioi hshift (Real.log (n : ℝ))).const_mul
    (2 : ℂ)
  have inclusion : Ioi (Real.log (n : ℝ)) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact lt_of_le_of_lt logNonnegative ht
  rw [laplace_response_indicator hn, setIntegral_indicator measurableSet_Ioi,
    inter_eq_right.mpr inclusion]
  unfold ungatedLaplaceResponse
  rw [integral_sub first second, integral_const_mul, integral_const_mul,
    integral_exp_mul_complex_Ioi hzneg, integral_exp_mul_complex_Ioi hshift]
  simp only [neg_div, div_neg, neg_neg]
  ring

/-- The actual inverse-half weight uses the real logarithm of the positive atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b5727f170b4abc83449832084a8ceeb23f36e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
