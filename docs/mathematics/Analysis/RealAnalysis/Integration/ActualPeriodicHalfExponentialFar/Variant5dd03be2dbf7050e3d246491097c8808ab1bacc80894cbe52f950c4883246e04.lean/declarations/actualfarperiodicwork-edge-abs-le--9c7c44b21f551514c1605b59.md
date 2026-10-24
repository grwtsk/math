# actualFarPeriodicWork_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef5b05f8-9343-fe8f-e3ce-a855daa7d117",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_edge_abs_le",
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
  "slug": "actualfarperiodicwork-edge-abs-le--9c7c44b21f551514c1605b59",
  "source": {
    "blob": "96fbe8771e1211f6584bb1721b66c9c31814578f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant5dd03be2dbf7050e3d246491097c8808ab1bacc80894cbe52f950c4883246e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7c44b21f551514c1605b5955243005b6604d273a69f4b692a08111f5446d32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant5dd03be2dbf7050e3d246491097c8808ab1bacc80894cbe52f950c4883246e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef5b05f8-9343-fe8f-e3ce-a855daa7d117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_edge_abs_le {A v : ℝ} (hA : 91 ≤ A)
    (hv : 2 ≤ v) (hUv : (vaughanCutoff A : ℝ) ≤ v)
    (hvK : v ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) :
    |actualFarPeriodicWork A v| ≤
      402 * (Real.log 4 + 4 + Real.log 2) * Real.exp A / v ^ 2 := by
  let l := actualTimeLower A
  let r := Real.log (sourceKernelCutoff A : ℝ)
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  let CP : ℝ := (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16
  let CE : ℝ := Real.log 4 + 4 + Real.log 2
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hvp : 0 < v := by linarith
  have hKp : 0 < K := hvp.trans_le hvK
  obtain ⟨hl0, hlr⟩ := actual_orders hA1
  have hgK := (profile_time_continuous hAp K).abs.intervalIntegrable (μ := volume) l r
  have hgv := (profile_time_continuous hAp v).abs.intervalIntegrable (μ := volume) l r
  have hiD := derivative_bulk_intervalIntegrable hAp hvp hvK hlr
  have hi := actualFarPeriodicWork_intervalIntegrable hA hUv hvK hlr
  have hM := intervalIntegral.integral_mono_on hlr hi.abs
    ((hgK.add hgv).add hiD |>.const_mul (2 * CE * CP)) (fun t ht => by
      have hP : |actualAdjointTimePrimitive A 0 t| ≤ 2 * CE := by
        simpa only [CE, abs_zero, add_zero] using
          actualAdjointTimePrimitive_abs_le (offset := (0 : ℝ)) hA1 ht.1
      have hF : ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (uIcc v K) := by
        rw [uIcc_of_le hvK]
        exact actualPeriodicPhysicalCellProfile_contDiffOn hAp hvp K t
      have hb := actual_physical_prefix_abel_abs_le (vaughanCutoff A)
        (vaughanCutoff_pos A hA1) hUv hvK (actualPeriodicPhysicalCellProfile A t) hF
      change |actualPhysicalPeriodicPrefixRow A t v K| ≤ CP * _ at hb
      rw [abs_mul]
      calc
        _ ≤ (2 * CE) * (CP *
            (|actualPeriodicPhysicalCellProfile A t K| +
              |actualPeriodicPhysicalCellProfile A t v| +
                ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) :=
          mul_le_mul hP hb (abs_nonneg _) (by dsimp [CE]; positivity)
        _ = _ := by ring)
  have heq : (∫ t in l..r, 2 * CE * CP *
      (|actualPeriodicPhysicalCellProfile A t K| + |actualPeriodicPhysicalCellProfile A t v| +
        ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) =
      2 * CE * CP * ((∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) +
        (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) +
          (∫ t in l..r, ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) := by
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_add (hgK.add hgv) hiD,
      intervalIntegral.integral_add hgK hgv]
  rw [heq] at hM
  have hD : (∫ t in l..r, ∫ u in v..K,
      |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
        536 * Real.exp A / (A ^ 4 * v ^ 2) := by
    rw [derivative_bulk_swap hAp hvp hvK hlr]
    have hswap := (derivative_box_integrable hAp hvp hvK hlr).integral_prod_right
    have htI : IntervalIntegrable (fun u => ∫ t in l..r,
        |deriv (actualPeriodicPhysicalCellProfile A t) u|) volume v K := by
      apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hvK).2
      simpa only [l, r, intervalIntegral.integral_of_le hlr, IntegrableOn] using hswap
    have hc : ContinuousOn (fun u : ℝ => (1072 * Real.exp A / A ^ 4) * (1 / u ^ 3))
        (uIcc v K) := by
      apply ContinuousOn.const_mul
      exact continuousOn_const.div (continuousOn_id.pow 3) (fun u hu => by
        rw [uIcc_of_le hvK] at hu
        exact (pow_pos (hvp.trans_le hu.1) 3).ne')
    calc
      _ ≤ ∫ u in v..K, (1072 * Real.exp A / A ^ 4) * (1 / u ^ 3) := by
        apply intervalIntegral.integral_mono_on hvK htI hc.intervalIntegrable
        intro u hu
        have h := actualPeriodicProfile_deriv_time_norm_le hA (hv.trans hu.1)
        change _ ≤ _ at h
        apply h.trans_eq
        ring
      _ = (1072 * Real.exp A / A ^ 4) * ∫ u in v..K, 1 / u ^ 3 :=
        intervalIntegral.integral_const_mul _ _
      _ ≤ (1072 * Real.exp A / A ^ 4) * (1 / (2 * v ^ 2)) :=
        mul_le_mul_of_nonneg_left (inverse_cube_integral_le hvp hvK) (by positivity)
      _ = _ := by ring
  have hK : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) ≤
      536 * Real.exp A / (A ^ 4 * v ^ 2) := by
    apply (actualPeriodicProfile_time_norm_le hA (hv.trans hvK)).trans
    exact div_le_div_of_nonneg_left (by positivity) (by positivity)
      (mul_le_mul_of_nonneg_left (sq_le_sq₀ hvp.le hKp.le |>.2 hvK) (by positivity))
  have hV : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) ≤
      536 * Real.exp A / (A ^ 4 * v ^ 2) := actualPeriodicProfile_time_norm_le hA hv
  have hsum : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) +
      (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) +
        (∫ t in l..r, ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
      1608 * Real.exp A / (A ^ 4 * v ^ 2) := by
    calc
      _ ≤ 536 * Real.exp A / (A ^ 4 * v ^ 2) +
          536 * Real.exp A / (A ^ 4 * v ^ 2) +
          536 * Real.exp A / (A ^ 4 * v ^ 2) := add_le_add (add_le_add hK hV) hD
      _ = _ := by ring
  have hwork : |actualFarPeriodicWork A v| ≤
      2 * CE * CP * (1608 * Real.exp A / (A ^ 4 * v ^ 2)) := by
    apply (intervalIntegral.abs_integral_le_integral_abs hlr).trans
      (hM.trans (mul_le_mul_of_nonneg_left hsum (by dsimp [CE, CP]; positivity)))
  apply hwork.trans
  calc
    _ ≤ 2 * CE * (A ^ 4 / 8) * (1608 * Real.exp A / (A ^ 4 * v ^ 2)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (periodic_size_le hA1) (by dsimp [CE]; positivity))
        (by positivity)
    _ = _ := by dsimp [CE]; field_simp; ring

/-- The smaller far cutoff lies inside the literal actual natural quotient window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant5dd03be2dbf7050e3d246491097c8808ab1bacc80894cbe52f950c4883246e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant5dd03be2dbf7050e3d246491097c8808ab1bacc80894cbe52f950c4883246e04.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fbe8771e1211f6584bb1721b66c9c31814578f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
