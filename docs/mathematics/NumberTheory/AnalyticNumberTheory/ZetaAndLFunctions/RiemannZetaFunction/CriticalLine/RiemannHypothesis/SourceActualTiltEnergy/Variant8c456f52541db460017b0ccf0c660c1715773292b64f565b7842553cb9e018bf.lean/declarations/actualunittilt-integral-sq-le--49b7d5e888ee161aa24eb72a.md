# actualUnitTilt_integral_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c2636b6-4da7-5435-5356-89102b245e5f",
  "kind": "theorem",
  "lexical_name": "actualUnitTilt_integral_sq_le",
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
  "slug": "actualunittilt-integral-sq-le--49b7d5e888ee161aa24eb72a",
  "source": {
    "blob": "b47132065e8793181168bcd8c7f36debb097b7b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant8c456f52541db460017b0ccf0c660c1715773292b64f565b7842553cb9e018bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b7d5e888ee161aa24eb72a041aa8119fe90b830ed53b1e9db32cff206af7db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant8c456f52541db460017b0ccf0c660c1715773292b64f565b7842553cb9e018bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c2636b6-4da7-5435-5356-89102b245e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTilt_integral_sq_le {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in -A..A, actualUnitTilt A x) ^ 2 ≤ 2 * A * actualUnitTiltEnergy A := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  let m : ℝ := (∫ x in -A..A, actualUnitTilt A x) / (2 * A)
  have hn : 0 ≤ ∫ x in -A..A, (actualUnitTilt A x - m) ^ 2 :=
    intervalIntegral.integral_nonneg (by linarith) (fun _ _ => sq_nonneg _)
  have he : (∫ x in -A..A, (actualUnitTilt A x - m) ^ 2) =
      actualUnitTiltEnergy A - 2 * m * (∫ x in -A..A, actualUnitTilt A x) +
        (2 * A) * m ^ 2 := by
    have hf (x : ℝ) : (actualUnitTilt A x - m) ^ 2 =
        actualUnitTilt A x ^ 2 - (2 * m) * actualUnitTilt A x + m ^ 2 := by ring
    simp_rw [hf]
    rw [intervalIntegral.integral_add
      ((hc.pow 2).intervalIntegrable _ _ |>.sub ((hc.const_mul (2 * m)).intervalIntegrable _ _))
      intervalIntegrable_const,
      intervalIntegral.integral_sub ((hc.pow 2).intervalIntegrable _ _)
        ((hc.const_mul (2 * m)).intervalIntegrable _ _),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
    simp only [actualUnitTiltEnergy, smul_eq_mul]
    ring
  rw [he] at hn
  dsimp [m] at hn
  have hn' := mul_nonneg hn (show 0 ≤ 2 * A by positivity)
  field_simp [hp.ne'] at hn'
  nlinarith

/-- The actual fixed-argument transform forces an eventual exponential energy lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant8c456f52541db460017b0ccf0c660c1715773292b64f565b7842553cb9e018bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant8c456f52541db460017b0ccf0c660c1715773292b64f565b7842553cb9e018bf.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47132065e8793181168bcd8c7f36debb097b7b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
