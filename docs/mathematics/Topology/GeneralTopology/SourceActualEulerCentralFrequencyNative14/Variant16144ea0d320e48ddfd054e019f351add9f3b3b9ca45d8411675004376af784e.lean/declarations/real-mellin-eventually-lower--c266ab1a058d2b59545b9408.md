# real_mellin_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0006277-41f5-a3c6-55d0-8470fd9a58d3",
  "kind": "theorem",
  "lexical_name": "real_mellin_eventually_lower",
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
  "slug": "real-mellin-eventually-lower--c266ab1a058d2b59545b9408",
  "source": {
    "blob": "0d9e51e5cff8c95071003e3d9b84d91592eaf968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant16144ea0d320e48ddfd054e019f351add9f3b3b9ca45d8411675004376af784e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c266ab1a058d2b59545b9408140f301018e521634f5482e7bad716bd21e0be2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant16144ea0d320e48ddfd054e019f351add9f3b3b9ca45d8411675004376af784e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0006277-41f5-a3c6-55d0-8470fd9a58d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem real_mellin_eventually_lower :
    ∀ᶠ A : ℝ in atTop, 41472 * Real.exp (2 * A) / A ^ 9 ≤
      (actualInitialPrimeMellin A (3 / 2)).re := by
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    (actualBilateralCorrelationTransform_normalized_tendsto (z := 1) (by norm_num))
  have ht' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re) atTop (𝓝 (82944 : ℝ)) := by
    norm_num at ht
    apply ht.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simp only [Function.comp_apply]
    have he : actualBilateralCorrelationTransform A 1 =
        actualInitialPrimeMellin A (3 / 2) := by
      rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
      simpa only [show (3 / 2 : ℂ) - 1 / 2 = 1 by norm_num] using
        (show actualBilateralCorrelationTransform A ((3 / 2 : ℂ) - 1 / 2) =
        bumpMellinWeight A (3 / 2) from
          SourceActualBumpTransform.actualBilateralCorrelationTransform_eq_bump hA (3 / 2))
    rw [he]
    have hs : actualCorrelationAsymptoticScale A 1 =
        ((A ^ 9 * sourceNormalization A * Real.exp (-2 * A) : ℝ) : ℂ) := by
      unfold actualCorrelationAsymptoticScale
      rw [show -2 * (1 : ℂ) * (A : ℂ) = ((-2 * A : ℝ) : ℂ) by push_cast; ring]
      rw [← Complex.ofReal_exp, ← Complex.ofReal_mul]
    rw [hs]
    simp only [Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero]
  have hz := actualSourceNormalization_tendsto.eventually (gt_mem_nhds (by norm_num :
    ((65536 / 109395 : ℝ) / 16) < 1))
  have hm := ht'.eventually (lt_mem_nhds (by norm_num : (41472 : ℝ) < 82944))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hz, hm] with A hA hZ hM
  have hp : 0 < A := by linarith
  have hn := real_mellin_nonneg hA
  have hcomp := mul_le_mul_of_nonneg_right hZ.le
    (show 0 ≤ A ^ 9 * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re by positivity)
  have hM' : 41472 ≤ A ^ 9 * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re := by nlinarith
  have he : Real.exp (-2 * A) * Real.exp (2 * A) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    simp
  apply (div_le_iff₀ (show 0 < A ^ 9 by positivity)).2
  have hh := mul_le_mul_of_nonneg_left hM' (Real.exp_pos (2 * A)).le
  have hc : Real.exp (2 * A) *
      (A ^ 9 * Real.exp (-2 * A) * (actualInitialPrimeMellin A (3 / 2)).re) =
      (actualInitialPrimeMellin A (3 / 2)).re * A ^ 9 := by
    calc
      _ = (actualInitialPrimeMellin A (3 / 2)).re * A ^ 9 *
        (Real.exp (-2 * A) * Real.exp (2 * A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hc] at hh
  simpa only [mul_comm] using hh

/-- A genuine positive central frequency block grows at the squared-transform scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant16144ea0d320e48ddfd054e019f351add9f3b3b9ca45d8411675004376af784e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant16144ea0d320e48ddfd054e019f351add9f3b3b9ca45d8411675004376af784e.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9e51e5cff8c95071003e3d9b84d91592eaf968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
