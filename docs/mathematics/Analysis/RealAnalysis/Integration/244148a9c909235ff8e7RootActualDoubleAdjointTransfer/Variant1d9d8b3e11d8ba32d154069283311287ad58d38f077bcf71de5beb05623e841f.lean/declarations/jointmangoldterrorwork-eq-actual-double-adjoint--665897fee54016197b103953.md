# jointMangoldtErrorWork_eq_actual_double_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26f7ffb-703f-21f0-82df-c955ddc7220b",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_actual_double_adjoint",
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
  "slug": "jointmangoldterrorwork-eq-actual-double-adjoint--665897fee54016197b103953",
  "source": {
    "blob": "a7a7e626cc2020f98556c18bde7ab23cbe48b5d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 238,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665897fee54016197b103953403bb256e9dd8e7fe5a96bcc48679f8d08dff8ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26f7ffb-703f-21f0-82df-c955ddc7220b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_actual_double_adjoint {A : ℝ} (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      -actualAdjointLowerColumnTrace A - actualAdjointInterior A := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let B := actualLogColumnPrefix A
  let H := actualLogMixedDensity A
  let T := actualTwistedTimeDensity A
  let J := covariantMixedDerivative H
  obtain ⟨ht, hl, hs⟩ := actual_orders hA
  have hp : IntervalIntegrable P volume l b :=
    (time_primitive_continuousOn hA).intervalIntegrable_of_Icc ht
  have hq : IntervalIntegrable Q volume a c :=
    (column_primitive_continuousOn hA).intervalIntegrable_of_Icc hs
  have hE := error_intervalIntegrable l b ht
  have hB := prefix_intervalIntegrable hA
  have htime (s : ℝ) (has : a ≤ s) :
      (∫ t in l..b, mangoldtLogError t * H t s) =
        -(∫ t in l..b, P t * T t s) := by
    have hi := actual_time_covariant_abel A 0 b ht (fun t => H t s)
      (mixed_time_contDiff (by linarith) s)
    dsimp only [H, b] at hi
    simp only [sub_zero, actualMixedDensity_upperTime_zero A hA s has, mul_zero,
      zero_sub] at hi
    simpa only [actualTwistedTimeDensity_eq_time_deriv (by linarith : 0 < A)] using hi
  have hcol (t : ℝ) : (∫ s in a..c, B s * T t s) =
      -Q a * T t a - ∫ s in a..c, Q s * J t s := by
    have hi := actual_column_covariant_abel hA hl hs (T t)
      (twisted_column_contDiff (by linarith) t)
    dsimp only [T] at hi
    simpa only [actualTwistedTimeDensity_column_deriv (by linarith : 0 < A)] using hi
  have hswap1 := weighted_box_swap ht hs mangoldtLogError B H hE hB
    (mixed_continuous (by linarith))
  have hswap2 := weighted_box_swap ht hs P B T hp hB
    (twisted_continuous (by linarith))
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s)
      volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, H, IntegrableOn,
      intervalIntegral.integral_of_le hs, integral_const_mul] using hi.integral_prod_left
  have htrace : IntervalIntegrable (fun t => P t * T t a) volume l b := by
    exact hp.mul_continuousOn ((twisted_continuous (by linarith)).comp
      (continuous_id.prodMk continuous_const)).continuousOn
  rw [jointMangoldtErrorWork_eq_log_prefix_all_real hA, hswap1]
  calc
    -(∫ s in a..c, B s * ∫ t in l..b, mangoldtLogError t * H t s) =
        ∫ s in a..c, B s * ∫ t in l..b, P t * T t s := by
      have heq : (∫ s in a..c, B s * ∫ t in l..b, mangoldtLogError t * H t s) =
          -(∫ s in a..c, B s * ∫ t in l..b, P t * T t s) := by
        rw [← intervalIntegral.integral_neg]
        apply intervalIntegral.integral_congr
        intro s hsm
        rw [uIcc_of_le hs] at hsm
        dsimp only
        rw [htime s hsm.1]
        ring
      rw [heq, neg_neg]
    _ = ∫ t in l..b, P t * ∫ s in a..c, B s * T t s := hswap2.symm
    _ = -Q a * (∫ t in l..b, P t * T t a) -
        ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
      simp_rw [hcol]
      have he : (fun t => P t * (-Q a * T t a - ∫ s in a..c, Q s * J t s)) =
          (fun t => -Q a * (P t * T t a) - P t * ∫ s in a..c, Q s * J t s) := by
        funext t
        ring
      rw [he, intervalIntegral.integral_sub (htrace.const_mul (-Q a)) hPQ,
        intervalIntegral.integral_const_mul]
    _ = _ := by
      have he : actualAdjointInterior A =
          ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
        unfold actualAdjointInterior
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [← intervalIntegral.integral_const_mul]
        apply intervalIntegral.integral_congr
        intro s _
        dsimp only
        ring
      rw [he]
      unfold actualAdjointLowerColumnTrace
      change -Q a * (∫ t in l..b, P t * T t a) -
        (∫ t in l..b, P t * ∫ s in a..c, Q s * J t s) =
          -(Q a * ∫ t in l..b, P t * T t a) -
            (∫ t in l..b, P t * ∫ s in a..c, Q s * J t s)
      ring

end
end FormalResearch.RiemannHypothesis.RootActualDoubleAdjointTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a7e626cc2020f98556c18bde7ab23cbe48b5d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
