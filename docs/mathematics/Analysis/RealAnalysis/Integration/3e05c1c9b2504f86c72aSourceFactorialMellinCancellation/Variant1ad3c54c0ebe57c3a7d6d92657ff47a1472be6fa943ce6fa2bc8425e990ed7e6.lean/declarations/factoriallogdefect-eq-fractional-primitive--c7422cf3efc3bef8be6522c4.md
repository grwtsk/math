# factorialLogDefect_eq_fractional_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d2189f-8412-314e-53b2-c6545f33c178",
  "kind": "theorem",
  "lexical_name": "factorialLogDefect_eq_fractional_primitive",
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
  "slug": "factoriallogdefect-eq-fractional-primitive--c7422cf3efc3bef8be6522c4",
  "source": {
    "blob": "f4e86d1cff60b3d9e6d79a798c3faf444c17a8e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7422cf3efc3bef8be6522c4a6685725509d925f9a72464dfd8197734c60ade1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d2189f-8412-314e-53b2-c6545f33c178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialLogDefect_eq_fractional_primitive {y : ℝ} (hy : 1 ≤ y) :
    factorialLogDefect y = 1 - Int.fract y * Real.log y +
      ∫ t in 1..y, Int.fract t / t := by
  have hfrac : IntervalIntegrable (fun t : ℝ => Int.fract t / t) volume 1 y := by
    have hi : IntervalIntegrable (fun t : ℝ => t⁻¹) volume 1 y :=
      (continuousOn_id.inv₀ (fun t ht => by
        simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t))) :
        ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
    have hii := (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp hi
    have h := hii.bdd_mul (measurable_fract.aestronglyMeasurable.restrict) (by
      filter_upwards with t
      simpa only [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg t)]
        using (Int.fract_lt_one t).le)
    change Integrable (fun t : ℝ => Int.fract t / t) (volume.restrict (Icc 1 y))
    simpa only [div_eq_mul_inv] using h
  have hf : IntervalIntegrable (fun t : ℝ => (⌊t⌋₊ : ℝ) / t) volume 1 y := by
    have hi : IntegrableOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
      (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
        ((continuousOn_id.inv₀ (fun t ht => by
        simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t))) :
          ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy)
    have hh := integrableOn_mul_sum_Icc (m := 0) positiveUnitCoefficient
      (by norm_num : (0 : ℝ) ≤ 1) hi
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
    apply hh.congr_fun
    · intro t _
      dsimp only
      rw [positiveUnitCoefficient_sum]
      ring
    · exact measurableSet_Icc
  have he : (∫ t in 1..y, (⌊t⌋₊ : ℝ) / t) +
      (∫ t in 1..y, Int.fract t / t) = y - 1 := by
    rw [← intervalIntegral.integral_add hf hfrac]
    have hd : (∫ t in 1..y, (⌊t⌋₊ : ℝ) / t + Int.fract t / t) =
        ∫ _t in 1..y, (1 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro t ht
      rw [uIcc_of_le hy] at ht
      have ht0 : 0 < t := by linarith [ht.1]
      simp only [Int.fract, ← natCast_floor_eq_intCast_floor ht0.le]
      field_simp
      ring
    rw [hd]
    simp
  unfold factorialLogDefect
  rw [factorial_log_closed_Abel hy]
  rw [show Int.fract y = y - (⌊y⌋₊ : ℝ) by
    simp only [Int.fract, ← natCast_floor_eq_intCast_floor (by linarith : 0 ≤ y)] ]
  nlinarith

/-- The below-one defect is genuine and is not a centered sawtooth extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e86d1cff60b3d9e6d79a798c3faf444c17a8e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
