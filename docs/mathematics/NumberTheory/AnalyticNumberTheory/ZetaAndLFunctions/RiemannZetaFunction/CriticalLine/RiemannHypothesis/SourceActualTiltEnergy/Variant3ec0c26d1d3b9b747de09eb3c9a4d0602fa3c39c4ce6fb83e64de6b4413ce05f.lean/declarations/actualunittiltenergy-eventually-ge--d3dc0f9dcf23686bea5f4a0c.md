# actualUnitTiltEnergy_eventually_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ad4e6a8-9f2b-0669-e280-a05c7262784d",
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
  "slug": "actualunittiltenergy-eventually-ge--d3dc0f9dcf23686bea5f4a0c",
  "source": {
    "blob": "88142cf506a5751fc42cbb834c958f10871b7e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant3ec0c26d1d3b9b747de09eb3c9a4d0602fa3c39c4ce6fb83e64de6b4413ce05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3dc0f9dcf23686bea5f4a0c856b8cec1a1b7a3d1a26f888d8b76824b3e54f12",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant3ec0c26d1d3b9b747de09eb3c9a4d0602fa3c39c4ce6fb83e64de6b4413ce05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad4e6a8-9f2b-0669-e280-a05c7262784d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–115.

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
    simp only [Function.comp_apply]
    rw [actualBilateralCorrelationTransform_eq_square hA, actualUnitTilt_transform]
    have he : actualCorrelationAsymptoticScale A 1 =
        ((A ^ 9 * sourceNormalization A * Real.exp (-2 * A) : ℝ) : ℂ) := by
      unfold actualCorrelationAsymptoticScale
      rw [show -2 * (1 : ℂ) * (A : ℂ) = ((-2 * A : ℝ) : ℂ) by push_cast; ring]
      rw [← Complex.ofReal_exp, ← Complex.ofReal_mul]
    rw [he]
    simp only [← Complex.ofReal_pow, ← Complex.ofReal_mul, Complex.ofReal_re]
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
  have hc : Real.exp (2 * A) *
      (A ^ 9 * Real.exp (-2 * A) * (2 * A * actualUnitTiltEnergy A)) =
      2 * actualUnitTiltEnergy A * A ^ 10 := by
    calc
      _ = 2 * actualUnitTiltEnergy A * A ^ 10 *
        (Real.exp (-2 * A) * Real.exp (2 * A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hc] at hfinal
  nlinarith

end FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant3ec0c26d1d3b9b747de09eb3c9a4d0602fa3c39c4ce6fb83e64de6b4413ce05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltEnergy/Variant3ec0c26d1d3b9b747de09eb3c9a4d0602fa3c39c4ce6fb83e64de6b4413ce05f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88142cf506a5751fc42cbb834c958f10871b7e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
