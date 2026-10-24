# actual_correlation_deriv_upper_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bc60d7a35fa972a33a3536348e26799f2f2c569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1754a724761c2eceb9414866483b1238103cd7c6efc3c481227e0881980dd4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0d05ffe-05ca-c4ce-54a1-59b43391c5d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e61b861-fb19-70b0-0df3-8b571f03e37c",
  "kind": "theorem",
  "lexical_name": "actual_correlation_deriv_upper_edge_abs_le",
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
  "slug": "actual-correlation-deriv-upper-edge-abs-le--66aa2ac9aee11a9ce3b792fe",
  "source": {
    "blob": "4bc60d7a35fa972a33a3536348e26799f2f2c569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt02/Variant1754a724761c2eceb9414866483b1238103cd7c6efc3c481227e0881980dd4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66aa2ac9aee11a9ce3b792fe6e109b60d4691c221b2d6fff1348fefafa6817f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt02/Variant1754a724761c2eceb9414866483b1238103cd7c6efc3c481227e0881980dd4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e61b861-fb19-70b0-0df3-8b571f03e37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_deriv_upper_edge_abs_le (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z)| ≤
      edgeFirstPolynomial z / A ^ 9 := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hi : |∫ r in (0 : ℝ)..z,
      endpointDerivativePolynomial A r * endpointPolynomial A (z - r)| ≤
      (1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z := by
    have h := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := z)
      (f := fun r ↦ endpointDerivativePolynomial A r * endpointPolynomial A (z - r))
      (C := (1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4)) ?_
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hz] using h
    · intro r hr
      have hrI : r ∈ Ioc (0 : ℝ) z := uIoc_of_le hz ▸ hr
      have hr' : r ∈ Icc (0 : ℝ) z := ⟨hrI.1.le, hrI.2⟩
      have hder := endpointDerivativePolynomial_abs_le A r hA hr'.1 (hr'.2.trans hzA)
      have h3 : r ^ 3 ≤ z ^ 3 := pow_le_pow_left₀ hr'.1 hr'.2 3
      have hd : |endpointDerivativePolynomial A r| ≤ 1280 * z + 16 * z ^ 3 :=
        hder.trans (by nlinarith [hr'.2])
      have he := endpointPolynomial_abs_le A (z - r) hA
        (by linarith [hr'.2]) (by linarith [hr'.1])
      have h2 : (z - r) ^ 2 ≤ z ^ 2 :=
        (sq_le_sq₀ (by linarith [hr'.2]) hz).2 (by linarith [hr'.1])
      have h4 : (z - r) ^ 4 ≤ z ^ 4 := by nlinarith [sq_nonneg (z ^ 2 - (z - r) ^ 2)]
      have hp : |endpointPolynomial A (z - r)| ≤ 192 * z ^ 2 + 4 * z ^ 4 :=
        he.trans (by nlinarith)
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul hd hp (abs_nonneg _) (by positivity)
  rw [actual_correlation_deriv_upper_edge A z hA hz hzA, abs_mul, abs_neg,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (A ^ 9 * sourceNormalization A))]
  calc
    _ ≤ 1 / (A ^ 9 * sourceNormalization A) *
        ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ edgeFirstPolynomial z / A ^ 9 := by
      apply (le_div_iff₀ (pow_pos hA0 9)).2
      have hn := actualNormalization_ge_one_div_32 A
      have hb : 1 / sourceNormalization A ≤ 32 := by
        apply (div_le_iff₀ hZ).2
        linarith
      calc
        _ = (1 / sourceNormalization A) *
            ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) := by field_simp
        _ ≤ 32 * ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) :=
          mul_le_mul_of_nonneg_right hb (by positivity)
        _ = _ := by unfold edgeFirstPolynomial; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeCorrelationDerivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt02/Variant1754a724761c2eceb9414866483b1238103cd7c6efc3c481227e0881980dd4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt02/Variant1754a724761c2eceb9414866483b1238103cd7c6efc3c481227e0881980dd4f0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc60d7a35fa972a33a3536348e26799f2f2c569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
