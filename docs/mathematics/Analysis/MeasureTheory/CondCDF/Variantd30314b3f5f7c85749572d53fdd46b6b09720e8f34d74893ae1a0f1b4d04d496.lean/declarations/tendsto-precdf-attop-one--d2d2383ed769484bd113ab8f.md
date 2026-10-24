# tendsto_preCdf_atTop_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61cb6a69-0eae-d129-9a54-38f43a5f53a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ca7167c-2ceb-566a-9d27-67208208bc45",
  "kind": "theorem",
  "lexical_name": "tendsto_preCdf_atTop_one",
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
  "slug": "tendsto-precdf-attop-one--d2d2383ed769484bd113ab8f",
  "source": {
    "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 373,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2d2383ed769484bd113ab8fca3b24f42b9310e794abb8b9b70724401431b183",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca7167c-2ceb-566a-9d27-67208208bc45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_preCdf_atTop_one (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] :
    ∀ᵐ a ∂ρ.fst, Tendsto (fun r => preCdf ρ r a) atTop (𝓝 1) := by
  -- We show first that `preCdf` has a limit almost everywhere. That limit has to be at most 1.
  -- We then show that the integral of `preCdf` tends to the integral of 1, and that it also tends
  -- to the integral of the limit. Since the limit is at most 1 and has same integral as 1, it is
  -- equal to 1 a.e.
  have h_mono := monotone_preCdf ρ
  have h_le_one := preCdf_le_one ρ
  -- `preCdf` has a limit a.e.
  have h_exists : ∀ᵐ a ∂ρ.fst, ∃ l, Tendsto (fun r => preCdf ρ r a) atTop (𝓝 l) := by
    filter_upwards [h_mono, h_le_one] with a ha_mono ha_le_one
    have h_tendsto :
      Tendsto (fun r => preCdf ρ r a) atTop atTop ∨
        ∃ l, Tendsto (fun r => preCdf ρ r a) atTop (𝓝 l) :=
      tendsto_of_monotone ha_mono
    cases' h_tendsto with h_absurd h_tendsto
    · rw [Monotone.tendsto_atTop_atTop_iff ha_mono] at h_absurd
      obtain ⟨r, hr⟩ := h_absurd 2
      exact absurd (hr.trans (ha_le_one r)) ENNReal.one_lt_two.not_le
    · exact h_tendsto
  classical
  -- let `F` be the pointwise limit of `preCdf` where it exists, and 0 elsewhere.
  let F : α → ℝ≥0∞ := fun a =>
    if h : ∃ l, Tendsto (fun r => preCdf ρ r a) atTop (𝓝 l) then h.choose else 0
  have h_tendsto_ℚ : ∀ᵐ a ∂ρ.fst, Tendsto (fun r => preCdf ρ r a) atTop (𝓝 (F a)) := by
    filter_upwards [h_exists] with a ha
    simp_rw [dif_pos ha]
    exact ha.choose_spec
  have h_tendsto_ℕ : ∀ᵐ a ∂ρ.fst, Tendsto (fun n : ℕ => preCdf ρ n a) atTop (𝓝 (F a)) := by
    filter_upwards [h_tendsto_ℚ] with a ha using ha.comp tendsto_nat_cast_atTop_atTop
  have hF_ae_meas : AEMeasurable F ρ.fst := by
    refine' aemeasurable_of_tendsto_metrizable_ae _ (fun n => _) h_tendsto_ℚ
    exact measurable_preCdf.aemeasurable
  have hF_le_one : ∀ᵐ a ∂ρ.fst, F a ≤ 1 := by
    filter_upwards [h_tendsto_ℚ, h_le_one] with a ha ha_le using le_of_tendsto' ha ha_le
  -- it suffices to show that the limit `F` is 1 a.e.
  suffices ∀ᵐ a ∂ρ.fst, F a = 1 by
    filter_upwards [h_tendsto_ℚ, this] with a ha_tendsto ha_eq
    rwa [ha_eq] at ha_tendsto
  -- since `F` is at most 1, proving that its integral is the same as the integral of 1 will tell
  -- us that `F` is 1 a.e.
  have h_lintegral_eq : ∫⁻ a, F a ∂ρ.fst = ∫⁻ _, 1 ∂ρ.fst := by
    have h_lintegral :
      Tendsto (fun r : ℕ => ∫⁻ a, preCdf ρ r a ∂ρ.fst) atTop (𝓝 (∫⁻ a, F a ∂ρ.fst)) := by
      refine'
        lintegral_tendsto_of_tendsto_of_monotone
          (-- does this exist only for ℕ?
          fun _ => measurable_preCdf.aemeasurable)
          _ h_tendsto_ℕ
      filter_upwards [h_mono] with a ha
      refine' fun n m hnm => ha _
      exact_mod_cast hnm
    have h_lintegral' :
      Tendsto (fun r : ℕ => ∫⁻ a, preCdf ρ r a ∂ρ.fst) atTop (𝓝 (∫⁻ _, 1 ∂ρ.fst)) := by
      rw [lintegral_one, Measure.fst_univ]
      exact (tendsto_lintegral_preCdf_atTop ρ).comp tendsto_nat_cast_atTop_atTop
    exact tendsto_nhds_unique h_lintegral h_lintegral'
  have : ∫⁻ a, 1 - F a ∂ρ.fst = 0 := by
    rw [lintegral_sub' hF_ae_meas _ hF_le_one, h_lintegral_eq, tsub_self]
    calc
      ∫⁻ a, F a ∂ρ.fst = ∫⁻ _, 1 ∂ρ.fst := h_lintegral_eq
      _ = ρ.fst univ := lintegral_one
      _ = ρ univ := Measure.fst_univ
      _ ≠ ∞ := measure_ne_top ρ _
  rw [lintegral_eq_zero_iff' (aemeasurable_const.sub hF_ae_meas)] at this
  filter_upwards [this, hF_le_one] with ha h_one_sub_eq_zero h_le_one
  rw [Pi.zero_apply, tsub_eq_zero_iff_le] at h_one_sub_eq_zero
  exact le_antisymm h_le_one h_one_sub_eq_zero
#align probability_theory.tendsto_pre_cdf_at_top_one ProbabilityTheory.tendsto_preCdf_atTop_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
