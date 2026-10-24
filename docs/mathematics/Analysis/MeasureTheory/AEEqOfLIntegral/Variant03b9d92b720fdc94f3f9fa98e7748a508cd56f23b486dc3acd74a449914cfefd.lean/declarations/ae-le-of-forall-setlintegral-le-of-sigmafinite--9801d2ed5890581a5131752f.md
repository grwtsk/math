# ae_le_of_forall_setLIntegral_le_of_sigmaFinite₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbf8683a-a49e-b468-0064-9f809e0f3e3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:297419ad-a4a7-e8f5-f894-5f0f7312e0a9",
  "kind": "theorem",
  "lexical_name": "ae_le_of_forall_setLIntegral_le_of_sigmaFinite₀",
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
  "slug": "ae-le-of-forall-setlintegral-le-of-sigmafinite--9801d2ed5890581a5131752f",
  "source": {
    "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9801d2ed5890581a5131752fdde2073fbab7b1be94e577921c3f44960b0a56db",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:297419ad-a4a7-e8f5-f894-5f0f7312e0a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_le_of_forall_setLIntegral_le_of_sigmaFinite₀ [SigmaFinite μ]
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ)
    (h : ∀ s, MeasurableSet s → μ s < ∞ → ∫⁻ x in s, f x ∂μ ≤ ∫⁻ x in s, g x ∂μ) :
    f ≤ᵐ[μ] g := by
  have A : ∀ (ε N : ℝ≥0) (p : ℕ), 0 < ε →
      μ ({x | g x + ε ≤ f x ∧ g x ≤ N} ∩ spanningSets μ p) = 0 := by
    intro ε N p εpos
    let s := {x | g x + ε ≤ f x ∧ g x ≤ N} ∩ spanningSets μ p
    have s_lt_top : μ s < ∞ :=
      (measure_mono (Set.inter_subset_right)).trans_lt (measure_spanningSets_lt_top μ p)
    have A : (∫⁻ x in s, g x ∂μ) + ε * μ s ≤ (∫⁻ x in s, g x ∂μ) + 0 :=
      calc
        (∫⁻ x in s, g x ∂μ) + ε * μ s = (∫⁻ x in s, g x ∂μ) + ∫⁻ _ in s, ε ∂μ := by
          simp only [lintegral_const, Set.univ_inter, MeasurableSet.univ, Measure.restrict_apply]
        _ = ∫⁻ x in s, g x + ε ∂μ := (lintegral_add_right _ measurable_const).symm
        _ ≤ ∫⁻ x in s, f x ∂μ :=
          setLIntegral_mono_ae hf.restrict <| ae_of_all _ fun x hx => hx.1.1
        _ ≤ (∫⁻ x in s, g x ∂μ) + 0 := by
          rw [add_zero, ← Measure.restrict_toMeasurable s_lt_top.ne]
          refine h _ (measurableSet_toMeasurable ..) ?_
          rwa [measure_toMeasurable]
    have B : (∫⁻ x in s, g x ∂μ) ≠ ∞ :=
      (setLIntegral_lt_top_of_le_nnreal s_lt_top.ne ⟨N, fun _ h ↦ h.1.2⟩).ne
    have : (ε : ℝ≥0∞) * μ s ≤ 0 := ENNReal.le_of_add_le_add_left B A
    simpa only [ENNReal.coe_eq_zero, nonpos_iff_eq_zero, mul_eq_zero, εpos.ne', false_or]
  obtain ⟨u, _, u_pos, u_lim⟩ :
    ∃ u : ℕ → ℝ≥0, StrictAnti u ∧ (∀ n, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto (0 : ℝ≥0)
  let s := fun n : ℕ => {x | g x + u n ≤ f x ∧ g x ≤ (n : ℝ≥0)} ∩ spanningSets μ n
  have μs : ∀ n, μ (s n) = 0 := fun n => A _ _ _ (u_pos n)
  have B : {x | f x ≤ g x}ᶜ ⊆ ⋃ n, s n := by
    intro x hx
    simp only [Set.mem_compl_iff, Set.mem_setOf, not_le] at hx
    have L1 : ∀ᶠ n in atTop, g x + u n ≤ f x := by
      have : Tendsto (fun n => g x + u n) atTop (𝓝 (g x + (0 : ℝ≥0))) :=
        tendsto_const_nhds.add (ENNReal.tendsto_coe.2 u_lim)
      simp only [ENNReal.coe_zero, add_zero] at this
      exact this.eventually_le_const hx
    have L2 : ∀ᶠ n : ℕ in (atTop : Filter ℕ), g x ≤ (n : ℝ≥0) :=
      have : Tendsto (fun n : ℕ => ((n : ℝ≥0) : ℝ≥0∞)) atTop (𝓝 ∞) := by
        simp only [ENNReal.coe_natCast]
        exact ENNReal.tendsto_nat_nhds_top
      this.eventually_const_le (hx.trans_le le_top)
    apply Set.mem_iUnion.2
    exact ((L1.and L2).and (eventually_mem_spanningSets μ x)).exists
  refine le_antisymm ?_ bot_le
  calc
    μ {x : α | (fun x : α => f x ≤ g x) x}ᶜ ≤ μ (⋃ n, s n) := measure_mono B
    _ ≤ ∑' n, μ (s n) := measure_iUnion_le _
    _ = 0 := by simp only [μs, tsum_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20fb39e19f7d730f526643e81992c3ffeca9682` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
