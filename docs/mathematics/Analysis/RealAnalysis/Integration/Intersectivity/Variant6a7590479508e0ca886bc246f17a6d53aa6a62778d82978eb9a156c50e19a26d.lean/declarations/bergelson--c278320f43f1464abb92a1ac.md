# bergelson'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb2dde5f8cdc10bd41850a89679c8451b13904b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a7590479508e0ca886bc246f17a6d53aa6a62778d82978eb9a156c50e19a26d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6879643a-d9e4-85cb-9151-c32aa8bb1485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58e83d24-d0c4-cabc-f57d-37aa61ee0be6",
  "kind": "lemma",
  "lexical_name": "bergelson'",
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
  "slug": "bergelson--c278320f43f1464abb92a1ac",
  "source": {
    "blob": "bb2dde5f8cdc10bd41850a89679c8451b13904b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Intersectivity/Variant6a7590479508e0ca886bc246f17a6d53aa6a62778d82978eb9a156c50e19a26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c278320f43f1464abb92a1ac30eda3011ad3137e31ee971376da43517db828fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Intersectivity/Variant6a7590479508e0ca886bc246f17a6d53aa6a62778d82978eb9a156c50e19a26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58e83d24-d0c4-cabc-f57d-37aa61ee0be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bergelson' {s : ℕ → Set α} (hs : ∀ n, MeasurableSet (s n)) (hr₀ : r ≠ 0)
    (hr : ∀ n, r ≤ μ (s n)) :
    ∃ t : Set ℕ, t.Infinite ∧ ∀ ⦃u⦄, u ⊆ t → u.Finite → 0 < μ (⋂ n ∈ u, s n) := by
  -- We let `M f` be the set on which the norm of `f` exceeds its essential supremum, and `N` be the
  -- union of `M` of the finite products of the indicators of the `s n`.
  let M (f : α → ℝ) : Set α := {x | eLpNormEssSup f μ < ‖f x‖₊}
  let N : Set α := ⋃ u : Finset ℕ, M (Set.indicator (⋂ n ∈ u, s n) 1)
  -- `N` is a null set since `M f` is a null set for each `f`.
  have hN₀ : μ N = 0 := measure_iUnion_null fun u ↦ meas_eLpNormEssSup_lt
  -- The important thing about `N` is that if we remove `N` from our space, then finite unions of
  -- the `s n` are null iff they are empty.
  have hN₁ (u : Finset ℕ) : ((⋂ n ∈ u, s n) \ N).Nonempty → 0 < μ (⋂ n ∈ u, s n) := by
    simp_rw [pos_iff_ne_zero]
    rintro ⟨x, hx⟩ hu
    refine hx.2 (mem_iUnion.2 ⟨u, ?_⟩)
    rw [mem_setOf, indicator_of_mem hx.1, eLpNormEssSup_eq_zero_iff.2]
    · simp
    · rwa [indicator_ae_eq_zero, Function.support_one, inter_univ]
  -- Define `f n` to be the average of the first `n + 1` indicators of the `s k`.
  let f (n : ℕ) : α → ℝ≥0∞ := (↑(n + 1) : ℝ≥0∞)⁻¹ • ∑ k ∈ Finset.range (n + 1), (s k).indicator 1
  -- We gather a few simple properties of `f`.
  have hfapp : ∀ n a, f n a = (↑(n + 1))⁻¹ * ∑ k ∈ Finset.range (n + 1), (s k).indicator 1 a := by
    simp only [f, Pi.natCast_def, Pi.smul_apply, Pi.inv_apply, Finset.sum_apply, eq_self_iff_true,
    forall_const, imp_true_iff, smul_eq_mul]
  have hf n : Measurable (f n) := by fun_prop (disch := exact hs _)
  have hf₁ n : f n ≤ 1 := by
    rintro a
    rw [hfapp, ← ENNReal.div_eq_inv_mul]
    refine (ENNReal.div_le_iff_le_mul (Or.inl <| Nat.cast_ne_zero.2 n.succ_ne_zero) <|
      Or.inr one_ne_zero).2 ?_
    rw [mul_comm, ← nsmul_eq_mul, ← Finset.card_range n.succ]
    exact Finset.sum_le_card_nsmul _ _ _ fun _ _ ↦ indicator_le (fun _ _ ↦ le_rfl) _
  -- By assumption, `f n` has integral at least `r`.
  have hrf n : r ≤ ∫⁻ a, f n a ∂μ := by
    simp_rw [hfapp]
    rw [lintegral_const_mul _ (Finset.measurable_sum _ fun _ _ ↦ measurable_one.indicator <| hs _),
      lintegral_finset_sum _ fun _ _ ↦ measurable_one.indicator (hs _)]
    simp only [lintegral_indicator_one (hs _)]
    rw [← ENNReal.div_eq_inv_mul, ENNReal.le_div_iff_mul_le (by simp) (by simp), ← nsmul_eq_mul']
    simpa using Finset.card_nsmul_le_sum (Finset.range (n + 1)) _ _ fun _ _ ↦ hr _
  -- Collect some basic fact
  have hμ : μ ≠ 0 := by rintro rfl; exact hr₀ <| le_bot_iff.1 <| hr 0
  have : ∫⁻ x, limsup (f · x) atTop ∂μ ≤ μ univ := by
    rw [← lintegral_one]
    exact lintegral_mono fun a ↦ limsup_le_of_le ⟨0, fun R _ ↦ bot_le⟩ <|
      Eventually.of_forall fun n ↦ hf₁ _ _
  -- By the first moment method, there exists some `x ∉ N` such that `limsup f n x` is at least `r`.
  obtain ⟨x, hxN, hx⟩ := exists_notMem_null_laverage_le hμ
    (ne_top_of_le_ne_top (measure_ne_top μ univ) this) hN₀
  replace hx : r / μ univ ≤ limsup (f · x) atTop :=
    calc
      _ ≤ limsup (⨍⁻ x, f · x ∂μ) atTop := le_limsup_of_le ⟨1, eventually_map.2 ?_⟩ fun b hb ↦ ?_
      _ ≤ ⨍⁻ x, limsup (f · x) atTop ∂μ := limsup_lintegral_le 1 hf (ae_of_all _ <| hf₁ ·) (by simp)
      _ ≤ limsup (f · x) atTop := hx
  -- This exactly means that the `s n` containing `x` have all their finite intersection non-null.
  · refine ⟨{n | x ∈ s n}, fun hxs ↦ ?_, fun u hux hu ↦ ?_⟩
    -- This next block proves that a set of strictly positive natural density is infinite, mixed
    -- with the fact that `{n | x ∈ s n}` has strictly positive natural density.
    -- TODO: Separate it out to a lemma once we have a natural density API.
    · refine ENNReal.div_ne_zero.2 ⟨hr₀, measure_ne_top _ _⟩ <| eq_bot_mono hx <|
        Tendsto.limsup_eq <| tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds
        (h := fun n ↦ (n.succ : ℝ≥0∞)⁻¹ * hxs.toFinset.card) ?_ bot_le fun n ↦ mul_le_mul_left' ?_ _
      · simpa using ENNReal.Tendsto.mul_const (ENNReal.tendsto_inv_nat_nhds_zero.comp <|
          tendsto_add_atTop_nat 1) (.inr <| ENNReal.natCast_ne_top _)
      · classical
        simpa only [Finset.sum_apply, indicator_apply, Pi.one_apply, Finset.sum_boole, Nat.cast_le]
          using Finset.card_le_card fun m hm ↦ hxs.mem_toFinset.2 (Finset.mem_filter.1 hm).2
    · simp_rw [← hu.mem_toFinset]
      exact hN₁ _ ⟨x, mem_iInter₂.2 fun n hn ↦ hux <| hu.mem_toFinset.1 hn, hxN⟩
  · refine Eventually.of_forall fun n ↦ ?_
    obtain rfl | _ := eq_zero_or_neZero μ
    · simp
    · rw [← laverage_const μ 1]
      exact lintegral_mono (hf₁ _)
  · obtain ⟨n, hn⟩ := hb.exists
    rw [laverage_eq] at hn
    exact (ENNReal.div_le_div_right (hrf _) _).trans hn

/-- **Bergelson Intersectivity Lemma**: In a finite measure space, a sequence of events that have
measure at least `r` has an infinite subset whose finite intersections all have positive volume. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Intersectivity/Variant6a7590479508e0ca886bc246f17a6d53aa6a62778d82978eb9a156c50e19a26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Intersectivity/Variant6a7590479508e0ca886bc246f17a6d53aa6a62778d82978eb9a156c50e19a26d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2dde5f8cdc10bd41850a89679c8451b13904b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
