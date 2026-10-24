# ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53610da3-97cd-fdf2-495a-25f1a1d998a6",
  "kind": "theorem",
  "lexical_name": "ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable",
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
  "slug": "ae-nonneg-of-forall-set-integral-nonneg-of-stronglymeasurable--0b5cbc473485e902d662c200",
  "source": {
    "blob": "73607fe8a34e63c62707f8d1cd49d5970d967941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b5cbc473485e902d662c200b95154c4753bd771d9f1b09fa97100cde6178df3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53610da3-97cd-fdf2-495a-25f1a1d998a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable (hfm : StronglyMeasurable f)
    (hf : Integrable f μ) (hf_zero : ∀ s, MeasurableSet s → μ s < ∞ → 0 ≤ ∫ x in s, f x ∂μ) :
    0 ≤ᵐ[μ] f := by
  simp_rw [EventuallyLE, Pi.zero_apply]
  rw [ae_const_le_iff_forall_lt_measure_zero]
  intro b hb_neg
  let s := {x | f x ≤ b}
  have hs : MeasurableSet s := hfm.measurableSet_le stronglyMeasurable_const
  have mus : μ s < ∞ := by
    let c : ℝ≥0 := ⟨|b|, abs_nonneg _⟩
    have c_pos : (c : ℝ≥0∞) ≠ 0 := by simpa [← NNReal.coe_eq_zero] using hb_neg.ne
    calc
      μ s ≤ μ {x | (c : ℝ≥0∞) ≤ ‖f x‖₊} := by
        apply measure_mono
        intro x hx
        simp only [Set.mem_setOf_eq] at hx
        simpa only [nnnorm, abs_of_neg hb_neg, abs_of_neg (hx.trans_lt hb_neg), Real.norm_eq_abs,
          Subtype.mk_le_mk, neg_le_neg_iff, Set.mem_setOf_eq, ENNReal.coe_le_coe, NNReal] using hx
      _ ≤ (∫⁻ x, ‖f x‖₊ ∂μ) / c :=
        (meas_ge_le_lintegral_div hfm.aemeasurable.ennnorm c_pos ENNReal.coe_ne_top)
      _ < ∞ := ENNReal.div_lt_top (ne_of_lt hf.2) c_pos
  have h_int_gt : (∫ x in s, f x ∂μ) ≤ b * (μ s).toReal := by
    have h_const_le : (∫ x in s, f x ∂μ) ≤ ∫ _ in s, b ∂μ := by
      refine'
        set_integral_mono_ae_restrict hf.integrableOn (integrableOn_const.mpr (Or.inr mus)) _
      rw [EventuallyLE, ae_restrict_iff hs]
      exact eventually_of_forall fun x hxs => hxs
    rwa [set_integral_const, smul_eq_mul, mul_comm] at h_const_le
  by_contra h
  refine' (lt_self_iff_false (∫ x in s, f x ∂μ)).mp (h_int_gt.trans_lt _)
  refine' (mul_neg_iff.mpr (Or.inr ⟨hb_neg, _⟩)).trans_le _
  swap
  · exact hf_zero s hs mus
  refine' ENNReal.toReal_nonneg.lt_of_ne fun h_eq => h _
  cases' (ENNReal.toReal_eq_zero_iff _).mp h_eq.symm with hμs_eq_zero hμs_eq_top
  · exact hμs_eq_zero
  · exact absurd hμs_eq_top mus.ne
#align measure_theory.ae_nonneg_of_forall_set_integral_nonneg_of_strongly_measurable MeasureTheory.ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73607fe8a34e63c62707f8d1cd49d5970d967941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
