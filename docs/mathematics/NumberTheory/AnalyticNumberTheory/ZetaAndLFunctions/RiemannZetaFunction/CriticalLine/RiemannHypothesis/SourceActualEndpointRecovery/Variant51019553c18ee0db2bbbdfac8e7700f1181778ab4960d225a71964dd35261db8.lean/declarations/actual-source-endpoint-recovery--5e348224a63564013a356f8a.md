# actual_source_endpoint_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:733be77d-ee00-93e1-5d4c-6abaa2aedb68",
  "kind": "theorem",
  "lexical_name": "actual_source_endpoint_recovery",
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
  "slug": "actual-source-endpoint-recovery--5e348224a63564013a356f8a",
  "source": {
    "blob": "6360afefd30717f501de0f8c646167245d06395b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e348224a63564013a356f8a5c38a2a64b5ed0f00b52808f22a83707da1ac4ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733be77d-ee00-93e1-5d4c-6abaa2aedb68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_endpoint_recovery {A : ℝ} (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    actualBilateralCorrelationTransform A z =
      positiveEndpoint A z + negativeEndpoint A z + invariantMixed A z := by
  have hAn : A ≠ 0 := by linarith
  have hAc : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hAn
  have hZn : sourceNormalization A ≠ 0 := (source_normalization_pos A hA).ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hZn
  have hb : actualBilateralCorrelationTransform A z =
      ((A / sourceNormalization A : ℝ) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 *
        bumpLaplace ((A : ℂ) * z) ^ 2 := by
    have h := actualBilateralCorrelationTransform_eq_bump hA (z + 1 / 2)
    convert h using 1 <;> ring
  rw [hb, bump_laplace_endpoint_formula ((A : ℂ) * z) (mul_ne_zero hAc hz)]
  have hep : Complex.exp (2 * (A : ℂ) * z) = Complex.exp ((A : ℂ) * z) ^ 2 := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  have hem : Complex.exp (-2 * (A : ℂ) * z) = Complex.exp (-((A : ℂ) * z)) ^ 2 := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  have hepm : Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z)) = 1 := by
    rw [← Complex.exp_add]
    simp
  unfold positiveEndpoint negativeEndpoint invariantMixed endpointCommon endpointPlus endpointMinus
  rw [hep, hem]
  push_cast
  field_simp
  ring_nf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6360afefd30717f501de0f8c646167245d06395b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
