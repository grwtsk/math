# actualDampedXiFinitePrimitive_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411dbdce-fd22-ce87-8fff-bd134450bd42",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_abel",
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
  "slug": "actualdampedxifiniteprimitive-abel--f0a0b218ece04dba50b1a817",
  "source": {
    "blob": "6b692776fe9f8966ec430cb4de561416a68645ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a0b218ece04dba50b1a8178d9a334e768edca34394b4f0776ba7526455b587",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411dbdce-fd22-ce87-8fff-bd134450bd42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_abel {T : ℝ} (hT : Real.log 7 ≤ T) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive T =
      (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) -
        actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
  have hq : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-t / 2)) := by fun_prop
  have ha := (actualAnchoredXiTailPrimitive_absolutelyContinuous hT).integral_deriv_mul_eq_sub
    hq.contDiffOn.absolutelyContinuousOnInterval
  have he : (∫ t in Real.log 7..T,
      actualXiTailTimeDensity t * Real.exp (-t / 2) +
        actualAnchoredXiTailPrimitive t * (-(1 / 2) * Real.exp (-t / 2))) =
          actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
    rw [← ha, actualAnchoredXiTailPrimitive_at_lower]
    simp only [zero_mul, sub_zero]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hT] with t ht hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv, (damped_hasDerivAt t).deriv]
  have hd := (actualXiTailTimeDensity_intervalIntegrable hT).mul_continuousOn
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).continuousOn
  have hf := (actualDampedXiFinitePrimitive_intervalIntegrable hT).const_mul (-(1 / 2 : ℝ))
  have hc : (fun t : ℝ => actualAnchoredXiTailPrimitive t *
      (-(1 / 2) * Real.exp (-t / 2))) =
        (fun t => -(1 / 2 : ℝ) * (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2))) := by
    funext t
    ring
  rw [hc, intervalIntegral.integral_add hd hf, intervalIntegral.integral_const_mul,
    actualXiTimeDamped_eq_inverseSquare] at he
  unfold actualDampedXiFinitePrimitive
  linarith

/-- The signed finite readout retains actual E, both Xi heads and the full primitive trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b692776fe9f8966ec430cb4de561416a68645ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
