# ibp_Ioc_zero_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b840ed08-37de-a67e-74d1-953352c0f06d",
  "kind": "lemma",
  "lexical_name": "ibp_Ioc_zero_one",
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
  "slug": "ibp-ioc-zero-one--868447f2e9554feba0dc16a3",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 342,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:868447f2e9554feba0dc16a377b8c7538903adb6e90e3b4aa329e3420737bace",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b840ed08-37de-a67e-74d1-953352c0f06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ibp_Ioc_zero_one :
    ∫ t in Set.Ioc (0 : ℝ) 1, log t * exp (-t) =
      ∫ t in (0 : ℝ)..1, (exp (-t) - 1) / t := by
  rw [← intervalIntegral.integral_of_le zero_le_one]
  have hf_int : IntervalIntegrable (fun t => log t * exp (-t)) volume 0 1 :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le zero_le_one).mpr
      integrableOn_log_mul_exp_neg_Ioc
  have hg_int := intervalIntegrable_expm1_div
  set F : ℝ → ℝ := fun ε => (∫ t in ε..(1 : ℝ), log t * exp (-t)) -
      (∫ t in ε..(1 : ℝ), (exp (-t) - 1) / t)
  suffices F 0 = 0 by simp [F] at this; linarith
  have hf_intOn : IntegrableOn (fun t => log t * exp (-t)) (Set.uIcc 0 1) :=
    (intervalIntegrable_iff').1 hf_int
  have hg_intOn : IntegrableOn (fun t => (exp (-t) - 1) / t) (Set.uIcc 0 1) :=
    (intervalIntegrable_iff').1 hg_int
  have hF_cts : ContinuousOn F (Set.uIcc 0 1) :=
    (intervalIntegral.continuousOn_primitive_interval_left hf_intOn).sub
      (intervalIntegral.continuousOn_primitive_interval_left hg_intOn)
  have hF_tends_F0 : Tendsto F (𝓝[Set.Ioi 0] 0) (𝓝 (F 0)) :=
    (hF_cts.continuousWithinAt left_mem_uIcc).mono_left nhdsWithin_Ioi_le_nhdsWithin_uIcc
  have h_bdy : Tendsto (fun ε => (exp (-ε) - 1) * log ε) (𝓝[>] (0 : ℝ)) (𝓝 0) := by
    have h_mul_log : Tendsto (fun x : ℝ => log x * x) (𝓝[>] 0) (𝓝 0) := by
      simpa [rpow_one] using tendsto_log_mul_rpow_nhdsGT_zero zero_lt_one
    exact squeeze_zero_norm'
      (eventually_nhdsWithin_of_forall fun ε (hε : 0 < ε) => by
        simp only [Real.norm_eq_abs, abs_mul]
        calc |exp (-ε) - 1| * |log ε| = |log ε| * |exp (-ε) - 1| := mul_comm _ _
          _ ≤ |log ε| * |ε| := by
              apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
              rw [abs_le, abs_of_pos hε]
              exact ⟨by linarith [one_sub_le_exp_neg ε],
                     by linarith [exp_le_one_iff.mpr (neg_nonpos.mpr hε.le)]⟩)
      (by simpa [norm_zero] using h_mul_log.norm)
  have hF_tends_0 : Tendsto F (𝓝[Set.Ioi 0] 0) (𝓝 0) := by
    apply Tendsto.congr' _ h_bdy
    rw [eventuallyEq_nhdsWithin_iff]
    filter_upwards [Iio_mem_nhds (show (0 : ℝ) < 1 from by norm_num)] with ε hε hε0
    simp only [F]
    linarith [ibp_eps hε0 hε]
  exact tendsto_nhds_unique hF_tends_F0 hF_tends_0

end FubiniLogExpNeg

open FubiniLogExpNeg in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
