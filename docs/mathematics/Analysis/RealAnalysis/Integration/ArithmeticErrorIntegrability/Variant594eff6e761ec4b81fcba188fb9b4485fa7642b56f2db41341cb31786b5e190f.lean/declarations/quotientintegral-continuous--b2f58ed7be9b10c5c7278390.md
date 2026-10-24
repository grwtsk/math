# quotientIntegral_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04b9ba65-bc16-76c1-4424-adb4cdc3bd0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a6e35c7-3214-280d-11b9-ad56c94e95de",
  "kind": "theorem",
  "lexical_name": "quotientIntegral_continuous",
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
  "slug": "quotientintegral-continuous--b2f58ed7be9b10c5c7278390",
  "source": {
    "blob": "4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f58ed7be9b10c5c72783908cb32e64c1cf7f7f9b690f9801fb2630fcaf0715",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6e35c7-3214-280d-11b9-ad56c94e95de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientIntegral_continuous (X : ℕ) : Continuous (quotientIntegral X) := by
  apply continuous_iff_continuousAt.mpr
  intro w
  let G : ℂ × ℝ → ℂ := fun p => Complex.exp ((1 / 2 - p.1) * (Real.log p.2 : ℂ))
  have hl : ContinuousOn (fun p : ℂ × ℝ => (Real.log p.2 : ℂ))
      (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    apply Complex.continuous_ofReal.comp_continuousOn
    apply Real.continuousOn_log.comp continuous_snd.continuousOn
    intro p hp
    exact ne_of_gt (lt_of_lt_of_le zero_lt_one hp.2.1)
  have hG : ContinuousOn G (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    exact Complex.continuous_exp.comp_continuousOn
      ((continuous_const.sub continuous_fst).continuousOn.mul hl)
  obtain ⟨C, hC⟩ := ((isCompact_closedBall w 1).prod
    (isCompact_Icc : IsCompact (Set.Icc (1 : ℝ) X))).exists_bound_of_continuousOn hG
  have hb : IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ))
      (Set.Ioc 1 (X : ℝ)) := by
    simpa only [sub_self, zero_mul, Complex.exp_zero, mul_one] using
      quotient_integrand_integrable X (1 / 2)
  apply tendsto_integral_filter_of_dominated_convergence
    (fun x : ℝ => C * ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖)
  · exact Eventually.of_forall (fun z => (quotient_integrand_integrable X z).aestronglyMeasurable)
  · filter_upwards [Metric.ball_mem_nhds w (by norm_num : (0 : ℝ) < 1)] with z hz
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    have hcx := hC (z, x) ⟨Metric.ball_subset_closedBall hz, hx.1.le, hx.2⟩
    change ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ ≤ C at hcx
    calc
      ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)‖ =
          ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ *
            ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ := by
        rw [← norm_mul]
        congr 1
        ring
      _ ≤ ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ * C :=
        mul_le_mul_of_nonneg_left hcx (norm_nonneg _)
      _ = _ := mul_comm _ _
  · exact hb.norm.const_mul C
  · filter_upwards [] with x
    exact (show Continuous (fun z : ℂ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) by fun_prop).continuousAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
