# corrected_count_budget_of_integral_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcaa74bf-de61-3fae-6365-3d10e8dbb5c6",
  "kind": "theorem",
  "lexical_name": "corrected_count_budget_of_integral_moments",
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
  "slug": "corrected-count-budget-of-integral-moments--913587a0bd6c261b5df2260b",
  "source": {
    "blob": "dc38be2e6cc9ce74bdf022de11f5cecc982d6c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:913587a0bd6c261b5df2260bb9330cc12a21a88c3c9365ba0b7d27cc0e93a88d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcaa74bf-de61-3fae-6365-3d10e8dbb5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_budget_of_integral_moments
    (T : ℝ) (hT : Real.exp 1 ≤ T) (hBW : CorrectedBellottiWongCount)
    (hmain : IntegrableOn (fun t : ℝ => zeroCountMain t/t^7) (Ioi T))
    (hmainEval : (∫ t : ℝ in Ioi T, zeroCountMain t/t^7) =
      (1/(2*Real.pi))*((Real.log (T/(2*Real.pi))-1)/(5*T^5)+1/(25*T^5)))
    (hpower : IntegrableOn (fun t : ℝ => 1/t^7) (Ioi T))
    (hpowerEval : (∫ t : ℝ in Ioi T, 1/t^7) = 1/(6*T^6))
    (hlog : IntegrableOn (fun t : ℝ => Real.log (t/T)/t^7) (Ioi T))
    (hlogEval : (∫ t : ℝ in Ioi T, Real.log (t/T)/t^7) = 1/(36*T^6)) :
    -actualPositiveZeroCount T/T^6 +
      6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        positiveSixthPowerCountEnvelope T := by
  have hp : 0 < T := (Real.exp_pos 1).trans_le hT
  have hs : 3/2 ≤ T := by linarith [Real.add_one_le_exp (1 : ℝ)]
  let K : ℝ := (11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T
  have herror : IntegrableOn (fun t : ℝ => correctedBellottiWongError T*(1/t^7)) (Ioi T) :=
    hpower.const_mul _
  have hlogK : IntegrableOn (fun t : ℝ => K*(Real.log (t/T)/t^7)) (Ioi T) := hlog.const_mul K
  have hsum : IntegrableOn (fun t : ℝ => zeroCountMain t/t^7 +
      correctedBellottiWongError T*(1/t^7)+K*(Real.log (t/T)/t^7)) (Ioi T) :=
    (hmain.add herror).add hlogK
  have hupper : IntegrableOn (countUpperKernel T) (Ioi T) := by
    apply hsum.congr_fun _ measurableSet_Ioi
    intro t _
    dsimp only [countUpperKernel, K]
    ring
  have hupperEval : (∫ t : ℝ in Ioi T, countUpperKernel T t) =
      (1/(2*Real.pi))*((Real.log (T/(2*Real.pi))-1)/(5*T^5)+1/(25*T^5)) +
        correctedBellottiWongError T/(6*T^6)+K/(36*T^6) := by
    have he : (fun t : ℝ => countUpperKernel T t) =
        (fun t : ℝ => zeroCountMain t/t^7+correctedBellottiWongError T*(1/t^7)+
          K*(Real.log (t/T)/t^7)) := by
      funext t
      dsimp only [countUpperKernel, K]
      ring
    rw [he]
    have hadd := integral_add (hmain.add herror) hlogK
    simp only [Pi.add_apply] at hadd
    rw [hadd]
    have hadd' := integral_add hmain herror
    rw [hadd', integral_const_mul, integral_const_mul, hmainEval, hpowerEval, hlogEval]
    ring
  have hi := setIntegral_mono_on (actual_positive_count_seventh_integrable T hs)
    hupper measurableSet_Ioi (fun t ht => count_upper_kernel_bound hBW T t hT ht.le)
  have hend : -actualPositiveZeroCount T/T^6 ≤
      -zeroCountMain T/T^6 + correctedBellottiWongError T/T^6 := by
    have he := div_le_div_of_nonneg_right
      (corrected_count_endpoint_lower_of_external hBW T hT) (pow_nonneg hp.le 6)
    rw [sub_div] at he
    simp only [neg_div]
    linarith
  calc
    -actualPositiveZeroCount T/T^6 + 6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        -zeroCountMain T/T^6 + correctedBellottiWongError T/T^6 +
          6*(∫ t : ℝ in Ioi T, countUpperKernel T t) := by linarith
    _ = positiveSixthPowerCountEnvelope T := by
      rw [hupperEval, count_main_endpoint T hp]
      unfold positiveSixthPowerCountEnvelope K
      field_simp
      ring

end CommonMeanStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc38be2e6cc9ce74bdf022de11f5cecc982d6c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
