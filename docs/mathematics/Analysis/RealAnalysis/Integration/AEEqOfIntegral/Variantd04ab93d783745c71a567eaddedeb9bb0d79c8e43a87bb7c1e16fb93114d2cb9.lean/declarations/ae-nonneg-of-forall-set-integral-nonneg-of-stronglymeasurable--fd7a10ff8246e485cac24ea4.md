# ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:968cca43-3786-3b1d-9027-35f0362b8d66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3899622-cc7f-0216-39d3-84a14016f2b5",
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
  "slug": "ae-nonneg-of-forall-set-integral-nonneg-of-stronglymeasurable--fd7a10ff8246e485cac24ea4",
  "source": {
    "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7a10ff8246e485cac24ea4288641efcfa1cc11d237b96f84f869a19232052e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3899622-cc7f-0216-39d3-84a14016f2b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–280.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b390a490889e5774dd39e424e93e44e54c2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
