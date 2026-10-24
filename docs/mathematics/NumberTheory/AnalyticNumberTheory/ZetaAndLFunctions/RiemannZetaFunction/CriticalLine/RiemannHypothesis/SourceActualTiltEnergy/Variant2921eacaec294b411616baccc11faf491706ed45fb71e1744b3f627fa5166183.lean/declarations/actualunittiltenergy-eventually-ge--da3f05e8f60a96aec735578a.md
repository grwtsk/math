# actualUnitTiltEnergy_eventually_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b185c0a8-5137-b647-f9be-3eadbf58e824",
  "kind": "theorem",
  "lexical_name": "actualUnitTiltEnergy_eventually_ge",
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
  "slug": "actualunittiltenergy-eventually-ge--da3f05e8f60a96aec735578a",
  "source": {
    "blob": "03dc91cd8018eb3ecb4fc7ed2fd7c3b47051fe44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant2921eacaec294b411616baccc11faf491706ed45fb71e1744b3f627fa5166183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da3f05e8f60a96aec735578a51142481f97922f10d6619f5af4e94cba1692857",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant2921eacaec294b411616baccc11faf491706ed45fb71e1744b3f627fa5166183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b185c0a8-5137-b647-f9be-3eadbf58e824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTiltEnergy_eventually_ge :
    ∀ᶠ A : ℝ in atTop, 20736 * Real.exp (2 * A) / A ^ 10 ≤ actualUnitTiltEnergy A := by
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    (actualBilateralCorrelationTransform_normalized_tendsto (z := 1) (by norm_num))
  have ht' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A * Real.exp (-2 * A) *
      (∫ x in -A..A, actualUnitTilt A x) ^ 2) atTop (𝓝 (82944 : ℝ)) := by
    norm_num at ht
    apply ht.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [actualBilateralCorrelationTransform_eq_square hA, actualUnitTilt_transform]
    simp [actualCorrelationAsymptoticScale, ← Complex.ofReal_exp,
      Complex.mul_re, Complex.pow_re]
  have hz := actualSourceNormalization_tendsto.eventually (gt_mem_nhds (by norm_num :
    ((65536 / 109395 : ℝ) / 16) < 1))
  have hm := ht'.eventually (lt_mem_nhds (by norm_num : (41472 : ℝ) < 82944))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hz, hm] with A hA hZ hM
  have hp : 0 < A := by linarith
  have hs := actualUnitTilt_integral_sq_le hA
  have hn : 0 ≤ (∫ x in -A..A, actualUnitTilt A x) ^ 2 := sq_nonneg _
  have hM' : 41472 ≤ A ^ 9 * Real.exp (-2 * A) *
      (∫ x in -A..A, actualUnitTilt A x) ^ 2 := by
    have hcomp := mul_le_mul_of_nonneg_right hZ.le
      (show 0 ≤ A ^ 9 * Real.exp (-2 * A) *
        (∫ x in -A..A, actualUnitTilt A x) ^ 2 by positivity)
    nlinarith
  have hscale := mul_le_mul_of_nonneg_left hs
    (show 0 ≤ A ^ 9 * Real.exp (-2 * A) by positivity)
  have he : Real.exp (-2 * A) * Real.exp (2 * A) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    simp
  apply (div_le_iff₀ (show 0 < A ^ 10 by positivity)).2
  have hfinal := mul_le_mul_of_nonneg_left (hM'.trans hscale) (Real.exp_pos (2 * A)).le
  nlinarith [he]

end FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant2921eacaec294b411616baccc11faf491706ed45fb71e1744b3f627fa5166183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant2921eacaec294b411616baccc11faf491706ed45fb71e1744b3f627fa5166183.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03dc91cd8018eb3ecb4fc7ed2fd7c3b47051fe44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
