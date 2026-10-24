# actual_five_eight_source_difference_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a663d0ba-69c9-d129-e61a-c7363b02eeb3",
  "kind": "theorem",
  "lexical_name": "actual_five_eight_source_difference_ne_zero",
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
  "slug": "actual-five-eight-source-difference-ne-zero--1531e4e7e904232d1a4c4459",
  "source": {
    "blob": "a59e0ce54bb9291106b2819f3761818576c8c6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant58b1903bca4405a7c1be915e7c8938be4feed9752ffe61037f98658b9a27d3ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1531e4e7e904232d1a4c4459ee571629772a324f5babfba1c0bbcd3ae66a7a8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant58b1903bca4405a7c1be915e7c8938be4feed9752ffe61037f98658b9a27d3ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a663d0ba-69c9-d129-e61a-c7363b02eeb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_five_eight_source_difference_ne_zero (q : ComplexL2)
    (hq : q =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative 2 x : ℂ)) :
    orbitAtom q false false 5 - orbitAtom q false false 8 ≠ 0 := by
  intro hz
  have he : translation (Real.log 5) q = translation (Real.log 8) q := by
    simpa only [orbitAtom, signedLog, Bool.false_eq_true, ↓reduceIte, Nat.cast_ofNat]
      using sub_eq_zero.mp hz
  let f5 : ℝ → ℂ := fun x => (normalizedTest explicitSecondDerivative 2 (x - Real.log 5) : ℂ)
  let f8 : ℝ → ℂ := fun x => (normalizedTest explicitSecondDerivative 2 (x - Real.log 8) : ℂ)
  have hae : f5 =ᵐ[volume] f8 := by
    filter_upwards [translation_coe_ae (Real.log 5) q, translation_coe_ae (Real.log 8) q,
      (measurePreserving_sub_right volume (Real.log 5)).quasiMeasurePreserving.ae hq,
      (measurePreserving_sub_right volume (Real.log 8)).quasiMeasurePreserving.ae hq]
      with x ht5 ht8 h5 h8
    have h := congrArg (fun z : ComplexL2 => z x) he
    rw [ht5, ht8, h5, h8] at h
    exact h
  have hc := Complex.continuous_ofReal.comp
    (normalizedTest_contDiff 2 (by norm_num)).continuous
  have hc5 : Continuous f5 := hc.comp (continuous_id.sub continuous_const)
  have hc8 : Continuous f8 := hc.comp (continuous_id.sub continuous_const)
  have hpoint : f5 = f8 := (hc5.ae_eq_iff_eq volume hc8).mp hae
  let δ : ℝ := Real.log (8 / 5 : ℝ)
  have hδ : 0 < δ := Real.log_pos (by norm_num)
  have hδupper : δ ≤ 3 / 5 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 8 / 5)
    norm_num at h
    exact h
  have hlogs : Real.log 8 - Real.log 5 = δ := by
    exact (Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)).symm
  let x : ℝ := Real.log 8 + 2 - δ / 2
  have h8 : x - Real.log 8 = 2 - δ / 2 := by dsimp [x]; ring
  have h5 : x - Real.log 5 = 2 + δ / 2 := by dsimp [x]; linarith
  have hpos : 0 < normalizedTest explicitSecondDerivative 2 (x - Real.log 8) := by
    rw [h8]
    apply normalizedTest_two_pos
    · rw [abs_of_pos (by linarith : 0 < 2 - δ / 2)]
      linarith
    · rw [abs_of_pos (by linarith : 0 < 2 - δ / 2)]
      linarith
  have hzero : normalizedTest explicitSecondDerivative 2 (x - Real.log 5) = 0 := by
    apply normalizedTest_zero_of_le_abs 2 _ (by norm_num)
    rw [h5, abs_of_pos (by linarith : 0 < 2 + δ / 2)]
    linarith
  have h := congrArg Complex.re (congrFun hpoint x)
  change normalizedTest explicitSecondDerivative 2 (x - Real.log 5) =
    normalizedTest explicitSecondDerivative 2 (x - Real.log 8) at h
  rw [hzero] at h
  linarith

/-- The explicit coarse-invisible fine direction has strictly positive true
Gram norm. This excludes a lower norm transport through the collapsed pattern
total even after the Euclidean coefficient metric is replaced by source synthesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant58b1903bca4405a7c1be915e7c8938be4feed9752ffe61037f98658b9a27d3ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant58b1903bca4405a7c1be915e7c8938be4feed9752ffe61037f98658b9a27d3ba.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a59e0ce54bb9291106b2819f3761818576c8c6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
