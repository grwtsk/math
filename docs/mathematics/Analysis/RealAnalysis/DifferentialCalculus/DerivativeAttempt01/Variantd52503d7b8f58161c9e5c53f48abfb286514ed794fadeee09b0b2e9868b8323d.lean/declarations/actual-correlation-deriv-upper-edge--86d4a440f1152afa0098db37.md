# actual_correlation_deriv_upper_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39ec28203fb888bddcb0413f31d5a71eab404356",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a06f91b4-4ccf-f451-67f8-3e55a8bcac16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ce427ec-ca1a-273e-14ba-644ebf78fc1c",
  "kind": "theorem",
  "lexical_name": "actual_correlation_deriv_upper_edge",
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
  "slug": "actual-correlation-deriv-upper-edge--86d4a440f1152afa0098db37",
  "source": {
    "blob": "39ec28203fb888bddcb0413f31d5a71eab404356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d4a440f1152afa0098db37fbbadaaa7cd464d423881e57464d24f8fb2e1e37",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ce427ec-ca1a-273e-14ba-644ebf78fc1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_deriv_upper_edge (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z) =
      -(1 / (A ^ 9 * sourceNormalization A)) *
        ∫ r in (0 : ℝ)..z,
          endpointDerivativePolynomial A r * endpointPolynomial A (z - r) := by
  have hA0 : 0 < A := by linarith
  rw [actual_correlation_deriv_edge_overlap A z hA hz]
  have hs := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := z)
    (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - z))) A
  simp only [sub_zero] at hs
  rw [← hs, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro r hr
  have hr' : r ∈ Icc (0 : ℝ) z := (uIcc_of_le hz) ▸ hr
  dsimp only
  rw [show A - r - (2 * A - z) = -(A - (z - r)) by ring,
    normalizedTest_even A hA (A - (z - r)),
    actual_normalized_deriv_endpoint A r hA hr'.1 (hr'.2.trans hzA),
    normalizedTest_endpoint A (z - r) hA (by linarith [hr'.2]) (by linarith [hr'.1])]
  have hZ := source_normalization_pos A hA
  field_simp [hA0.ne', hZ.ne', Real.sqrt_ne_zero'.mpr hA0, Real.sqrt_ne_zero'.mpr hZ]
  rw [Real.sq_sqrt hA0.le, Real.sq_sqrt hZ.le]
  ring

/-- A fixed nonnegative polynomial for the original first-derivative edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ec28203fb888bddcb0413f31d5a71eab404356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
