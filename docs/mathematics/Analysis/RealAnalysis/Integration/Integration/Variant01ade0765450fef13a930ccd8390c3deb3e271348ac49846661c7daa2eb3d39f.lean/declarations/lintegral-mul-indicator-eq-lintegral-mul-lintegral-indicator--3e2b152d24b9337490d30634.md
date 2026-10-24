# lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd989db4-0fe7-38f8-071f-f172e5baae52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4dddef8-e5d4-bd5b-c0b1-2bd1c90ad643",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator",
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
  "slug": "lintegral-mul-indicator-eq-lintegral-mul-lintegral-indicator--3e2b152d24b9337490d30634",
  "source": {
    "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e2b152d24b9337490d30634de9ddf52481273074e4c38483431686822a903ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4dddef8-e5d4-bd5b-c0b1-2bd1c90ad643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator {Mf mΩ : MeasurableSpace Ω}
    {μ : Measure Ω} (hMf : Mf ≤ mΩ) (c : ℝ≥0∞) {T : Set Ω} (h_meas_T : MeasurableSet T)
    (h_ind : IndepSets {s | MeasurableSet[Mf] s} {T} μ) (h_meas_f : Measurable[Mf] f) :
    (∫⁻ ω, f ω * T.indicator (fun _ => c) ω ∂μ) =
      (∫⁻ ω, f ω ∂μ) * ∫⁻ ω, T.indicator (fun _ => c) ω ∂μ := by
  revert f
  have h_mul_indicator : ∀ g, Measurable g → Measurable fun a => g a * T.indicator (fun _ => c) a :=
    fun g h_mg => h_mg.mul (measurable_const.indicator h_meas_T)
  apply @Measurable.ennreal_induction _ Mf
  · intro c' s' h_meas_s'
    simp_rw [← inter_indicator_mul]
    rw [lintegral_indicator _ (MeasurableSet.inter (hMf _ h_meas_s') h_meas_T),
      lintegral_indicator _ (hMf _ h_meas_s'), lintegral_indicator _ h_meas_T]
    simp only [measurable_const, lintegral_const, univ_inter, lintegral_const_mul,
      MeasurableSet.univ, Measure.restrict_apply]
    rw [IndepSets_iff] at h_ind
    rw [mul_mul_mul_comm, h_ind s' T h_meas_s' (Set.mem_singleton _)]
  · intro f' g _ h_meas_f' _ h_ind_f' h_ind_g
    have h_measM_f' : Measurable f' := h_meas_f'.mono hMf le_rfl
    simp_rw [Pi.add_apply, right_distrib]
    rw [lintegral_add_left (h_mul_indicator _ h_measM_f'), lintegral_add_left h_measM_f',
      right_distrib, h_ind_f', h_ind_g]
  · intro f h_meas_f h_mono_f h_ind_f
    have h_measM_f : ∀ n, Measurable (f n) := fun n => (h_meas_f n).mono hMf le_rfl
    simp_rw [ENNReal.iSup_mul]
    rw [lintegral_iSup h_measM_f h_mono_f, lintegral_iSup, ENNReal.iSup_mul]
    · simp_rw [← h_ind_f]
    · exact fun n => h_mul_indicator _ (h_measM_f n)
    · exact fun m n h_le a => mul_le_mul_right' (h_mono_f h_le a) _
#align probability_theory.lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator ProbabilityTheory.lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator

/-- If `f` and `g` are independent random variables with values in `ℝ≥0∞`,
   then `E[f * g] = E[f] * E[g]`. However, instead of directly using the independence
   of the random variables, it uses the independence of measurable spaces for the
   domains of `f` and `g`. This is similar to the sigma-algebra approach to
   independence. See `lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun` for
   a more common variant of the product of independent variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10faa875ee53e642e452c850a81f0f4e6945c4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
