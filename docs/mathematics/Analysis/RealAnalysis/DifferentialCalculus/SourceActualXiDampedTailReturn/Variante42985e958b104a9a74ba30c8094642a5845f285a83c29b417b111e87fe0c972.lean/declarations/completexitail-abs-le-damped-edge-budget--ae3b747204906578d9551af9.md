# completeXiTail_abs_le_damped_edge_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d75a0a1f-f6bc-0add-d8a7-a6636d94219c",
  "kind": "theorem",
  "lexical_name": "completeXiTail_abs_le_damped_edge_budget",
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
  "slug": "completexitail-abs-le-damped-edge-budget--ae3b747204906578d9551af9",
  "source": {
    "blob": "f1026c3691c4eb576a7753c82fa3fe44736b6da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante42985e958b104a9a74ba30c8094642a5845f285a83c29b417b111e87fe0c972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3b747204906578d9551af9fffb31b61bf8f24764e7f438b7244ec0dbb579d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante42985e958b104a9a74ba30c8094642a5845f285a83c29b417b111e87fe0c972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75a0a1f-f6bc-0add-d8a7-a6636d94219c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_abs_le_damped_edge_budget {A : ℝ} (hA : 91 ≤ A) :
    |completeXiTail A| ≤ 536 * actualDampedXiFiniteBudget * Real.exp A / A ^ 4 := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  let W : ℝ → ℝ := fun t => Real.exp (t / 2) *
    ((2 * A - t) + (2 * A - t) ^ 3 / 24)
  let B : ℝ := 67 / A ^ 4 * actualDampedXiFiniteBudget
  have hB : 0 ≤ B := by unfold B actualDampedXiFiniteBudget RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant; positivity
  have hW : Continuous W := by unfold W; fun_prop
  have hiW : IntervalIntegrable W volume 0 (2 * A) := hW.intervalIntegrable _ _
  have hiG : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
    have hc := actual_correlation_contDiff_four A hp
    apply (actualDampedXiFinitePrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable.mul_continuousOn
    unfold actualDampedXiReturnDensity
    exact ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub
        ((first_jet_continuous hp).div_const 4))).continuousOn
  have hiBW : IntervalIntegrable (fun t => B * W t) volume (Real.log 7) (2 * A) :=
    (hW.intervalIntegrable _ _).const_mul B
  have hm : (∫ t in Real.log 7..2 * A,
      |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t|) ≤
      ∫ t in Real.log 7..2 * A, B * W t := by
    apply intervalIntegral.integral_mono_on hlb hiG.abs hiBW
    intro t ht
    have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht.1
    have hD := actualDampedXiReturnDensity_edge_abs_le hA ht.2
    rw [abs_mul]
    have hh := mul_le_mul hJ hD (abs_nonneg _) (by
      unfold actualDampedXiFiniteBudget RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant; positivity)
    convert hh using 1 <;> try { dsimp only [B, W] } <;> ring
  have hs : (∫ t in Real.log 7..2 * A, W t) ≤ ∫ t in 0..2 * A, W t := by
    apply intervalIntegral.integral_mono_interval ha hlb le_rfl _ hiW
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    unfold W
    have hu : 0 ≤ 2 * A - t := sub_nonneg.mpr ht.2
    exact mul_nonneg (Real.exp_pos _).le (by positivity)
  have he : (∫ t in 0..2 * A, W t) ≤ 8 * Real.exp A := by
    have h1 := exponential_truncated_moment_le 1 (show 0 ≤ 2 * A by positivity)
    have h3 := exponential_truncated_moment_le 3 (show 0 ≤ 2 * A by positivity)
    have hi1 := (by fun_prop : Continuous (fun t : ℝ => (2 * A - t) * Real.exp (t / 2))).intervalIntegrable 0 (2 * A)
    have hi3 := (by fun_prop : Continuous (fun t : ℝ => (2 * A - t) ^ 3 * Real.exp (t / 2))).intervalIntegrable 0 (2 * A)
    have hw : W = (fun t => (2 * A - t) * Real.exp (t / 2)) +
        (fun t => (2 * A - t) ^ 3 * Real.exp (t / 2) / 24) := by
      funext t; dsimp only [W, Pi.add_apply]; ring
    rw [hw, intervalIntegral.integral_add hi1 (hi3.div_const 24),
      intervalIntegral.integral_div_const]
    norm_num only [pow_one, Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat,
      show 2 * A / 2 = A by ring] at h1 h3
    linarith
  rw [completeXiTail_eq_damped_primitive_return hA]
  calc
    _ ≤ ∫ t in Real.log 7..2 * A,
        |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t| :=
      intervalIntegral.abs_integral_le_integral_abs hlb
    _ ≤ B * ∫ t in Real.log 7..2 * A, W t := by
      simpa only [intervalIntegral.integral_const_mul] using hm
    _ ≤ B * (8 * Real.exp A) := mul_le_mul_of_nonneg_left (hs.trans he) hB
    _ = _ := by unfold B; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiDampedTailReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante42985e958b104a9a74ba30c8094642a5845f285a83c29b417b111e87fe0c972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante42985e958b104a9a74ba30c8094642a5845f285a83c29b417b111e87fe0c972.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1026c3691c4eb576a7753c82fa3fe44736b6da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
