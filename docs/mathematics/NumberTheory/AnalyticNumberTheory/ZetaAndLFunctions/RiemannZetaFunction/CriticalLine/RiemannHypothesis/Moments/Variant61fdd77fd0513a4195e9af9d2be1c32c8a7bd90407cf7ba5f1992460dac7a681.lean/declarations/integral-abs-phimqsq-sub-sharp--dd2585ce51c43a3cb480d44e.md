# integral_abs_phiMQsq_sub_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f69a4a5-9cad-f337-1759-8dca8c88be49",
  "kind": "theorem",
  "lexical_name": "integral_abs_phiMQsq_sub_sharp",
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
  "slug": "integral-abs-phimqsq-sub-sharp--dd2585ce51c43a3cb480d44e",
  "source": {
    "blob": "f0a72213f287ba46ecb30238049494931b51c24e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 272,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2585ce51c43a3cb480d44e799b1b443aaac1b9c64b0c18feea6862c1944d0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f69a4a5-9cad-f337-1759-8dca8c88be49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_phiMQsq_sub_sharp (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |phiM (fQ L) ϱ L w u ^ 2 - sharpQ L u| ≤ 2 * w := by
  have hL : 0 < L := by linarith
  set maj : ℝ → ℝ := fun u => (Set.Icc (-(L/2)) (-(L/2) + w)).indicator (1 : ℝ → ℝ) u
      + (Set.Icc (L/2 - w) (L/2)).indicator (1 : ℝ → ℝ) u with hmaj
  have hImaj : Integrable maj := by
    apply Integrable.add <;>
      exact (MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
        (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top))
  have hind0 : ∀ (s : Set ℝ) (u : ℝ), 0 ≤ s.indicator (1 : ℝ → ℝ) u := fun s u =>
    Set.indicator_nonneg (fun _ _ => zero_le_one) u
  have hpt : ∀ u : ℝ, |phiM (fQ L) ϱ L w u ^ 2 - sharpQ L u| ≤ maj u := by
    intro u
    have hmaj0 : 0 ≤ maj u := by
      rw [hmaj]
      exact add_nonneg (hind0 _ u) (hind0 _ u)
    have hval : phiM (fQ L) ϱ L w u ^ 2 = mQ L u * Taper.phi ϱ L w u ^ 2 := phiMQ_sq_eq u
    rcases le_or_gt |u| (L/2 - w) with hpl | hedge
    · have huIcc : u ∈ Set.Icc (-(L/2)) (L/2) := by
        rw [abs_le] at hpl
        constructor <;> [linarith [hpl.1]; linarith [hpl.2]]
      rw [hval, Taper.phi_eq_one hϱ hw hpl, one_pow, mul_one, mQ_core hL huIcc]
      unfold sharpQ
      rw [Set.indicator_of_mem huIcc, sub_self, abs_zero]
      exact hmaj0
    · rcases le_or_gt |u| (L/2) with hin | hout
      · have hbound : |phiM (fQ L) ϱ L w u ^ 2 - sharpQ L u| ≤ 1 := by
          have h1' : 0 ≤ phiM (fQ L) ϱ L w u ^ 2 := sq_nonneg _
          have h2' : phiM (fQ L) ϱ L w u ^ 2 ≤ 1 := by
            rw [hval]
            calc mQ L u * Taper.phi ϱ L w u ^ 2 ≤ 1 * 1 ^ 2 :=
                  mul_le_mul (mQ_le_one u)
                    (pow_le_pow_left₀ (Taper.phi_nonneg hϱ u) (Taper.phi_le_one hϱ u) 2)
                    (sq_nonneg _) zero_le_one
              _ = 1 := by norm_num
          have h3' : 0 ≤ sharpQ L u := by
            unfold sharpQ
            apply Set.indicator_nonneg
            intro x hx
            exact (vQuartic_pos (core_mem hL (abs_le.mpr ⟨hx.1, hx.2⟩))).le
          have h4' : sharpQ L u ≤ 1 := by
            unfold sharpQ
            by_cases hm : u ∈ Set.Icc (-(L/2)) (L/2)
            · rw [Set.indicator_of_mem hm]; exact vQuartic_le_one _
            · rw [Set.indicator_of_notMem hm]; exact zero_le_one
          rw [abs_le]
          constructor <;> linarith
        have hone : (1:ℝ) ≤ maj u := by
          rw [hmaj]
          show (1:ℝ) ≤ (Set.Icc (-(L/2)) (-(L/2) + w)).indicator (1 : ℝ → ℝ) u
            + (Set.Icc (L/2 - w) (L/2)).indicator (1 : ℝ → ℝ) u
          rcases le_or_gt u 0 with hneg | hpos
          · have hu1 : u ∈ Set.Icc (-(L/2)) (-(L/2) + w) := by
              refine ⟨?_, ?_⟩
              · have : |u| = -u := abs_of_nonpos hneg
                rw [this] at hin
                linarith
              · have : |u| = -u := abs_of_nonpos hneg
                rw [this] at hedge
                linarith
            have := hind0 (Set.Icc (L/2 - w) (L/2)) u
            rw [Set.indicator_of_mem hu1, Pi.one_apply]
            linarith
          · have hu1 : u ∈ Set.Icc (L/2 - w) (L/2) := by
              refine ⟨?_, ?_⟩
              · have : |u| = u := abs_of_pos hpos
                rw [this] at hedge
                linarith
              · have : |u| = u := abs_of_pos hpos
                rw [this] at hin
                linarith
            have := hind0 (Set.Icc (-(L/2)) (-(L/2) + w)) u
            rw [Set.indicator_of_mem hu1, Pi.one_apply]
            linarith
        linarith
      · have h1' : phiM (fQ L) ϱ L w u = 0 := phiM_eq_zero hϱ hw (le_of_lt hout)
        have h2' : sharpQ L u = 0 := by
          unfold sharpQ
          apply Set.indicator_of_notMem
          intro hm
          have : |u| ≤ L / 2 := abs_le.mpr ⟨hm.1, hm.2⟩
          linarith
        rw [h1', h2']
        norm_num
        exact hmaj0
  calc ∫ u, |phiM (fQ L) ϱ L w u ^ 2 - sharpQ L u|
      ≤ ∫ u, maj u := by
        apply MeasureTheory.integral_mono_of_nonneg
          (MeasureTheory.ae_of_all _ fun u => abs_nonneg _) hImaj
          (MeasureTheory.ae_of_all _ hpt)
    _ = 2 * w := by
        rw [hmaj]
        rw [MeasureTheory.integral_add
          ((MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
            (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)))
          ((MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
            (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top))),
          MeasureTheory.integral_indicator_one measurableSet_Icc,
          MeasureTheory.integral_indicator_one measurableSet_Icc,
          MeasureTheory.measureReal_def, MeasureTheory.measureReal_def,
          Real.volume_Icc, Real.volume_Icc,
          ENNReal.toReal_ofReal (by linarith), ENNReal.toReal_ofReal (by linarith)]
        ring

/-- **|g_{φ_Q}(y) − L·vConv vQuartic (y/L)| ≤ 4w for y ∈ [0, L]** (g = φ_Q² ⋆ φ_Q²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a72213f287ba46ecb30238049494931b51c24e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
