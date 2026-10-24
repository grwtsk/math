# not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6042de7e-791b-9505-0f76-b2bfac632864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dbd9683-47fa-7159-8103-15959e55feb0",
  "kind": "theorem",
  "lexical_name": "not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux",
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
  "slug": "not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter-aux--c1a3a33c185f4dbe1c1c7017",
  "source": {
    "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a3a33c185f4dbe1c1c7017dd08556e54a789833b0baa81462fb515e21ce59d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dbd9683-47fa-7159-8103-15959e55feb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux
    [CompleteSpace E] {f : ℝ → E} {g : ℝ → F}
    {k : Set ℝ} (l : Filter ℝ) [NeBot l] [TendstoIxxClass Icc l l]
    (hl : k ∈ l) (hd : ∀ᶠ x in l, DifferentiableAt ℝ f x) (hf : Tendsto (fun x => ‖f x‖) l atTop)
    (hfg : deriv f =O[l] g) : ¬IntegrableOn g k := by
  intro hgi
  obtain ⟨C, hC₀, s, hsl, hsub, hfd, hg⟩ :
    ∃ (C : ℝ) (_ : 0 ≤ C), ∃ s ∈ l, (∀ x ∈ s, ∀ y ∈ s, [[x, y]] ⊆ k) ∧
      (∀ x ∈ s, ∀ y ∈ s, ∀ z ∈ [[x, y]], DifferentiableAt ℝ f z) ∧
        ∀ x ∈ s, ∀ y ∈ s, ∀ z ∈ [[x, y]], ‖deriv f z‖ ≤ C * ‖g z‖ := by
    rcases hfg.exists_nonneg with ⟨C, C₀, hC⟩
    have h : ∀ᶠ x : ℝ × ℝ in l ×ˢ l,
        ∀ y ∈ [[x.1, x.2]], (DifferentiableAt ℝ f y ∧ ‖deriv f y‖ ≤ C * ‖g y‖) ∧ y ∈ k :=
      (tendsto_fst.uIcc tendsto_snd).eventually ((hd.and hC.bound).and hl).smallSets
    rcases mem_prod_self_iff.1 h with ⟨s, hsl, hs⟩
    simp only [prod_subset_iff, mem_ofPred_eq] at hs
    exact ⟨C, C₀, s, hsl, fun x hx y hy z hz => (hs x hx y hy z hz).2, fun x hx y hy z hz =>
      (hs x hx y hy z hz).1.1, fun x hx y hy z hz => (hs x hx y hy z hz).1.2⟩
  replace hgi : IntegrableOn (fun x ↦ C * ‖g x‖) k := by exact hgi.norm.smul C
  obtain ⟨c, hc, d, hd, hlt⟩ : ∃ c ∈ s, ∃ d ∈ s, (‖f c‖ + ∫ y in k, C * ‖g y‖) < ‖f d‖ := by
    rcases Filter.nonempty_of_mem hsl with ⟨c, hc⟩
    have : ∀ᶠ x in l, (‖f c‖ + ∫ y in k, C * ‖g y‖) < ‖f x‖ :=
      hf.eventually (eventually_gt_atTop _)
    exact ⟨c, hc, (this.and hsl).exists.imp fun d hd => ⟨hd.2, hd.1⟩⟩
  specialize hsub c hc d hd; specialize hfd c hc d hd
  replace hg : ∀ x ∈ Ι c d, ‖deriv f x‖ ≤ C * ‖g x‖ :=
    fun z hz => hg c hc d hd z ⟨hz.1.le, hz.2⟩
  have hg_ae : ∀ᵐ x ∂volume.restrict (Ι c d), ‖deriv f x‖ ≤ C * ‖g x‖ :=
    (ae_restrict_mem measurableSet_uIoc).mono hg
  have hsub' : Ι c d ⊆ k := Subset.trans Ioc_subset_Icc_self hsub
  have hfi : IntervalIntegrable (deriv f) volume c d := by
    rw [intervalIntegrable_iff]
    have : IntegrableOn (fun x ↦ C * ‖g x‖) (Ι c d) := IntegrableOn.mono hgi hsub' le_rfl
    exact Integrable.mono' this (aestronglyMeasurable_deriv _ _) hg_ae
  refine hlt.not_ge (sub_le_iff_le_add'.1 ?_)
  calc
    ‖f d‖ - ‖f c‖ ≤ ‖f d - f c‖ := norm_sub_norm_le _ _
    _ = ‖∫ x in c..d, deriv f x‖ := congr_arg _ (integral_deriv_eq_sub hfd hfi).symm
    _ = ‖∫ x in Ι c d, deriv f x‖ := norm_integral_eq_norm_integral_uIoc _
    _ ≤ ∫ x in Ι c d, ‖deriv f x‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ x in Ι c d, C * ‖g x‖ :=
      setIntegral_mono_on hfi.norm.def' (hgi.mono_set hsub') measurableSet_uIoc hg
    _ ≤ ∫ x in k, C * ‖g x‖ := by
      apply setIntegral_mono_set hgi
        (ae_of_all _ fun x => mul_nonneg hC₀ (norm_nonneg _)) hsub'.eventuallySubset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b27625c17376b5dafbccc3339bbdb5d5288acc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
